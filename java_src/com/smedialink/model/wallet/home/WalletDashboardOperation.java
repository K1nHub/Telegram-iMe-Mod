package com.smedialink.model.wallet.home;

import org.telegram.messenger.C3301R;
/* compiled from: WalletDashboardOperation.kt */
/* loaded from: classes3.dex */
public enum WalletDashboardOperation {
    EARN(C3301R.C3303drawable.fork_ic_operation_earn, C3301R.string.wallet_operation_earn);
    
    private int icon;
    private int title;

    WalletDashboardOperation(int i, int i2) {
        this.icon = i;
        this.title = i2;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitle() {
        return this.title;
    }

    public final void setIcon(int i) {
        this.icon = i;
    }

    public final void setTitle(int i) {
        this.title = i;
    }
}
