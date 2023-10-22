package com.iMe.storage.domain.model.analytics;

import java.util.HashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AnalyticsEvent.kt */
/* loaded from: classes3.dex */
public abstract class AnalyticsEvent {
    private final String name;
    private final HashMap<String, Object> properties;

    public /* synthetic */ AnalyticsEvent(String str, HashMap hashMap, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, hashMap);
    }

    private AnalyticsEvent(String str, HashMap<String, Object> hashMap) {
        this.name = str;
        this.properties = hashMap;
    }

    public String getName() {
        return this.name;
    }

    public /* synthetic */ AnalyticsEvent(String str, HashMap hashMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? new HashMap() : hashMap, null);
    }

    public HashMap<String, Object> getProperties() {
        return this.properties;
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenEmojiTab extends AnalyticsEvent {
        public static final OpenEmojiTab INSTANCE = new OpenEmojiTab();

        private OpenEmojiTab() {
            super("open_emoji_tab", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenStickerTab extends AnalyticsEvent {
        public static final OpenStickerTab INSTANCE = new OpenStickerTab();

        private OpenStickerTab() {
            super("open_sticker_tab", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenGifTab extends AnalyticsEvent {
        public static final OpenGifTab INSTANCE = new OpenGifTab();

        private OpenGifTab() {
            super("open_gif_tab", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenKiklikoTab extends AnalyticsEvent {
        public static final OpenKiklikoTab INSTANCE = new OpenKiklikoTab();

        private OpenKiklikoTab() {
            super("open_kikliko_tab", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenScreen extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenScreen(String screenName) {
            super("open_screen", MapsKt.hashMapOf(TuplesKt.m144to("screen_name", screenName)), null);
            Intrinsics.checkNotNullParameter(screenName, "screenName");
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class PreviewClip extends AnalyticsEvent {
        public static final PreviewClip INSTANCE = new PreviewClip();

        private PreviewClip() {
            super("preview_clip", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class SearchClip extends AnalyticsEvent {
        public static final SearchClip INSTANCE = new SearchClip();

        private SearchClip() {
            super("search_clip", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class SendClip extends AnalyticsEvent {
        public static final Companion Companion = new Companion(null);
        public static final String typeDefault = "default";
        public static final String typeGif = "gif";
        public static final String typeScheduled = "scheduled";
        public static final String typeSilent = "silent";

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SendClip(String sendType) {
            super("send_clip", MapsKt.hashMapOf(TuplesKt.m144to("send_type", sendType)), null);
            Intrinsics.checkNotNullParameter(sendType, "sendType");
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class SelectClipCategory extends AnalyticsEvent {
        public static final Companion Companion = new Companion(null);
        public static final String categoryTrending = "trending";

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SelectClipCategory(String category) {
            super("select_clip_category", MapsKt.hashMapOf(TuplesKt.m144to("category", category)), null);
            Intrinsics.checkNotNullParameter(category, "category");
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static abstract class CatalogEvent extends AnalyticsEvent {
        private final String name;
        private final HashMap<String, Object> properties;

        @Override // com.iMe.storage.domain.model.analytics.AnalyticsEvent
        public String getName() {
            return this.name;
        }

        public /* synthetic */ CatalogEvent(String str, HashMap hashMap, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? new HashMap() : hashMap);
        }

        @Override // com.iMe.storage.domain.model.analytics.AnalyticsEvent
        public HashMap<String, Object> getProperties() {
            return this.properties;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CatalogEvent(String name, HashMap<String, Object> properties) {
            super(name, properties, null);
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(properties, "properties");
            this.name = name;
            this.properties = properties;
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class OpenCatalogScreen extends CatalogEvent {
            public static final OpenCatalogScreen INSTANCE = new OpenCatalogScreen();

            private OpenCatalogScreen() {
                super("open_catalog_screen", null, 2, null);
            }
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class PreviewCatalogItem extends CatalogEvent {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public PreviewCatalogItem(String channelName, String catalogType) {
                super("preview_catalog_item", MapsKt.hashMapOf(TuplesKt.m144to("channel_name", channelName), TuplesKt.m144to("catalog_type", catalogType)));
                Intrinsics.checkNotNullParameter(channelName, "channelName");
                Intrinsics.checkNotNullParameter(catalogType, "catalogType");
            }
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class SubscribeCatalogItem extends CatalogEvent {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public SubscribeCatalogItem(String channelName, String catalogType) {
                super("subscribe_catalog_item", MapsKt.hashMapOf(TuplesKt.m144to("channel_name", channelName), TuplesKt.m144to("catalog_type", catalogType)));
                Intrinsics.checkNotNullParameter(channelName, "channelName");
                Intrinsics.checkNotNullParameter(catalogType, "catalogType");
            }
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class UnsubscribeCatalogItem extends CatalogEvent {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public UnsubscribeCatalogItem(String channelName, String catalogType) {
                super("unsubscribe_catalog_item", MapsKt.hashMapOf(TuplesKt.m144to("channel_name", channelName), TuplesKt.m144to("catalog_type", catalogType)));
                Intrinsics.checkNotNullParameter(channelName, "channelName");
                Intrinsics.checkNotNullParameter(catalogType, "catalogType");
            }
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenWalletScreen extends AnalyticsEvent {
        public static final Companion Companion = new Companion(null);
        public static final String sourceAttach = "attach";
        public static final String sourceMenu = "menu";
        public static final String sourceProfileFab = "profile_fab";

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenWalletScreen(String source) {
            super("open_wallet_screen", MapsKt.hashMapOf(TuplesKt.m144to("source", source)), null);
            Intrinsics.checkNotNullParameter(source, "source");
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenAppAsTelegramPremiumUser extends AnalyticsEvent {
        public static final OpenAppAsTelegramPremiumUser INSTANCE = new OpenAppAsTelegramPremiumUser();

        private OpenAppAsTelegramPremiumUser() {
            super("open_app_as_telegram_premium_user", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenBuyTelegramPremiumScreen extends AnalyticsEvent {
        public static final OpenBuyTelegramPremiumScreen INSTANCE = new OpenBuyTelegramPremiumScreen();

        private OpenBuyTelegramPremiumScreen() {
            super("open_buy_telegram_premium_screen", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenGiftTelegramPremiumScreen extends AnalyticsEvent {
        public static final OpenGiftTelegramPremiumScreen INSTANCE = new OpenGiftTelegramPremiumScreen();

        private OpenGiftTelegramPremiumScreen() {
            super("open_gift_telegram_premium_screen", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class ClickBuyPremiumButton extends AnalyticsEvent {
        public static final ClickBuyPremiumButton INSTANCE = new ClickBuyPremiumButton();

        private ClickBuyPremiumButton() {
            super("click_buy_premium_button", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class ClickGiftPremiumButton extends AnalyticsEvent {
        public static final ClickGiftPremiumButton INSTANCE = new ClickGiftPremiumButton();

        private ClickGiftPremiumButton() {
            super("click_gift_premium_button", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class SendGif extends AnalyticsEvent {
        public static final Companion Companion = new Companion(null);
        public static final String typeDefault = "default";
        public static final String typeScheduled = "scheduled";
        public static final String typeSilent = "silent";

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SendGif(String sendType) {
            super("send_gif", MapsKt.hashMapOf(TuplesKt.m144to("send_type", sendType)), null);
            Intrinsics.checkNotNullParameter(sendType, "sendType");
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class SearchGif extends AnalyticsEvent {
        public static final SearchGif INSTANCE = new SearchGif();

        private SearchGif() {
            super("search_gif", null, 2, null);
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class SelectGifCategory extends AnalyticsEvent {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SelectGifCategory(String category) {
            super("select_gif_category", MapsKt.hashMapOf(TuplesKt.m144to("category", category)), null);
            Intrinsics.checkNotNullParameter(category, "category");
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class ActiveDesktopUser extends AnalyticsEvent {
        public static final Companion Companion = new Companion(null);
        public static final String clientIme = "ime";
        public static final String clientTelegram = "telegram";
        public static final String osLinux = "linux";
        public static final String osMac = "mac";
        public static final String osWindows = "windows";

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ActiveDesktopUser(String client, String os) {
            super("active_desktop_user", MapsKt.hashMapOf(TuplesKt.m144to("client", client), TuplesKt.m144to("os", os)), null);
            Intrinsics.checkNotNullParameter(client, "client");
            Intrinsics.checkNotNullParameter(os, "os");
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenStoryScreen extends AnalyticsEvent {
        public static final Companion Companion = new Companion(null);
        public static final String sourceProfile = "profile";
        public static final String sourceToolbar = "toolbar";

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenStoryScreen(String source) {
            super("open_story_screen", MapsKt.hashMapOf(TuplesKt.m144to("source", source)), null);
            Intrinsics.checkNotNullParameter(source, "source");
        }

        /* compiled from: AnalyticsEvent.kt */
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: AnalyticsEvent.kt */
    /* loaded from: classes3.dex */
    public static final class OpenArchiveScreen extends AnalyticsEvent {
        public static final OpenArchiveScreen INSTANCE = new OpenArchiveScreen();

        private OpenArchiveScreen() {
            super("open_archive_screen", null, 2, null);
        }
    }
}
