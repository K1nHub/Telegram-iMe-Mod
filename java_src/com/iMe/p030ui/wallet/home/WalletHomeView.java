package com.iMe.p030ui.wallet.home;

import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletHomeView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.WalletHomeView */
/* loaded from: classes4.dex */
public interface WalletHomeView extends BaseView {
    void loadBalances();

    void loadTabsInfo();

    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
