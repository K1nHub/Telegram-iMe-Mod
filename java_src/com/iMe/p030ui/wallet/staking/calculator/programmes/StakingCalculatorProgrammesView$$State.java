package com.iMe.p030ui.wallet.staking.calculator.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.staking.StakingDetailsItem;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State */
/* loaded from: classes4.dex */
public class StakingCalculatorProgrammesView$$State extends MvpViewState<StakingCalculatorProgrammesView> implements StakingCalculatorProgrammesView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
    public void renderItems(List<BaseNode> list) {
        RenderItemsCommand renderItemsCommand = new RenderItemsCommand(this, list);
        this.viewCommands.beforeApply(renderItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderItems(list);
        }
        this.viewCommands.afterApply(renderItemsCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
    public void onStakingSelected(StakingDetailsItem stakingDetailsItem) {
        OnStakingSelectedCommand onStakingSelectedCommand = new OnStakingSelectedCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(onStakingSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onStakingSelected(stakingDetailsItem);
        }
        this.viewCommands.afterApply(onStakingSelectedCommand);
    }

    @Override // com.iMe.p030ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView
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

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        OnLoadMoreCompleteCommand onLoadMoreCompleteCommand = new OnLoadMoreCompleteCommand(this);
        this.viewCommands.beforeApply(onLoadMoreCompleteCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadMoreComplete();
        }
        this.viewCommands.afterApply(onLoadMoreCompleteCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        OnLoadMoreErrorCommand onLoadMoreErrorCommand = new OnLoadMoreErrorCommand(this);
        this.viewCommands.beforeApply(onLoadMoreErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadMoreError();
        }
        this.viewCommands.afterApply(onLoadMoreErrorCommand);
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$RenderItemsCommand */
    /* loaded from: classes4.dex */
    public class RenderItemsCommand extends ViewCommand<StakingCalculatorProgrammesView> {
        public final List<BaseNode> items;

        RenderItemsCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.renderItems(this.items);
        }
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$OnStakingSelectedCommand */
    /* loaded from: classes4.dex */
    public class OnStakingSelectedCommand extends ViewCommand<StakingCalculatorProgrammesView> {
        public final StakingDetailsItem stakingDetailsItem;

        OnStakingSelectedCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State, StakingDetailsItem stakingDetailsItem) {
            super("onStakingSelected", OneExecutionStateStrategy.class);
            this.stakingDetailsItem = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.onStakingSelected(this.stakingDetailsItem);
        }
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$ShowStakingConditionsDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowStakingConditionsDialogCommand extends ViewCommand<StakingCalculatorProgrammesView> {
        public final StakingDetailsItem stakingDetails;

        ShowStakingConditionsDialogCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State, StakingDetailsItem stakingDetailsItem) {
            super("showStakingConditionsDialog", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.showStakingConditionsDialog(this.stakingDetails);
        }
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<StakingCalculatorProgrammesView> {
        public final String text;

        ShowToastCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.showToast(this.text);
        }
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<StakingCalculatorProgrammesView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<StakingCalculatorProgrammesView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<StakingCalculatorProgrammesView> {
        OnLoadMoreCompleteCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.onLoadMoreComplete();
        }
    }

    /* compiled from: StakingCalculatorProgrammesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.staking.calculator.programmes.StakingCalculatorProgrammesView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<StakingCalculatorProgrammesView> {
        OnLoadMoreErrorCommand(StakingCalculatorProgrammesView$$State stakingCalculatorProgrammesView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingCalculatorProgrammesView stakingCalculatorProgrammesView) {
            stakingCalculatorProgrammesView.onLoadMoreError();
        }
    }
}
