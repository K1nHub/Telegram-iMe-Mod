package com.iMe.model.wallet.home;

import org.telegram.messenger.C3295R;
import org.telegram.p044ui.ActionBar.Theme;
/* compiled from: PriceRateDirection.kt */
/* loaded from: classes3.dex */
public enum PriceRateDirection {
    UP(C3295R.C3297drawable.chat_calls_outgoing, Theme.key_chat_inGreenCall),
    DOWN(C3295R.C3297drawable.chat_calls_incoming, Theme.key_fill_RedNormal),
    NOT_CHANGED(C3295R.C3297drawable.fork_ic_rate_not_changed_14, Theme.key_windowBackgroundWhiteGrayText8);
    
    private final int colorKey;
    private final int icon;

    PriceRateDirection(int i, int i2) {
        this.icon = i;
        this.colorKey = i2;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getColorKey() {
        return this.colorKey;
    }
}
