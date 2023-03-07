package com.smedialink.p031ui.wallet.staking.calculator;

import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingCalculatorView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.staking.calculator.StakingCalculatorView */
/* loaded from: classes3.dex */
public interface StakingCalculatorView extends BaseView {
    @OneExecution
    void openDepositScreen(StakingDetailsItem stakingDetailsItem, double d);

    void showBalance(TokenBalance tokenBalance);

    @OneExecution
    void showLevelRequiredDialog(AccountLevel accountLevel);

    void updateStakingCalculatorViews();
}
