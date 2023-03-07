package com.smedialink.p031ui.wallet.staking.transaction;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: StakingTransactionView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.staking.transaction.StakingTransactionView */
/* loaded from: classes3.dex */
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
