/* -*- Mode: Java; c-basic-offset: 4; tab-width: 20; indent-tabs-mode: nil; -*-
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package org.mozilla.gecko.activitystream.homepanel.topsites;

import android.content.Context;
import android.database.Cursor;
import android.support.v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

import org.mozilla.gecko.R;
import org.mozilla.gecko.activitystream.homepanel.stream.TopPanelRow;
import org.mozilla.gecko.home.HomePager;
import org.mozilla.gecko.widget.RecyclerViewClickSupport;

import java.util.ArrayList;
import java.util.List;

import static org.mozilla.gecko.activitystream.homepanel.topsites.TopSitesPage.NUM_TILES;

/**
 * The primary / top-level TopSites adapter: it handles the ViewPager, and also handles
 * all lower-level Adapters that populate the individual topsite items.
 */
public class TopSitesPagerAdapter extends PagerAdapter {
    public static final int PAGES = 2;
    public static final int SUGGESTED_SITES_MAX_PAGES = 2;

    private final List<TopSitesPage> pages;

    private final Context context;
    private final HomePager.OnUrlOpenListener onUrlOpenListener;
    private final TopPanelRow.OnCardLongClickListener onCardLongClickListener;

    private int count = 0;

    public TopSitesPagerAdapter(final Context context,
                                final HomePager.OnUrlOpenListener onUrlOpenListener,
                                final TopPanelRow.OnCardLongClickListener onCardLongClickListener) {
        pages = new ArrayList<>(PAGES);

        this.context = context;
        this.onUrlOpenListener = onUrlOpenListener;
        this.onCardLongClickListener = onCardLongClickListener;
    }

    @Override
    public int getCount() {
        return Math.min(count, 4);
    }

    @Override
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }

    @Override
    public Object instantiateItem(ViewGroup container, int position) {
        TopSitesPage page = pages.get(position);

        final ViewParent viewParent = page.getParent();
        if (viewParent != null && viewParent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) viewParent;
            viewGroup.removeView(page);
        }

        container.addView(page);

        return page;
    }

    @Override
    public int getItemPosition(Object object) {
        if (pages.contains(object)) {
            // Pages don't get rearranged, so if it exists it still has its original position
            return PagerAdapter.POSITION_UNCHANGED;
        } else {
            return PagerAdapter.POSITION_NONE;
        }
    }

    @Override
    public void destroyItem(ViewGroup container, int position, Object object) {
        container.removeView((View) object);
    }

    public void swapCursor(final Cursor cursor, final int tilesSize) {
        // Divide while rounding up: 0 items = 0 pages, 1-ITEMS_PER_PAGE items = 1 page, etc.
        if (cursor != null) {
            count = (cursor.getCount() - 1) / TopSitesPage.NUM_TILES + 1;
        } else {
            count = 0;
        }

        // Try to only add/remove pages if really needed: this minimises the amount of UI work that
        // happens when e.g. only one topsite has moved or has been added.
        final int pageDelta = count - pages.size();

        if (pageDelta > 0) {
            final LayoutInflater inflater = LayoutInflater.from(context);
            for (int i = 0; i < pageDelta; i++) {
                final TopSitesPage page = (TopSitesPage) inflater.inflate(R.layout.activity_stream_topsites_page, null, false);

                final TopSitesPageAdapter adapter = new TopSitesPageAdapter(i, onUrlOpenListener, onCardLongClickListener);
                page.setAdapter(adapter);
                RecyclerViewClickSupport.addTo(page).setOnItemClickListener(adapter);
                pages.add(page);
            }
        } else if (pageDelta < 0) {
            for (int i = 0; i > pageDelta; i--) {
                final TopSitesPage page = pages.get(pages.size() - 1);

                // Ensure the page doesn't use the old/invalid cursor anymore
                page.getAdapter().swapCursor(null, 0, 0);

                pages.remove(pages.size() - 1);
            }
        } else {
            // do nothing: we will be updating all the pages below
        }

        int startIndex = 0;
        for (TopSitesPage page : pages) {
            page.getAdapter().swapCursor(cursor, startIndex, tilesSize);
            startIndex += NUM_TILES;
        }

        notifyDataSetChanged();
    }

    /* Cliqz Start */
    public void setLightTheme(boolean isLightTheme) {
        for (TopSitesPage page : pages) {
            page.getAdapter().setLightTheme(isLightTheme);
        }
    }
    /* Cliqz End */

}
