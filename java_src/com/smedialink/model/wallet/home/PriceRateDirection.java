package com.smedialink.model.wallet.home;

import org.telegram.messenger.C3301R;
/* compiled from: PriceRateDirection.kt */
/* loaded from: classes3.dex */
public enum PriceRateDirection {
    UP(C3301R.C3303drawable.chat_calls_outgoing, "chat_inDownCall"),
    DOWN(C3301R.C3303drawable.chat_calls_incoming, "chat_inUpCall"),
    NOT_CHANGED(C3301R.C3303drawable.fork_ic_rate_not_changed_14, "windowBackgroundWhiteGrayText8");
    
    private final String color;
    private final int icon;

    PriceRateDirection(int i, String str) {
        this.icon = i;
        this.color = str;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final String getColor() {
        return this.color;
    }
}
