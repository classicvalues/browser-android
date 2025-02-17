# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

page-title = Probleemoplossingsinformatie
page-subtitle =
    Deze pagina bevat technische informatie die handig kan zijn als u een probleem
    probeert op te lossen. Als u antwoorden op veelgestelde vragen over { -brand-short-name }
    zoekt, kijk dan op onze <a data-l10n-name="support-link">ondersteuningswebsite</a>.
crashes-title = Crashrapporten
crashes-id = Rapport-ID
crashes-send-date = Verzonden
crashes-all-reports = Alle crashrapporten
crashes-no-config = Deze toepassing is niet geconfigureerd om crashrapporten weer te geven.
extensions-title = Extensies
extensions-name = Naam
extensions-enabled = Ingeschakeld
extensions-version = Versie
extensions-id = ID
security-software-title = Beveiligingssoftware
security-software-type = Type
security-software-name = Naam
security-software-antivirus = Antivirus
security-software-antispyware = Antispyware
security-software-firewall = Firewall
features-title = { -brand-short-name }-functies
features-name = Naam
features-version = Versie
features-id = ID
processes-title = Externe processen
processes-type = Type
processes-count = Aantal
app-basics-title = Toepassingsbasics
app-basics-name = Naam
app-basics-version = Versie
app-basics-build-id = Build-ID
app-basics-update-channel = Updatekanaal
app-basics-update-dir =
    { PLATFORM() ->
        [linux] Map bijwerken
       *[other] Map bijwerken
    }
app-basics-update-history = Updategeschiedenis
app-basics-show-update-history = Updategeschiedenis tonen
# Represents the path to the binary used to start the application.
app-basics-binary = Binair toepassingsbestand
app-basics-profile-dir =
    { PLATFORM() ->
        [linux] Profielmap
       *[other] Profielmap
    }
app-basics-enabled-plugins = Ingeschakelde plug-ins
app-basics-build-config = Buildconfiguratie
app-basics-user-agent = Useragent
app-basics-os = OS
app-basics-memory-use = Geheugengebruik
app-basics-performance = Prestaties
app-basics-service-workers = Geregistreerde Service Workers
app-basics-profiles = Profielen
app-basics-launcher-process-status = Launcher-proces
app-basics-multi-process-support = Multiprocess-vensters
app-basics-process-count = Webinhoudsprocessen
app-basics-remote-processes-count = Externe processen
app-basics-enterprise-policies = Bedrijfsbeleidsregels
app-basics-location-service-key-google = Google-locatieservicesleutel
app-basics-safebrowsing-key-google = Google Safe Browsing-sleutel
app-basics-key-mozilla = Mozilla-locatieservicesleutel
app-basics-safe-mode = Veilige modus
show-dir-label =
    { PLATFORM() ->
        [macos] Tonen in Finder
        [windows] Map openen
       *[other] Map openen
    }
modified-key-prefs-title = Belangrijke aangepaste voorkeuren
modified-prefs-name = Naam
modified-prefs-value = Waarde
user-js-title = user.js-voorkeuren
user-js-description = Uw profielmap bevat een <a data-l10n-name="user-js-link">user.js-bestand</a>, dat voorkeuren bevat die niet door { -brand-short-name } zijn gemaakt.
locked-key-prefs-title = Belangrijke vergrendelde voorkeuren
locked-prefs-name = Naam
locked-prefs-value = Waarde
graphics-title = Grafisch
graphics-features-title = Functies
graphics-diagnostics-title = Diagnostische gegevens
graphics-failure-log-title = Foutenlogboek
graphics-gpu1-title = GPU #1
graphics-gpu2-title = GPU #2
graphics-decision-log-title = Beslissingenlogboek
graphics-crash-guards-title = Door crashbeveiliging uitgeschakelde functies
graphics-workarounds-title = Workarounds
# Windowing system in use on Linux (e.g. X11, Wayland).
graphics-window-protocol = Vensterprotocol
place-database-title = Places-database
place-database-integrity = Integriteit
place-database-verify-integrity = Integriteit verifiëren
js-title = JavaScript
js-incremental-gc = Incrementele GC
a11y-title = Toegankelijkheid
a11y-activated = Geactiveerd
a11y-force-disabled = Toegankelijkheid voorkomen
a11y-handler-used = Accessible-handler gebruikt
a11y-instantiator = Toegankelijkheids-instantiator
library-version-title = Bibliotheekversies
copy-text-to-clipboard-label = Tekst naar klembord kopiëren
copy-raw-data-to-clipboard-label = Onbewerkte gegevens naar klembord kopiëren
sandbox-title = Sandbox
sandbox-sys-call-log-title = Geweigerde systeemaanroepen
sandbox-sys-call-index = #
sandbox-sys-call-age = Seconden geleden
sandbox-sys-call-pid = PID
sandbox-sys-call-tid = TID
sandbox-sys-call-proc-type = Procestype
sandbox-sys-call-number = Syscall
sandbox-sys-call-args = Argumenten
safe-mode-title = Veilige modus proberen
restart-in-safe-mode-label = Herstarten met uitgeschakelde add-ons…
media-title = Media
media-output-devices-title = Uitvoerapparaten
media-input-devices-title = Invoerapparaten
media-device-name = Naam
media-device-group = Groep
media-device-vendor = Leverancier
media-device-state = Status
media-device-preferred = Voorkeur
media-device-format = Indeling
media-device-channels = Kanalen
media-device-rate = Frequentie
media-device-latency = Latentie
intl-title = Internationalisatie & lokalisatie
intl-app-title = Toepassingsinstellingen
intl-locales-requested = Gevraagde locales
intl-locales-available = Beschikbare locales
intl-locales-supported = App-locales
intl-locales-default = Standaardlocale
intl-os-title = Besturingssysteem
intl-os-prefs-system-locales = Systeemlocales
intl-regional-prefs = Regionale voorkeuren
# Variables
# $days (Integer) - Number of days of crashes to log
report-crash-for-days =
    { $days ->
        [one] Crashrapporten van de afgelopen { $days } dag
       *[other] Crashrapporten van de afgelopen { $days } dagen
    }
# Variables
# $minutes (integer) - Number of minutes since crash
crashes-time-minutes =
    { $minutes ->
        [one] { $minutes } minuut geleden
       *[other] { $minutes } minuten geleden
    }
# Variables
# $hours (integer) - Number of hours since crash
crashes-time-hours =
    { $hours ->
        [one] { $hours } uur geleden
       *[other] { $hours } uur geleden
    }
# Variables
# $days (integer) - Number of days since crash
crashes-time-days =
    { $days ->
        [one] { $days } dag geleden
       *[other] { $days } dagen geleden
    }
# Variables
# $reports (integer) - Number of pending reports
pending-reports =
    { $reports ->
        [one] Alle crashrapporten (waaronder { $reports } crash in behandeling in het gegeven tijdsbereik)
       *[other] Alle crashrapporten (waaronder { $reports } crashes in behandeling in het gegeven tijdsbereik)
    }
raw-data-copied = Onbewerkte gegevens naar klembord gekopieerd
text-copied = Tekst naar klembord gekopieerd

## The verb "blocked" here refers to a graphics feature such as "Direct2D" or "OpenGL layers".

blocked-driver = Geblokkeerd voor uw grafische stuurprogramma.
blocked-gfx-card = Geblokkeerd voor uw grafische kaart vanwege onopgeloste problemen met het stuurprogramma.
blocked-os-version = Geblokkeerd voor uw besturingssysteemversie.
blocked-mismatched-version = Geblokkeerd voor uw grafische stuurprogramma, versies in register en DLL komen niet overeen.
# Variables
# $driverVersion - The graphics driver version string
try-newer-driver = Geblokkeerd voor uw grafische stuurprogramma. Probeer uw grafische stuurprogramma bij te werken naar versie { $driverVersion } of nieuwer.
# "ClearType" is a proper noun and should not be translated. Feel free to leave English strings if
# there are no good translations, these are only used in about:support
clear-type-parameters = ClearType-parameters
compositing = Samenstellen
hardware-h264 = Hardwarematige H264-decodering
main-thread-no-omtc = hoofdthread, geen OMTC
yes = Ja
no = Nee
unknown = Onbekend
virtual-monitor-disp = Virtual Monitor Display

## The following strings indicate if an API key has been found.
## In some development versions, it's expected for some API keys that they are
## not found.

found = Gevonden
missing = Ontbreekt
gpu-process-pid = GPUProcessPid
gpu-process = GPUProcess
gpu-description = Beschrijving
gpu-vendor-id = Leverancier-ID
gpu-device-id = Apparaat-ID
gpu-subsys-id = Subsysteem-ID
gpu-drivers = Stuurprogramma’s
gpu-ram = RAM
gpu-driver-vendor = Leverancier van stuurprogramma
gpu-driver-version = Stuurprogrammaversie
gpu-driver-date = Datum van stuurprogramma
gpu-active = Actief
webgl1-wsiinfo = WSI-info van WebGL 1-stuurprogramma
webgl1-renderer = Renderer van WebGL 1-stuurprogramma
webgl1-version = Versie van WebGL 1-stuurprogramma
webgl1-driver-extensions = Extensies van WebGL 1-stuurprogramma
webgl1-extensions = WebGL 1-extensies
webgl2-wsiinfo = WSI-info van WebGL 2-stuurprogramma
webgl2-renderer = Renderer van  WebGL 2-stuurprogramma
webgl2-version = Versie van WebGL 2-stuurprogramma
webgl2-driver-extensions = Extensies van WebGL 2-stuurprogramma
webgl2-extensions = WebGL 2-extensies
blocklisted-bug = Geblokkeerd vanwege bekende problemen
# Variables
# $bugNumber (string) - String of bug number from Bugzilla
bug-link = bug { $bugNumber }
# Variables
# $failureCode (string) - String that can be searched in the source tree.
unknown-failure = Op blokkeerlijst; foutcode { $failureCode }
d3d11layers-crash-guard = D3D11-compositor
d3d11video-crash-guard = D3D11-videodecoder
d3d9video-crash-buard = D3D9-videodecoder
glcontext-crash-guard = OpenGL
reset-on-next-restart = Herinitialiseren bij volgende herstart
gpu-process-kill-button = GPU-proces beëindigen
gpu-device-reset = Apparaatherinitialisatie
gpu-device-reset-button = Apparaatherinitialisatie activeren
uses-tiling = Gebruikt Tiling
content-uses-tiling = Gebruikt Tiling (Inhoud)
off-main-thread-paint-enabled = Off Main Thread Painting ingeschakeld
off-main-thread-paint-worker-count = Aantal Off Main Thread Painting-workers
low-end-machine = Minder krachtige machine gedetecteerd
target-frame-rate = Doelframerate
audio-backend = Audio-backend
max-audio-channels = Max. kanalen
channel-layout = Kanaalindeling van voorkeur
sample-rate = Samplefrequentie van voorkeur
min-lib-versions = Verwachte minimale versie
loaded-lib-versions = Gebruikte versie
has-seccomp-bpf = Seccomp-BPF (Systeemaanroepfiltering)
has-seccomp-tsync = Seccomp-threadsynchronisatie
has-user-namespaces = Namespaces van gebruiker
has-privileged-user-namespaces = Namespaces van gebruiker voor bevoegde processen
can-sandbox-content = Inhoudsproces-sandboxing
can-sandbox-media = Mediaplug-in-sandboxing
content-sandbox-level = Sandboxniveau van inhoudsproces
effective-content-sandbox-level = Effectief sandboxniveau van inhoudsproces
sandbox-proc-type-content = inhoud
sandbox-proc-type-file = bestandsinhoud
sandbox-proc-type-media-plugin = mediaplug-in
sandbox-proc-type-data-decoder = gegevensdecoder
launcher-process-status-0 = Ingeschakeld
launcher-process-status-1 = Uitgeschakeld vanwege fout
launcher-process-status-2 = Geforceerd uitgeschakeld
launcher-process-status-unknown = Onbekende status
# Variables
# $remoteWindows (integer) - Number of remote windows
# $totalWindows (integer) - Number of total windows
multi-process-windows = { $remoteWindows }/{ $totalWindows }
multi-process-status-0 = Ingeschakeld door gebruiker
multi-process-status-1 = Standaard ingeschakeld
multi-process-status-2 = Uitgeschakeld
multi-process-status-4 = Uitgeschakeld door toegankelijkheidshulpmiddelen
multi-process-status-6 = Uitgeschakeld door niet-ondersteunde tekstinvoer
multi-process-status-7 = Uitgeschakeld door add-ons
multi-process-status-8 = Geforceerd uitgeschakeld
multi-process-status-unknown = Onbekende status
async-pan-zoom = Asynchroon pannen/zoomen
apz-none = geen
wheel-enabled = wielinvoer ingeschakeld
touch-enabled = aanraakinvoer ingeschakeld
drag-enabled = slepen via scrollbalk ingeschakeld
keyboard-enabled = toetsenbord ingeschakeld
autoscroll-enabled = automatisch scrollen ingeschakeld

## Variables
## $preferenceKey (string) - String ID of preference

wheel-warning = async-wielinvoer uitgeschakeld vanwege niet-ondersteunde voorkeur: { $preferenceKey }
touch-warning = async-aanraakinvoer uitgeschakeld vanwege niet-ondersteunde voorkeur: { $preferenceKey }

## Strings representing the status of the Enterprise Policies engine.

policies-inactive = Inactief
policies-active = Actief
policies-error = Fout
