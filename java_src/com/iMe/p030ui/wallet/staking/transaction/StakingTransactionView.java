package com.iMe.p030ui.wallet.staking.transaction;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: StakingTransactionView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView */
/* loaded from: classes4.dex */
public interface StakingTransactionView extends BaseView {
    void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    @AddToEndSingle
    void renderStakingPercentage(StakingAnnualPercentageData stakingAnnualPercentageData);

    @AddToEndSingle
    void setupAmount(String str);

    @AddToEndSingle
    void setupAmountInputErrorState(boolean z, String str, String str2);

    @AddToEndSingle
    void setupSafeWithdrawal(boolean z, String str, String str2);

    void showActionError(String str, String str2);

    void showActionSuccess(String str, String str2);

    @AddToEndSingle
    void showBalance(String str);

    void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs);

    void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem);

    void showWithdrawHelpAlert(String str);

    @AddToEndSingle
    void updateFeeView(FeeType feeType);

    @AddToEndSingle
    void updateProgress(float f);

    @AddToEndSingle
    void updateStakingStep(TransactionStep transactionStep);

    @AddToEndSingle
    void updateWithdrawalFee(String str, String str2);
}
