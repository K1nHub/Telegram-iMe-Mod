package com.iMe.model.wallet.home;

import org.telegram.messenger.C3630R;
/* compiled from: WalletDashboardOperation.kt */
/* loaded from: classes3.dex */
public enum WalletDashboardOperation {
    EARN(C3630R.C3632drawable.fork_ic_operation_earn, C3630R.string.wallet_operation_earn);
    
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
