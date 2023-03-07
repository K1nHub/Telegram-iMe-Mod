package com.smedialink.p031ui.wallet.home.p032v2;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletHomeView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.home.v2.WalletHomeView */
/* loaded from: classes3.dex */
public interface WalletHomeView extends BaseView {
    void loadBalances();

    void loadTabsInfo();

    void onSetupNavigationRouter();

    void onTabSelected(int i);
}
