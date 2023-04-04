package com.iMe.p032ui.wallet.staking.transaction;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingTransactionView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView */
/* loaded from: classes4.dex */
public interface StakingTransactionView extends BaseView {
    void showActionError(String str, String str2);

    void showActionSuccess(String str, String str2);

    @AddToEndSingle
    void showBalance(TokenBalance tokenBalance);

    void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem);

    @AddToEndSingle
    void updateAmountDependedViews();

    @AddToEndSingle
    void updateStakingStep();

    @AddToEndSingle
    void updateWithdrawalFee();
}
