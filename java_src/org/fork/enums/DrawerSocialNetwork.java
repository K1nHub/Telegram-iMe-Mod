package org.fork.enums;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
/* compiled from: DrawerSocialNetwork.kt */
/* loaded from: classes4.dex */
public enum DrawerSocialNetwork {
    TELEGRAM(C3286R.C3288drawable.fork_drawer_social_telegram, C3286R.string.drawer_social_network_telegram),
    TWITTER(C3286R.C3288drawable.fork_drawer_social_twitter, C3286R.string.drawer_social_network_twitter),
    YOUTUBE(C3286R.C3288drawable.fork_drawer_social_youtube, C3286R.string.drawer_social_network_youtube),
    APP_STORE(C3286R.C3288drawable.fork_drawer_social_app_store, C3286R.string.drawer_social_network_app_store),
    GOOGLE_PLAY(C3286R.C3288drawable.fork_drawer_social_google_play, C3286R.string.drawer_social_network_google_play),
    SITE(C3286R.C3288drawable.fork_drawer_social_site, C3286R.string.drawer_social_network_site);
    
    private final int iconResId;
    private final int titleResId;

    /* compiled from: DrawerSocialNetwork.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DrawerSocialNetwork.values().length];
            try {
                iArr[DrawerSocialNetwork.TELEGRAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DrawerSocialNetwork.TWITTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DrawerSocialNetwork.YOUTUBE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DrawerSocialNetwork.APP_STORE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DrawerSocialNetwork.GOOGLE_PLAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DrawerSocialNetwork.SITE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    DrawerSocialNetwork(int i, int i2) {
        this.iconResId = i;
        this.titleResId = i2;
    }

    public final int getIconResId() {
        return this.iconResId;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final String url() {
        switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
            case 1:
                String internalString = LocaleController.getInternalString(C3286R.string.settings_help_alert_channel_username);
                Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri…p_alert_channel_username)");
                return internalString;
            case 2:
                return "https://twitter.com/ImePlatform";
            case 3:
                return "https://www.youtube.com/c/iMeMessenger";
            case 4:
                return "https://apps.apple.com/us/app/ime-messenger/id1450480822";
            case 5:
                String PLAYSTORE_APP_URL = BuildVars.PLAYSTORE_APP_URL;
                Intrinsics.checkNotNullExpressionValue(PLAYSTORE_APP_URL, "PLAYSTORE_APP_URL");
                return PLAYSTORE_APP_URL;
            case 6:
                return "https://imem.app";
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
