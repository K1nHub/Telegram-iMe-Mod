package com.iMe.p031ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.transaction.CryptoBoxActionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.SwipeRefreshView;
import com.iMe.p031ui.base.mvp.SwitchNetworkView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletTransactionsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView */
/* loaded from: classes6.dex */
public interface WalletTransactionsView extends BaseView, LoadMoreView<BaseNode>, SwipeRefreshView, SwitchNetworkView {
    void openCryptoBoxActionDetails(CryptoBoxActionItem cryptoBoxActionItem, Network network);

    void openStakingOperationDetails(StakingOperationItem stakingOperationItem, Network network);

    @AddToEndSingle
    void renderInitialItems(List<BaseNode> list);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showChangeNetworkHint();
}
