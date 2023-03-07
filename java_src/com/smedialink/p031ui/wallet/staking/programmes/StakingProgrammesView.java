package com.smedialink.p031ui.wallet.staking.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.p031ui.base.mvp.LoadMoreView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.wallet.staking.StakingOrderType;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingProgrammesView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView */
/* loaded from: classes3.dex */
public interface StakingProgrammesView extends BaseView, LoadMoreView<BaseNode> {
    void openDepositScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingDetailsScreen(StakingDetailsItem stakingDetailsItem);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showLevelRequiredDialog(AccountLevel accountLevel);

    void showSelectStakingOrderTypeDialog(StakingOrderType stakingOrderType);
}
