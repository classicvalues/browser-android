package com.cliqz.react.modules;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/**
 * Copyright © Cliqz 2019
 */
public class LocaleConstantsModule extends ReactContextBaseJavaModule {

    public LocaleConstantsModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "LocaleConstants";
    }

    @Override
    public Map<String, Object> getConstants() {
        final Map<String, Object> ua = new HashMap<>();
        ua.put("lang", Locale.getDefault().getLanguage());
        return ua;
    }
}
