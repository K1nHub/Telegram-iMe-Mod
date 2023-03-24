package com.smedialink.p031ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.wallet.transaction.StakingOperationItem;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.SwitchNetworkView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletTransactionsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.transaction.WalletTransactionsView */
/* loaded from: classes3.dex */
public interface WalletTransactionsView extends BaseView, LoadMoreView<BaseNode>, SwipeRefreshView, SwitchNetworkView {
    @OneExecution
    void openStakingOperationDetails(StakingOperationItem stakingOperationItem, NetworkType networkType);

    void renderInitialItems(List<BaseNode> list);

    void renderItems(List<BaseNode> list);

    @OneExecution
    void showChangeNetworkHint();
}
