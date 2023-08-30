package com.iMe.p031ui.wallet.staking.calculator;

import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevel;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State */
/* loaded from: classes4.dex */
public class StakingCalculatorView$$State extends MvpViewState<StakingCalculatorView> implements StakingCalculatorView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.staking.calculator.StakingCalculatorView
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

    @Override // com.iMe.p031ui.wallet.staking.calculator.StakingCalculatorView
    public void updateStakingCalculatorViews() {
        UpdateStakingCalculatorViewsCommand updateStakingCalculatorViewsCommand = new UpdateStakingCalculatorViewsCommand(this);
        this.viewCommands.beforeApply(updateStakingCalculatorViewsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateStakingCalculatorViews();
        }
        this.viewCommands.afterApply(updateStakingCalculatorViewsCommand);
    }

    @Override // com.iMe.p031ui.wallet.staking.calculator.StakingCalculatorView
    public void openDepositScreen(StakingDetailsItem stakingDetailsItem, double d) {
        OpenDepositScreenCommand openDepositScreenCommand = new OpenDepositScreenCommand(this, stakingDetailsItem, d);
        this.viewCommands.beforeApply(openDepositScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openDepositScreen(stakingDetailsItem, d);
        }
        this.viewCommands.afterApply(openDepositScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.staking.calculator.StakingCalculatorView
    public void showLevelRequiredDialog(AccountLevel accountLevel, TokenDetailed tokenDetailed) {
        ShowLevelRequiredDialogCommand showLevelRequiredDialogCommand = new ShowLevelRequiredDialogCommand(this, accountLevel, tokenDetailed);
        this.viewCommands.beforeApply(showLevelRequiredDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLevelRequiredDialog(accountLevel, tokenDetailed);
        }
        this.viewCommands.afterApply(showLevelRequiredDialogCommand);
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

    /* compiled from: StakingCalculatorView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State$ShowBalanceCommand */
    /* loaded from: classes4.dex */
    public class ShowBalanceCommand extends ViewCommand<StakingCalculatorView> {
        public final TokenBalance balance;

        ShowBalanceCommand(StakingCalculatorView$$State stakingCalculatorView$$State, TokenBalance tokenBalance) {
            super("showBalance", AddToEndSingleStrategy.class);
            this.balance = tokenBalance;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorView stakingCalculatorView) {
            stakingCalculatorView.showBalance(this.balance);
        }
    }

    /* compiled from: StakingCalculatorView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State$UpdateStakingCalculatorViewsCommand */
    /* loaded from: classes4.dex */
    public class UpdateStakingCalculatorViewsCommand extends ViewCommand<StakingCalculatorView> {
        UpdateStakingCalculatorViewsCommand(StakingCalculatorView$$State stakingCalculatorView$$State) {
            super("updateStakingCalculatorViews", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorView stakingCalculatorView) {
            stakingCalculatorView.updateStakingCalculatorViews();
        }
    }

    /* compiled from: StakingCalculatorView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State$OpenDepositScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenDepositScreenCommand extends ViewCommand<StakingCalculatorView> {
        public final double presetAmount;
        public final StakingDetailsItem stakingDetails;

        OpenDepositScreenCommand(StakingCalculatorView$$State stakingCalculatorView$$State, StakingDetailsItem stakingDetailsItem, double d) {
            super("openDepositScreen", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
            this.presetAmount = d;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorView stakingCalculatorView) {
            stakingCalculatorView.openDepositScreen(this.stakingDetails, this.presetAmount);
        }
    }

    /* compiled from: StakingCalculatorView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State$ShowLevelRequiredDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLevelRequiredDialogCommand extends ViewCommand<StakingCalculatorView> {
        public final AccountLevel minimalRank;
        public final TokenDetailed token;

        ShowLevelRequiredDialogCommand(StakingCalculatorView$$State stakingCalculatorView$$State, AccountLevel accountLevel, TokenDetailed tokenDetailed) {
            super("showLevelRequiredDialog", OneExecutionStateStrategy.class);
            this.minimalRank = accountLevel;
            this.token = tokenDetailed;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorView stakingCalculatorView) {
            stakingCalculatorView.showLevelRequiredDialog(this.minimalRank, this.token);
        }
    }

    /* compiled from: StakingCalculatorView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<StakingCalculatorView> {
        public final String text;

        ShowToastCommand(StakingCalculatorView$$State stakingCalculatorView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorView stakingCalculatorView) {
            stakingCalculatorView.showToast(this.text);
        }
    }

    /* compiled from: StakingCalculatorView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<StakingCalculatorView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(StakingCalculatorView$$State stakingCalculatorView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorView stakingCalculatorView) {
            stakingCalculatorView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: StakingCalculatorView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.StakingCalculatorView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<StakingCalculatorView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(StakingCalculatorView$$State stakingCalculatorView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorView stakingCalculatorView) {
            stakingCalculatorView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
