package com.iMe.p031ui.wallet.staking.calculator.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingCalculatorProgrammesView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView */
/* loaded from: classes4.dex */
public interface StakingCalculatorProgrammesView extends BaseView, LoadMoreView<BaseNode> {
    void onStakingSelected(StakingDetailsItem stakingDetailsItem);

    @AddToEndSingle
    void renderItems(List<BaseNode> list);

    void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem);
}
