package com.iMe.p030ui.wallet.staking.transaction;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingAnnualPercentageData;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State */
/* loaded from: classes4.dex */
public class StakingTransactionView$$State extends MvpViewState<StakingTransactionView> implements StakingTransactionView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showStakingConditionsDialog(StakingDetailsItem stakingDetailsItem) {
        ShowStakingConditionsDialogCommand showStakingConditionsDialogCommand = new ShowStakingConditionsDialogCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(showStakingConditionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showStakingConditionsDialog(stakingDetailsItem);
        }
        this.viewCommands.afterApply(showStakingConditionsDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
        ShowNoEnoughMoneyErrorDialogCommand showNoEnoughMoneyErrorDialogCommand = new ShowNoEnoughMoneyErrorDialogCommand(this, tokenBuyCoordinatorArgs);
        this.viewCommands.beforeApply(showNoEnoughMoneyErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showNoEnoughMoneyErrorDialog(tokenBuyCoordinatorArgs);
        }
        this.viewCommands.afterApply(showNoEnoughMoneyErrorDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showActionSuccess(String str, String str2) {
        ShowActionSuccessCommand showActionSuccessCommand = new ShowActionSuccessCommand(this, str, str2);
        this.viewCommands.beforeApply(showActionSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionSuccess(str, str2);
        }
        this.viewCommands.afterApply(showActionSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showActionError(String str, String str2) {
        ShowActionErrorCommand showActionErrorCommand = new ShowActionErrorCommand(this, str, str2);
        this.viewCommands.beforeApply(showActionErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionError(str, str2);
        }
        this.viewCommands.afterApply(showActionErrorCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowConfirmDialogCommand showConfirmDialogCommand = new ShowConfirmDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showConfirmDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showConfirmDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showWithdrawHelpAlert(String str) {
        ShowWithdrawHelpAlertCommand showWithdrawHelpAlertCommand = new ShowWithdrawHelpAlertCommand(this, str);
        this.viewCommands.beforeApply(showWithdrawHelpAlertCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWithdrawHelpAlert(str);
        }
        this.viewCommands.afterApply(showWithdrawHelpAlertCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
        OpenBuyScreenCommand openBuyScreenCommand = new OpenBuyScreenCommand(this, tokenBuyCoordinatorArgs);
        this.viewCommands.beforeApply(openBuyScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBuyScreen(tokenBuyCoordinatorArgs);
        }
        this.viewCommands.afterApply(openBuyScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void showBalance(String str) {
        ShowBalanceCommand showBalanceCommand = new ShowBalanceCommand(this, str);
        this.viewCommands.beforeApply(showBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showBalance(str);
        }
        this.viewCommands.afterApply(showBalanceCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void setupAmount(String str) {
        SetupAmountCommand setupAmountCommand = new SetupAmountCommand(this, str);
        this.viewCommands.beforeApply(setupAmountCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupAmount(str);
        }
        this.viewCommands.afterApply(setupAmountCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void renderStakingPercentage(StakingAnnualPercentageData stakingAnnualPercentageData) {
        RenderStakingPercentageCommand renderStakingPercentageCommand = new RenderStakingPercentageCommand(this, stakingAnnualPercentageData);
        this.viewCommands.beforeApply(renderStakingPercentageCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderStakingPercentage(stakingAnnualPercentageData);
        }
        this.viewCommands.afterApply(renderStakingPercentageCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateStakingStep(TransactionStep transactionStep) {
        UpdateStakingStepCommand updateStakingStepCommand = new UpdateStakingStepCommand(this, transactionStep);
        this.viewCommands.beforeApply(updateStakingStepCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateStakingStep(transactionStep);
        }
        this.viewCommands.afterApply(updateStakingStepCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateProgress(float f) {
        UpdateProgressCommand updateProgressCommand = new UpdateProgressCommand(this, f);
        this.viewCommands.beforeApply(updateProgressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateProgress(f);
        }
        this.viewCommands.afterApply(updateProgressCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateWithdrawalFee(String str, String str2) {
        UpdateWithdrawalFeeCommand updateWithdrawalFeeCommand = new UpdateWithdrawalFeeCommand(this, str, str2);
        this.viewCommands.beforeApply(updateWithdrawalFeeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateWithdrawalFee(str, str2);
        }
        this.viewCommands.afterApply(updateWithdrawalFeeCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void setupSafeWithdrawal(boolean z, String str, String str2) {
        SetupSafeWithdrawalCommand setupSafeWithdrawalCommand = new SetupSafeWithdrawalCommand(this, z, str, str2);
        this.viewCommands.beforeApply(setupSafeWithdrawalCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupSafeWithdrawal(z, str, str2);
        }
        this.viewCommands.afterApply(setupSafeWithdrawalCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void updateFeeView(FeeType feeType) {
        UpdateFeeViewCommand updateFeeViewCommand = new UpdateFeeViewCommand(this, feeType);
        this.viewCommands.beforeApply(updateFeeViewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateFeeView(feeType);
        }
        this.viewCommands.afterApply(updateFeeViewCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.transaction.StakingTransactionView
    public void setupAmountInputErrorState(boolean z, String str, String str2) {
        SetupAmountInputErrorStateCommand setupAmountInputErrorStateCommand = new SetupAmountInputErrorStateCommand(this, z, str, str2);
        this.viewCommands.beforeApply(setupAmountInputErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupAmountInputErrorState(z, str, str2);
        }
        this.viewCommands.afterApply(setupAmountInputErrorStateCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public void showToast(String str) {
        ShowToastCommand showToastCommand = new ShowToastCommand(this, str);
        this.viewCommands.beforeApply(showToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showToast(str);
        }
        this.viewCommands.afterApply(showToastCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public void showLoadingDialog(boolean z, boolean z2, Disposable disposable) {
        ShowLoadingDialogCommand showLoadingDialogCommand = new ShowLoadingDialogCommand(this, z, z2, disposable);
        this.viewCommands.beforeApply(showLoadingDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLoadingDialog(z, z2, disposable);
        }
        this.viewCommands.afterApply(showLoadingDialogCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public <T> void showErrorToast(Result.Error<? extends T> error, ResourceManager resourceManager) {
        ShowErrorToastCommand showErrorToastCommand = new ShowErrorToastCommand(this, error, resourceManager);
        this.viewCommands.beforeApply(showErrorToastCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorToast(error, resourceManager);
        }
        this.viewCommands.afterApply(showErrorToastCommand);
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowStakingConditionsDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowStakingConditionsDialogCommand extends ViewCommand<StakingTransactionView> {
        public final StakingDetailsItem stakingDetails;

        ShowStakingConditionsDialogCommand(StakingTransactionView$$State stakingTransactionView$$State, StakingDetailsItem stakingDetailsItem) {
            super("showStakingConditionsDialog", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showStakingConditionsDialog(this.stakingDetails);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowNoEnoughMoneyErrorDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowNoEnoughMoneyErrorDialogCommand extends ViewCommand<StakingTransactionView> {
        public final TokenBuyCoordinatorArgs args;

        ShowNoEnoughMoneyErrorDialogCommand(StakingTransactionView$$State stakingTransactionView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("showNoEnoughMoneyErrorDialog", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showNoEnoughMoneyErrorDialog(this.args);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowActionSuccessCommand */
    /* loaded from: classes4.dex */
    public class ShowActionSuccessCommand extends ViewCommand<StakingTransactionView> {
        public final String message;
        public final String title;

        ShowActionSuccessCommand(StakingTransactionView$$State stakingTransactionView$$State, String str, String str2) {
            super("showActionSuccess", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showActionSuccess(this.title, this.message);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowActionErrorCommand */
    /* loaded from: classes4.dex */
    public class ShowActionErrorCommand extends ViewCommand<StakingTransactionView> {
        public final String message;
        public final String title;

        ShowActionErrorCommand(StakingTransactionView$$State stakingTransactionView$$State, String str, String str2) {
            super("showActionError", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showActionError(this.title, this.message);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowConfirmDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowConfirmDialogCommand extends ViewCommand<StakingTransactionView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowConfirmDialogCommand(StakingTransactionView$$State stakingTransactionView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showConfirmDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowWithdrawHelpAlertCommand */
    /* loaded from: classes4.dex */
    public class ShowWithdrawHelpAlertCommand extends ViewCommand<StakingTransactionView> {
        public final String message;

        ShowWithdrawHelpAlertCommand(StakingTransactionView$$State stakingTransactionView$$State, String str) {
            super("showWithdrawHelpAlert", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showWithdrawHelpAlert(this.message);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$OpenBuyScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBuyScreenCommand extends ViewCommand<StakingTransactionView> {
        public final TokenBuyCoordinatorArgs args;

        OpenBuyScreenCommand(StakingTransactionView$$State stakingTransactionView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("openBuyScreen", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.openBuyScreen(this.args);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowBalanceCommand */
    /* loaded from: classes4.dex */
    public class ShowBalanceCommand extends ViewCommand<StakingTransactionView> {
        public final String balance;

        ShowBalanceCommand(StakingTransactionView$$State stakingTransactionView$$State, String str) {
            super("showBalance", AddToEndSingleStrategy.class);
            this.balance = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showBalance(this.balance);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$SetupAmountCommand */
    /* loaded from: classes4.dex */
    public class SetupAmountCommand extends ViewCommand<StakingTransactionView> {
        public final String amountText;

        SetupAmountCommand(StakingTransactionView$$State stakingTransactionView$$State, String str) {
            super("setupAmount", AddToEndSingleStrategy.class);
            this.amountText = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.setupAmount(this.amountText);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$RenderStakingPercentageCommand */
    /* loaded from: classes4.dex */
    public class RenderStakingPercentageCommand extends ViewCommand<StakingTransactionView> {
        public final StakingAnnualPercentageData data;

        RenderStakingPercentageCommand(StakingTransactionView$$State stakingTransactionView$$State, StakingAnnualPercentageData stakingAnnualPercentageData) {
            super("renderStakingPercentage", AddToEndSingleStrategy.class);
            this.data = stakingAnnualPercentageData;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.renderStakingPercentage(this.data);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$UpdateStakingStepCommand */
    /* loaded from: classes4.dex */
    public class UpdateStakingStepCommand extends ViewCommand<StakingTransactionView> {
        public final TransactionStep transactionStep;

        UpdateStakingStepCommand(StakingTransactionView$$State stakingTransactionView$$State, TransactionStep transactionStep) {
            super("updateStakingStep", AddToEndSingleStrategy.class);
            this.transactionStep = transactionStep;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.updateStakingStep(this.transactionStep);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$UpdateProgressCommand */
    /* loaded from: classes4.dex */
    public class UpdateProgressCommand extends ViewCommand<StakingTransactionView> {
        public final float progress;

        UpdateProgressCommand(StakingTransactionView$$State stakingTransactionView$$State, float f) {
            super("updateProgress", AddToEndSingleStrategy.class);
            this.progress = f;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.updateProgress(this.progress);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$UpdateWithdrawalFeeCommand */
    /* loaded from: classes4.dex */
    public class UpdateWithdrawalFeeCommand extends ViewCommand<StakingTransactionView> {
        public final String feeValue;
        public final String timeValue;

        UpdateWithdrawalFeeCommand(StakingTransactionView$$State stakingTransactionView$$State, String str, String str2) {
            super("updateWithdrawalFee", AddToEndSingleStrategy.class);
            this.feeValue = str;
            this.timeValue = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.updateWithdrawalFee(this.feeValue, this.timeValue);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$SetupSafeWithdrawalCommand */
    /* loaded from: classes4.dex */
    public class SetupSafeWithdrawalCommand extends ViewCommand<StakingTransactionView> {
        public final String alertMessageText;
        public final String alertTitleText;
        public final boolean isSafeWithdrawalSelected;

        SetupSafeWithdrawalCommand(StakingTransactionView$$State stakingTransactionView$$State, boolean z, String str, String str2) {
            super("setupSafeWithdrawal", AddToEndSingleStrategy.class);
            this.isSafeWithdrawalSelected = z;
            this.alertTitleText = str;
            this.alertMessageText = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.setupSafeWithdrawal(this.isSafeWithdrawalSelected, this.alertTitleText, this.alertMessageText);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$UpdateFeeViewCommand */
    /* loaded from: classes4.dex */
    public class UpdateFeeViewCommand extends ViewCommand<StakingTransactionView> {
        public final FeeType feeType;

        UpdateFeeViewCommand(StakingTransactionView$$State stakingTransactionView$$State, FeeType feeType) {
            super("updateFeeView", AddToEndSingleStrategy.class);
            this.feeType = feeType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.updateFeeView(this.feeType);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$SetupAmountInputErrorStateCommand */
    /* loaded from: classes4.dex */
    public class SetupAmountInputErrorStateCommand extends ViewCommand<StakingTransactionView> {
        public final String clickableText;
        public final String errorText;
        public final boolean isError;

        SetupAmountInputErrorStateCommand(StakingTransactionView$$State stakingTransactionView$$State, boolean z, String str, String str2) {
            super("setupAmountInputErrorState", AddToEndSingleStrategy.class);
            this.isError = z;
            this.errorText = str;
            this.clickableText = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.setupAmountInputErrorState(this.isError, this.errorText, this.clickableText);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<StakingTransactionView> {
        public final String text;

        ShowToastCommand(StakingTransactionView$$State stakingTransactionView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showToast(this.text);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<StakingTransactionView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(StakingTransactionView$$State stakingTransactionView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<StakingTransactionView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(StakingTransactionView$$State stakingTransactionView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
