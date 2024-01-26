package com.iMe.p030ui.wallet.staking.conditions;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsView$$State */
/* loaded from: classes4.dex */
public class StakingConditionsView$$State extends MvpViewState<StakingConditionsView> implements StakingConditionsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.staking.conditions.StakingConditionsView
    public void setupScreenWithData(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
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

    /* compiled from: StakingConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes4.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<StakingConditionsView> {
        public final String annualPercentage;
        public final String author;
        public final String completionDate;
        public final String compoundThreshold;
        public final String finishedFeeText;
        public final String iconUrl;
        public final String immediateWithdrawalFeeText;
        public final String name;
        public final String networkIconUrl;
        public final String plannedWithdrawalFeeText;
        public final String startDate;

        SetupScreenWithDataCommand(StakingConditionsView$$State stakingConditionsView$$State, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.iconUrl = str;
            this.networkIconUrl = str2;
            this.name = str3;
            this.author = str4;
            this.annualPercentage = str5;
            this.startDate = str6;
            this.completionDate = str7;
            this.compoundThreshold = str8;
            this.plannedWithdrawalFeeText = str9;
            this.immediateWithdrawalFeeText = str10;
            this.finishedFeeText = str11;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingConditionsView stakingConditionsView) {
            stakingConditionsView.setupScreenWithData(this.iconUrl, this.networkIconUrl, this.name, this.author, this.annualPercentage, this.startDate, this.completionDate, this.compoundThreshold, this.plannedWithdrawalFeeText, this.immediateWithdrawalFeeText, this.finishedFeeText);
        }
    }

    /* compiled from: StakingConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<StakingConditionsView> {
        public final String text;

        ShowToastCommand(StakingConditionsView$$State stakingConditionsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingConditionsView stakingConditionsView) {
            stakingConditionsView.showToast(this.text);
        }
    }

    /* compiled from: StakingConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<StakingConditionsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(StakingConditionsView$$State stakingConditionsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingConditionsView stakingConditionsView) {
            stakingConditionsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: StakingConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<StakingConditionsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(StakingConditionsView$$State stakingConditionsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingConditionsView stakingConditionsView) {
            stakingConditionsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
