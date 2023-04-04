package com.iMe.p032ui.wallet.staking;

import com.iMe.model.staking.StakingDashboardItem;
import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.StakingView$$State */
/* loaded from: classes4.dex */
public class StakingView$$State extends MvpViewState<StakingView> implements StakingView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void onTabSelected(int i) {
        OnTabSelectedCommand onTabSelectedCommand = new OnTabSelectedCommand(this, i);
        this.viewCommands.beforeApply(onTabSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTabSelected(i);
        }
        this.viewCommands.afterApply(onTabSelectedCommand);
    }

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void onSetupNavigationRouter() {
        OnSetupNavigationRouterCommand onSetupNavigationRouterCommand = new OnSetupNavigationRouterCommand(this);
        this.viewCommands.beforeApply(onSetupNavigationRouterCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSetupNavigationRouter();
        }
        this.viewCommands.afterApply(onSetupNavigationRouterCommand);
    }

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void updateDashboardItem(StakingDashboardItem stakingDashboardItem) {
        UpdateDashboardItemCommand updateDashboardItemCommand = new UpdateDashboardItemCommand(this, stakingDashboardItem);
        this.viewCommands.beforeApply(updateDashboardItemCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateDashboardItem(stakingDashboardItem);
        }
        this.viewCommands.afterApply(updateDashboardItemCommand);
    }

    @Override // com.iMe.p032ui.wallet.staking.StakingView
    public void showStakingInfoHint() {
        ShowStakingInfoHintCommand showStakingInfoHintCommand = new ShowStakingInfoHintCommand(this);
        this.viewCommands.beforeApply(showStakingInfoHintCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showStakingInfoHint();
        }
        this.viewCommands.afterApply(showStakingInfoHintCommand);
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

    @Override // com.iMe.p032ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        ShowRefreshingCommand showRefreshingCommand = new ShowRefreshingCommand(this, z);
        this.viewCommands.beforeApply(showRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRefreshing(z);
        }
        this.viewCommands.afterApply(showRefreshingCommand);
    }

    /* compiled from: StakingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.StakingView$$State$OnTabSelectedCommand */
    /* loaded from: classes4.dex */
    public class OnTabSelectedCommand extends ViewCommand<StakingView> {
        public final int position;

        OnTabSelectedCommand(StakingView$$State stakingView$$State, int i) {
            super("onTabSelected", AddToEndSingleStrategy.class);
            this.position = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingView stakingView) {
            stakingView.onTabSelected(this.position);
        }
    }

    /* compiled from: StakingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.StakingView$$State$OnSetupNavigationRouterCommand */
    /* loaded from: classes4.dex */
    public class OnSetupNavigationRouterCommand extends ViewCommand<StakingView> {
        OnSetupNavigationRouterCommand(StakingView$$State stakingView$$State) {
            super("onSetupNavigationRouter", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingView stakingView) {
            stakingView.onSetupNavigationRouter();
        }
    }

    /* compiled from: StakingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.StakingView$$State$UpdateDashboardItemCommand */
    /* loaded from: classes4.dex */
    public class UpdateDashboardItemCommand extends ViewCommand<StakingView> {
        public final StakingDashboardItem stakingDashboardItem;

        UpdateDashboardItemCommand(StakingView$$State stakingView$$State, StakingDashboardItem stakingDashboardItem) {
            super("updateDashboardItem", AddToEndSingleStrategy.class);
            this.stakingDashboardItem = stakingDashboardItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingView stakingView) {
            stakingView.updateDashboardItem(this.stakingDashboardItem);
        }
    }

    /* compiled from: StakingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.StakingView$$State$ShowStakingInfoHintCommand */
    /* loaded from: classes4.dex */
    public class ShowStakingInfoHintCommand extends ViewCommand<StakingView> {
        ShowStakingInfoHintCommand(StakingView$$State stakingView$$State) {
            super("showStakingInfoHint", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingView stakingView) {
            stakingView.showStakingInfoHint();
        }
    }

    /* compiled from: StakingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.StakingView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<StakingView> {
        public final String text;

        ShowToastCommand(StakingView$$State stakingView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingView stakingView) {
            stakingView.showToast(this.text);
        }
    }

    /* compiled from: StakingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.StakingView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<StakingView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(StakingView$$State stakingView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingView stakingView) {
            stakingView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: StakingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.StakingView$$State$ShowRefreshingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshingCommand extends ViewCommand<StakingView> {
        public final boolean show;

        ShowRefreshingCommand(StakingView$$State stakingView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingView stakingView) {
            stakingView.showRefreshing(this.show);
        }
    }
}
