package com.iMe.p031ui.wallet.common;

import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletRootView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.common.WalletRootView */
/* loaded from: classes6.dex */
public interface WalletRootView extends BaseView {
    void onTabSelected(int i);

    void showNotificationItem(boolean z);

    void showWalletConnectItem(boolean z);
}
