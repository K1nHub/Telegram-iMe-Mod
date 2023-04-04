package com.iMe.p032ui.wallet.home.p033v2;

import com.iMe.p032ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletHomeView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.v2.WalletHomeView */
/* loaded from: classes3.dex */
public interface WalletHomeView extends BaseView {
    void loadBalances();

    void loadTabsInfo();

    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
