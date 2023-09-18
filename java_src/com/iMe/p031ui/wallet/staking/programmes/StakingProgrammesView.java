package com.iMe.p031ui.wallet.staking.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.wallet.staking.StakingOrderType;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingProgrammesView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.staking.programmes.StakingProgrammesView */
/* loaded from: classes6.dex */
public interface StakingProgrammesView extends BaseView, LoadMoreView<BaseNode> {
    void openDepositScreen(StakingDetailsItem stakingDetailsItem);

    void openStakingDetailsScreen(StakingDetailsItem stakingDetailsItem);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showLevelRequiredDialog(AccountLevel accountLevel, TokenDetailed tokenDetailed);

    void showSelectStakingOrderTypeDialog(StakingOrderType stakingOrderType);
}
