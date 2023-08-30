package com.iMe.p031ui.wallet.home.tabs.services;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeServicesView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView */
/* loaded from: classes4.dex */
public interface WalletHomeServicesView extends BaseView {
    @AddToEndSingle
    void firstScreenInitWithItems(List<BaseNode> list);

    void openCryptoBoxesScreen();

    void openStakingScreen();

    void showRequiredWalletCreatedDialog();
}
