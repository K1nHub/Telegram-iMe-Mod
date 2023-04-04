package com.iMe.p032ui.wallet.common;

import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.HashMap;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletRootView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.common.WalletRootView */
/* loaded from: classes3.dex */
public interface WalletRootView extends BaseView {
    void onTabSelected(int i);

    void setupNavigationTabsEnabled(HashMap<Integer, Boolean> hashMap);

    void showNotificationItem(boolean z);

    void showWalletConnectItem(boolean z);
}
