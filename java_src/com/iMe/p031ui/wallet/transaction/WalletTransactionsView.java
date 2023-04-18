package com.iMe.p031ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.SwitchNetworkView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletTransactionsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView */
/* loaded from: classes4.dex */
public interface WalletTransactionsView extends BaseView, LoadMoreView<BaseNode>, SwipeRefreshView, SwitchNetworkView {
    @OneExecution
    void openStakingOperationDetails(StakingOperationItem stakingOperationItem, NetworkType networkType);

    void renderInitialItems(List<BaseNode> list);

    void renderItems(List<BaseNode> list);

    @OneExecution
    void showChangeNetworkHint();
}
