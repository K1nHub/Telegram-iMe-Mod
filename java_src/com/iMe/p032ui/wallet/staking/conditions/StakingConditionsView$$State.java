package com.iMe.p032ui.wallet.staking.conditions;

import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsView$$State */
/* loaded from: classes4.dex */
public class StakingConditionsView$$State extends MvpViewState<StakingConditionsView> implements StakingConditionsView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.staking.conditions.StakingConditionsView
    public void setupScreenWithData(int i, int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, i, i2, str, str2, str3, str4, str5, str6, str7, str8, str9);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(i, i2, str, str2, str3, str4, str5, str6, str7, str8, str9);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
    }

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    /* compiled from: StakingConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.conditions.StakingConditionsView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes4.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<StakingConditionsView> {
        public final String annualPercentage;
        public final String author;
        public final String completionDate;
        public final String compoundThreshold;
        public final String finishedFeeText;
        public final int iconResId;
        public final String immediateWithdrawalFeeText;
        public final String name;
        public final int networkIconResId;
        public final String plannedWithdrawalFeeText;
        public final String startDate;

        SetupScreenWithDataCommand(StakingConditionsView$$State stakingConditionsView$$State, int i, int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.iconResId = i;
            this.networkIconResId = i2;
            this.name = str;
            this.author = str2;
            this.annualPercentage = str3;
            this.startDate = str4;
            this.completionDate = str5;
            this.compoundThreshold = str6;
            this.plannedWithdrawalFeeText = str7;
            this.immediateWithdrawalFeeText = str8;
            this.finishedFeeText = str9;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingConditionsView stakingConditionsView) {
            stakingConditionsView.setupScreenWithData(this.iconResId, this.networkIconResId, this.name, this.author, this.annualPercentage, this.startDate, this.completionDate, this.compoundThreshold, this.plannedWithdrawalFeeText, this.immediateWithdrawalFeeText, this.finishedFeeText);
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
}
