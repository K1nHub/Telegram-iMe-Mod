package com.iMe.p031ui.wallet.staking.transaction;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State */
/* loaded from: classes4.dex */
public class StakingTransactionView$$State extends MvpViewState<StakingTransactionView> implements StakingTransactionView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
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

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
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

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
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

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
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

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
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

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
    public void showBalance(TokenBalance tokenBalance) {
        ShowBalanceCommand showBalanceCommand = new ShowBalanceCommand(this, tokenBalance);
        this.viewCommands.beforeApply(showBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showBalance(tokenBalance);
        }
        this.viewCommands.afterApply(showBalanceCommand);
    }

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
    public void updateAmountDependedViews() {
        UpdateAmountDependedViewsCommand updateAmountDependedViewsCommand = new UpdateAmountDependedViewsCommand(this);
        this.viewCommands.beforeApply(updateAmountDependedViewsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateAmountDependedViews();
        }
        this.viewCommands.afterApply(updateAmountDependedViewsCommand);
    }

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
    public void updateStakingStep() {
        UpdateStakingStepCommand updateStakingStepCommand = new UpdateStakingStepCommand(this);
        this.viewCommands.beforeApply(updateStakingStepCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateStakingStep();
        }
        this.viewCommands.afterApply(updateStakingStepCommand);
    }

    @Override // com.iMe.p031ui.wallet.staking.transaction.StakingTransactionView
    public void updateWithdrawalFee() {
        UpdateWithdrawalFeeCommand updateWithdrawalFeeCommand = new UpdateWithdrawalFeeCommand(this);
        this.viewCommands.beforeApply(updateWithdrawalFeeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateWithdrawalFee();
        }
        this.viewCommands.afterApply(updateWithdrawalFeeCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$ShowBalanceCommand */
    /* loaded from: classes4.dex */
    public class ShowBalanceCommand extends ViewCommand<StakingTransactionView> {
        public final TokenBalance balance;

        ShowBalanceCommand(StakingTransactionView$$State stakingTransactionView$$State, TokenBalance tokenBalance) {
            super("showBalance", AddToEndSingleStrategy.class);
            this.balance = tokenBalance;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.showBalance(this.balance);
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$UpdateAmountDependedViewsCommand */
    /* loaded from: classes4.dex */
    public class UpdateAmountDependedViewsCommand extends ViewCommand<StakingTransactionView> {
        UpdateAmountDependedViewsCommand(StakingTransactionView$$State stakingTransactionView$$State) {
            super("updateAmountDependedViews", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.updateAmountDependedViews();
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$UpdateStakingStepCommand */
    /* loaded from: classes4.dex */
    public class UpdateStakingStepCommand extends ViewCommand<StakingTransactionView> {
        UpdateStakingStepCommand(StakingTransactionView$$State stakingTransactionView$$State) {
            super("updateStakingStep", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.updateStakingStep();
        }
    }

    /* compiled from: StakingTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.transaction.StakingTransactionView$$State$UpdateWithdrawalFeeCommand */
    /* loaded from: classes4.dex */
    public class UpdateWithdrawalFeeCommand extends ViewCommand<StakingTransactionView> {
        UpdateWithdrawalFeeCommand(StakingTransactionView$$State stakingTransactionView$$State) {
            super("updateWithdrawalFee", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingTransactionView stakingTransactionView) {
            stakingTransactionView.updateWithdrawalFee();
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
