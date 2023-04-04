package com.iMe.p032ui.wallet.staking.calculator;

import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingCalculatorView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView */
/* loaded from: classes4.dex */
public interface StakingCalculatorView extends BaseView {
    @OneExecution
    void openDepositScreen(StakingDetailsItem stakingDetailsItem, double d);

    void showBalance(TokenBalance tokenBalance);

    @OneExecution
    void showLevelRequiredDialog(AccountLevel accountLevel);

    void updateStakingCalculatorViews();
}
