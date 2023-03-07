package com.smedialink.p031ui.wallet.home.p032v2.tabs.services;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeServicesView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.services.WalletHomeServicesView */
/* loaded from: classes3.dex */
public interface WalletHomeServicesView extends BaseView {
    @AddToEndSingle
    void firstScreenInitWithItems(List<BaseNode> list);

    void openStakingScreen();

    void showRequiredWalletCreatedDialog();
}
