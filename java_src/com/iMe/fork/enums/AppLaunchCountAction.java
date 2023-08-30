package com.iMe.fork.enums;

import com.iMe.common.TelegramPreferenceKeys;
/* compiled from: AppLaunchCountAction.kt */
/* loaded from: classes3.dex */
public enum AppLaunchCountAction {
    PROMO_SUBSCRIBE_DIALOG(TelegramPreferenceKeys.Global.promoSubscribeDialogLaunchCountLeft(), TelegramPreferenceKeys.Global.Default.promoSubscribeDialogLaunchCountLeft());
    
    private final int launchCount;
    private final String prefKey;

    AppLaunchCountAction(String str, int i) {
        this.prefKey = str;
        this.launchCount = i;
    }

    public final int getLaunchCount() {
        return this.launchCount;
    }

    public final String getPrefKey() {
        return this.prefKey;
    }
}
