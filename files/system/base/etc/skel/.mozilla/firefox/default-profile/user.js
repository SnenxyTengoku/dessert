/* --------------------------------------------------------------------------
 * Wuzetka's Firefox configuration - Based off Betterfox and integrating the FF ULTIMA theme.
 * Updated whenever needed.
 * ------------------------------------------------------------------------ */

/****************************************************************************
 * Betterfox                                                                *
 * "Ad meliora"                                                             *
 * version: 142                                                             *
 * url: https://github.com/yokoffing/Betterfox                              *
****************************************************************************/

/****************************************************************************
 * SECTION: FASTFOX                                                         *
****************************************************************************/
/** GENERAL ***/
user_pref("content.notify.interval", 100000);

/** GFX ***/
user_pref("gfx.canvas.accelerated.cache-size", 512);
user_pref("gfx.content.skia-font-cache-size", 20);

/** DISK CACHE ***/
user_pref("browser.cache.disk.enable", false);

/** MEMORY CACHE ***/
user_pref("browser.sessionhistory.max_total_viewers", 4);

/** MEDIA CACHE ***/
user_pref("media.memory_cache_max_size", 65536);
user_pref("media.cache_readahead_limit", 7200);
user_pref("media.cache_resume_threshold", 3600);

/** IMAGE CACHE ***/
user_pref("image.mem.decode_bytes_at_a_time", 32768);

/** NETWORK ***/
user_pref("network.http.max-connections", 1800);
user_pref("network.http.max-persistent-connections-per-server", 10);
user_pref("network.http.max-urgent-start-excessive-connections-per-host", 5);
user_pref("network.http.pacing.requests.enabled", false);
user_pref("network.dnsCacheExpiration", 3600);
user_pref("network.ssl_tokens_cache_capacity", 10240);

/** SPECULATIVE LOADING ***/
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true);
user_pref("browser.urlbar.speculativeConnect.enabled", false);
user_pref("browser.places.speculativeConnect.enabled", false);
user_pref("network.prefetch-next", false);
user_pref("network.predictor.enabled", false);

/** EXPERIMENTAL ***/
user_pref("layout.css.grid-template-masonry-value.enabled", true);

/****************************************************************************
 * SECTION: SECUREFOX                                                       *
****************************************************************************/
/** TRACKING PROTECTION ***/
user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.trackingprotection.allow_list.baseline.enabled", true);
user_pref("privacy.trackingprotection.allow_list.convenience.enabled", true);
user_pref("browser.download.start_downloads_in_tmp_dir", true);
user_pref("browser.helperApps.deleteTempFileOnExit", true);
user_pref("browser.uitour.enabled", false);
user_pref("privacy.globalprivacycontrol.enabled", true);

/** OCSP & CERTS / HPKP ***/
user_pref("security.OCSP.enabled", 0);
user_pref("security.pki.crlite_mode", 2);
user_pref("security.csp.reporting.enabled", false);

/** SSL / TLS ***/
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("browser.xul.error_pages.expert_bad_cert", true);
user_pref("security.tls.enable_0rtt_data", false);

/** DISK AVOIDANCE ***/
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);
user_pref("browser.sessionstore.interval", 60000);

/** SHUTDOWN & SANITIZING ***/
user_pref("browser.privatebrowsing.resetPBM.enabled", true);
user_pref("privacy.history.custom", true);

/** SEARCH / URL BAR ***/
user_pref("browser.urlbar.trimHttps", true);
user_pref("browser.urlbar.untrimOnUserInteraction.featureGate", true);
user_pref("browser.search.separatePrivateDefault.ui.enabled", true);
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.quicksuggest.enabled", false);
user_pref("browser.urlbar.groupLabels.enabled", false);
user_pref("browser.formfill.enable", false);
user_pref("network.IDN_show_punycode", true);

/** PASSWORDS ***/
user_pref("signon.formlessCapture.enabled", false);
user_pref("signon.privateBrowsingCapture.enabled", false);
user_pref("network.auth.subresource-http-auth-allow", 1);
user_pref("editor.truncate_user_pastes", false);

/** MIXED CONTENT + CROSS-SITE ***/
user_pref("security.mixed_content.block_display_content", true);
user_pref("pdfjs.enableScripting", false);

/** EXTENSIONS ***/
user_pref("extensions.enabledScopes", 5);

/** HEADERS / REFERERS ***/
user_pref("network.http.referer.XOriginTrimmingPolicy", 2);

/** CONTAINERS ***/
user_pref("privacy.userContext.ui.enabled", true);

/** SAFE BROWSING ***/
user_pref("browser.safebrowsing.downloads.remote.enabled", false);

/** MOZILLA ***/
user_pref("permissions.default.desktop-notification", 2);
user_pref("permissions.default.geo", 2);
user_pref("geo.provider.network.url", "https://beacondb.net/v1/geolocate");
user_pref("browser.search.update", false);
user_pref("permissions.manager.defaultsUrl", "");
user_pref("extensions.getAddons.cache.enabled", false);

/** TELEMETRY ***/
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.server", "data:,");
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.newProfilePing.enabled", false);
user_pref("toolkit.telemetry.shutdownPingSender.enabled", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("toolkit.telemetry.bhrPing.enabled", false);
user_pref("toolkit.telemetry.firstShutdownPing.enabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true);
user_pref("toolkit.coverage.opt-out", true);
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("datareporting.usage.uploadEnabled", false);

/** EXPERIMENTS ***/
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");

/** CRASH REPORTS ***/
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);

/****************************************************************************
 * SECTION: PESKYFOX                                                        *
****************************************************************************/
/** MOZILLA UI ***/
user_pref("browser.privatebrowsing.vpnpromourl", "");
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);
user_pref("browser.preferences.moreFromMozilla", false);
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.aboutwelcome.enabled", false);
user_pref("browser.profiles.enabled", true);

/** THEME ADJUSTMENTS ***/
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("browser.compactmode.show", true);
user_pref("browser.privateWindowSeparation.enabled", false); // WINDOWS

/** AI ***/
user_pref("browser.ml.enable", false);
user_pref("browser.ml.chat.enabled", false);

/** FULLSCREEN NOTICE ***/
user_pref("full-screen-api.transition-duration.enter", "0 0");
user_pref("full-screen-api.transition-duration.leave", "0 0");
user_pref("full-screen-api.warning.timeout", 0);

/** URL BAR ***/
user_pref("browser.urlbar.trending.featureGate", false);

/** NEW TAB PAGE ***/
user_pref("browser.newtabpage.activity-stream.default.sites", "");
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredCheckboxes", false);

/** POCKET ***/
user_pref("extensions.pocket.enabled", false);

/** DOWNLOADS ***/
user_pref("browser.download.manager.addToRecentDocs", false);

/** PDF ***/
user_pref("browser.download.open_pdf_attachments_inline", true);

/** TAB BEHAVIOR ***/
user_pref("browser.bookmarks.openInTabClosesMenu", false);
user_pref("browser.menu.showViewImageInfo", true);
user_pref("findbar.highlightAll", true);
user_pref("layout.word_select.eat_space_to_next_word", false);

/****************************************************************************
 * START: MY OVERRIDES                                                      *
****************************************************************************/
// visit https://github.com/yokoffing/Betterfox/wiki/Common-Overrides
// visit https://github.com/yokoffing/Betterfox/wiki/Optional-Hardening
// Enter your personal overrides below this line:



/****************************************************************************
 * SECTION: SMOOTHFOX                                                       *
****************************************************************************/
// visit https://github.com/yokoffing/Betterfox/blob/main/Smoothfox.js
// Enter your scrolling overrides below this line:

/****************************************************************************************
 * OPTION: INSTANT SCROLLING (SIMPLE ADJUSTMENT)                                       *
 ****************************************************************************************/
// recommended for 60hz+ displays
user_pref("apz.overscroll.enabled", true); // DEFAULT NON-LINUX
user_pref("general.smoothScroll", true); // DEFAULT
user_pref("mousewheel.default.delta_multiplier_y", 275); // 250-400; adjust this number to your liking
// Firefox Nightly only:
// [1] https://bugzilla.mozilla.org/show_bug.cgi?id=1846935
user_pref("general.smoothScroll.msdPhysics.enabled", false); // [FF122+ Nightly]

/****************************************************************************
 * END: BETTERFOX                                                           *
****************************************************************************/



/* --------------------------------------------------------------------------
 * End: Betterfox
 * Start: FF ULTIMA
 * ------------------------------------------------------------------------ */



/*///////////////////////////////////////////////////////////////////////////////////////\

┏┓┏┓  ┳┳┓ ┏┳┓┳┳┳┓┏┓
┣ ┣   ┃┃┃  ┃ ┃┃┃┃┣┫
┻ ┻   ┗┛┗┛ ┻ ┻┛ ┗┛┗

FF Ultima:         https://github.com/soulhotel/FF-ULTIMA
Wiki:              https://github.com/soulhotel/FF-ULTIMA/wiki/Settings
Latest Version:    https://github.com/soulhotel/FF-ULTIMA/releases/latest
License:           https://github.com/soulhotel/FF-ULTIMA/blob/main/LICENSE MPL 2.0

\////////////////////////////////////////////////////////////////////////////////////////*/

/* color schemes */
user_pref("user.theme.0.default", true);
user_pref("user.theme.transparent", false);
user_pref("user.theme.catppuccin", false);
user_pref("user.theme.catppuccin-frappe", false);
user_pref("user.theme.catppuccin-mocha", false);
user_pref("user.theme.gruvbox", false);
user_pref("user.theme.kanagawa-wave", false);
user_pref("user.theme.midnight", false);
user_pref("user.theme.midnight.animated.background", false);
user_pref("user.theme.scarlet", false);
user_pref("user.theme.fluent", false);
user_pref("user.theme.fluent.thinkpad", false);

/* nav bar */
user_pref("ultima.navbar.autohide", false);
user_pref("ultima.navbar.float", false);
user_pref("ultima.navbar.hidebuttons", true);
user_pref("ultima.navbar.bookmarks.autohide", true);
user_pref("ultima.navbar.bookmarks.compact", false);
user_pref("ultima.navbar.bookmarks.position", "center");
user_pref("ultima.navbar.bookmarks.scrollable", true);
user_pref("ultima.navbar.bookmarks.float", false);
user_pref("ultima.navbar.bookmarks.hide.icons", false);
user_pref("ultima.navbar.windowcontrols.carl", false);
user_pref("ultima.navbar.windowcontrols.trafficlights", false);
user_pref("ultima.navbar.windowcontrols.whiteout", false);
user_pref("ultima.navbar.windowcontrols.fluent", false);
user_pref("ultima.navbar.theme.extensionspanel", true);
user_pref("ultima.disable.windowcontrols.button", false);

/* url bar */
user_pref("ultima.urlbar.animate.open", true);
user_pref("ultima.urlbar.animate.options", false);
user_pref("ultima.urlbar.hide.searchsuggestions", false);
user_pref("ultima.urlbar.centered", true);
user_pref("ultima.urlbar.hide.buttons", false);
user_pref("ultima.urlbar.transparent", false);
user_pref("ultima.urlbar.float", false);
user_pref("ultima.urlbar.drags.window", false);

/* sidebar */
user_pref("ultima.sidebar.autohide", false);
user_pref("ultima.sidebar.seperator", false);
user_pref("ultima.sidebar.hide.header", true);
user_pref("ultima.sidebar.revamped.hide.when.horizontal", true);

/* sidebery */
user_pref("ultima.sidebery.autohide", true);
user_pref("ultima.sidebery.expandon.inactive.windows", false);
user_pref("user.theme.xtension.sidebery", true);

/* tabs related settings */
user_pref("ultima.spacing.compact.tabs", true);
user_pref("ultima.disable.alltabs.button", true);
user_pref("ultima.tabs.disable.update.dot", true);
user_pref("ultima.tabs.belowURLbar", true);
user_pref("ultima.tabs.not.a.progress.bar", true);
user_pref("ultima.tabs.newtabbutton.ontop.1", false);
user_pref("ultima.tabs.newtabbutton.ontop.2", false);
user_pref("ultima.tabs.multiline.labels", false);
user_pref("ultima.tabs.closetabbutton.on.icon", false);
user_pref("ultima.tabs.always.show.pinned", true);
user_pref("ultima.tabs.vertical.hide", false);
user_pref("ultima.tabs.vertical.hide.in.screencorner", false);
user_pref("ultima.tabs.vertical.hide.in.screenedge", true);
user_pref("ultima.tabs.vertical.hide.the.bottom.buttons", false);
user_pref("ultima.tabs.vertical.hide.the.bottom.buttons.off.hover", false);
user_pref("ultima.tabs.tabgroups.label.1", false);
user_pref("ultima.tabs.tabgroups.label.2", false);
user_pref("ultima.tabs.tabgroups.label.3", true);
user_pref("ultima.tabs.tabgroups.label.tthornton", false);
user_pref("ultima.tabs.tabgroups.background.1", false);
user_pref("ultima.tabs.tabgroups.background.2", true);
user_pref("ultima.tabs.tabgroups.background.3", false);

/* vertical tabs defaults */
user_pref("sidebar.revamp", true);
user_pref("sidebar.expandOnHover", true);
user_pref("sidebar.revamp.defaultLauncherVisible", true);
user_pref("sidebar.expandOnHoverMessage.dismissed", false);
user_pref("sidebar.visibility", "expand-on-hover");
user_pref("sidebar.revamp.round-content-area", false); /*handled by theme*/
user_pref("sidebar.animation.expand-on-hover.duration-ms", 140);
user_pref("browser.tabs.tabMinWidth", 0); /*dont touch*/

/* alternate styles */
user_pref("ultima.spacing.compact", false);
user_pref("ultima.spacing.relaxed", false); /*wip*/
user_pref("ultima.spacing.compact.menus", false);
user_pref("ultima.spacing.compact.contextmenu", false);
user_pref("ultima.spacing.relaxed.contextmenu", false);
user_pref("ultima.disable.contextmenu.icons", false);
user_pref("ultima.disable.contextmenu.icons.all", false);
user_pref("ultima.tabs.tabContainer.1", false);
user_pref("ultima.tabs.tabContainer.2", false);
user_pref("ultima.tabs.tabContainer.3", true);
user_pref("user.theme.xtension.newtab.rounded", false); /*new tab page*/
user_pref("user.theme.xtension.newtab.compact", true);
user_pref("ultima.xstyle.private", false); /*private browser home page*/
user_pref("ultima.spacing.compact.addonmanager", true); /*add on manager*/

/* extra theming */
user_pref("ultima.theme.icons", true);
user_pref("user.theme.xtension.ublock", true);
user_pref("user.theme.xtension.YT", false);
user_pref("user.theme.xtension.reddit", false);
user_pref("ultima.scrollbar.thin", false);
/*user_pref("ultima.theme.menubar", true); mark for removal */
user_pref("user.theme.xtension.swap.addon.colors", true);
user_pref("user.theme.xtras.tab.outline.color", "none");

/* override wallpapers */
user_pref("user.theme.wallpaper.catppuccin", false);
user_pref("user.theme.wallpaper.catppuccin-mocha", false);
user_pref("user.theme.wallpaper.catppuccin-frappe", false);
user_pref("user.theme.wallpaper.dusky", false);
user_pref("user.theme.wallpaper.fullmoon", false);
user_pref("user.theme.wallpaper.green", false);
user_pref("user.theme.wallpaper.gruvbox", false);
user_pref("user.theme.wallpaper.gruvbox.flowers", false);
user_pref("user.theme.wallpaper.gruvbox.light", false);
user_pref("user.theme.wallpaper.kanagawa-wave", false);
user_pref("user.theme.wallpaper.midnight", false);
user_pref("user.theme.wallpaper.midnight2", false);
user_pref("user.theme.wallpaper.seasonal", false);
user_pref("browser.newtabpage.activity-stream.newtabWallpapers.v2.enabled", false);
user_pref("browser.newtabpage.activity-stream.newtabWallpapers.customWallpaper.enabled", true);
user_pref("browser.newtabpage.activity-stream.improvesearch.handoffToAwesomebar", false);

/* extra configs */
user_pref("ultima.enable.nightly.config", false);
user_pref("ultima.enable.js.config", false);
user_pref("widget.windows.mica", true);
user_pref("widget.windows.mica.extra", true);
user_pref("widget.windows.mica.popups", 2);
user_pref("widget.windows.mica.toplevel-backdrop", 2);
user_pref("widget.macos.titlebar-blend-mode.behind-window", true);
user_pref("browser.tabs.allow_transparent_browser", false); /* user must toggle */

/* extra required */
user_pref("ultima.xstyle.highlight.aboutconfig", true);
user_pref("browser.aboutConfig.showWarning", false);
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("devtools.debugger.remote-enabled", true);
user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.prompt-connection", false);
user_pref("svg.context-properties.content.enabled", true);
user_pref("layout.css.has-selector.enabled", true);
user_pref("widget.gtk.ignore-bogus-leave-notify", 1);
user_pref("widget.gtk.rounded-bottom-corners.enabled", true);
user_pref("widget.gtk.native-context-menus", false);

/* extra recommended */
user_pref("browser.tabs.groups.enabled", true);
user_pref("browser.tabs.hoverPreview.enabled", true);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.newtabpage.activity-stream.newtabShortcuts.refresh", false);

/* extra accessibility */
user_pref("findbar.highlightAll", true);
user_pref("browser.tabs.insertAfterCurrent", true);
user_pref("browser.search.context.loadInBackground", true);
user_pref("browser.bookmarks.openInTabClosesMenu", false);
user_pref("full-screen-api.transition-duration.enter", "0 0");
user_pref("full-screen-api.transition-duration.leave", "0 0");
user_pref("full-screen-api.warning.timeout", 0);
user_pref("general.smoothScroll", true);
user_pref("general.smoothScroll.msdPhysics.enabled", true);

/* extra privacy */
user_pref("browser.send_pings", false);
user_pref("extensions.pocket.enabled", false);



/* --------------------------------------------------------------------------
 * End: FF ULTIMA
 * Start: Optional overrides. Set any overrides or custom settings beyond this point.
 * ------------------------------------------------------------------------ */

// PREF: show weather on New Tab page
user_pref("browser.newtabpage.activity-stream.showWeather", true);

// PREF: enable container tabs
user_pref("privacy.userContext.enabled", true);

// PREF: use system file picker
user_pref("widget.use-xdg-desktop-portal.file-picker", 1);

// FFULTIMA: disable default theme, we use the cattpuccin theme from the firefox addons store
user_pref("user.theme.0.default", false);
user_pref("user.theme.catppuccin-mocha", true);
//user_pref("user.theme.xtension.swap.addon.colors", false); // enabled by default, removes the accent color
//user_pref("user.theme.wallpaper.catppuccin-mocha", true);

// FFULTIMA: hide topbar, only show on activity/hover
user_pref("ultima.navbar.float", true); // floating style

// FFULTIMA: disable hiding buttons, as we hide the navbar for this effect to be of benefit for us
user_pref("ultima.navbar.hidebuttons", false);

// FFULTIMA: use alternative grid style extensions panel
user_pref("ultima.navbar.theme.extensionspanel", true);

// FFULTIMA: alternative addon manager grid view
user_pref("ultima.spacing.compact.addonmanager", true);

// FFULTIMA: alternative tab groups styling
user_pref("ultima.tabs.tabgroups.label.2", true);
user_pref("ultima.tabs.tabgroups.label.3", false); // default

// FFULTIMA: alternative tab groups background styling
user_pref("ultima.tabs.tabgroups.background.2", true);
user_pref("ultima.tabs.tabgroups.background.3", true);

// FFULTIMA: alternative container tabs styling
user_pref("ultima.tabs.tabContainer.2", true);
user_pref("ultima.tabs.tabContainer.3", false); // default