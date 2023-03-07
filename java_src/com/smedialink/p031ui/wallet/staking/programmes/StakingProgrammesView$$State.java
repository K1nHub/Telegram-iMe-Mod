package com.smedialink.p031ui.wallet.staking.programmes;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.staking.StakingDetailsItem;
import com.smedialink.storage.domain.model.crypto.level.AccountLevel;
import com.smedialink.storage.domain.model.wallet.staking.StakingOrderType;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State */
/* loaded from: classes3.dex */
public class StakingProgrammesView$$State extends MvpViewState<StakingProgrammesView> implements StakingProgrammesView {
    @Override // com.smedialink.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void openStakingDetailsScreen(StakingDetailsItem stakingDetailsItem) {
        OpenStakingDetailsScreenCommand openStakingDetailsScreenCommand = new OpenStakingDetailsScreenCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(openStakingDetailsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingDetailsScreen(stakingDetailsItem);
        }
        this.viewCommands.afterApply(openStakingDetailsScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void openDepositScreen(StakingDetailsItem stakingDetailsItem) {
        OpenDepositScreenCommand openDepositScreenCommand = new OpenDepositScreenCommand(this, stakingDetailsItem);
        this.viewCommands.beforeApply(openDepositScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openDepositScreen(stakingDetailsItem);
        }
        this.viewCommands.afterApply(openDepositScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void showSelectStakingOrderTypeDialog(StakingOrderType stakingOrderType) {
        ShowSelectStakingOrderTypeDialogCommand showSelectStakingOrderTypeDialogCommand = new ShowSelectStakingOrderTypeDialogCommand(this, stakingOrderType);
        this.viewCommands.beforeApply(showSelectStakingOrderTypeDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectStakingOrderTypeDialog(stakingOrderType);
        }
        this.viewCommands.afterApply(showSelectStakingOrderTypeDialogCommand);
    }

    @Override // com.smedialink.p031ui.wallet.staking.programmes.StakingProgrammesView
    public void showLevelRequiredDialog(AccountLevel accountLevel) {
        ShowLevelRequiredDialogCommand showLevelRequiredDialogCommand = new ShowLevelRequiredDialogCommand(this, accountLevel);
        this.viewCommands.beforeApply(showLevelRequiredDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showLevelRequiredDialog(accountLevel);
        }
        this.viewCommands.afterApply(showLevelRequiredDialogCommand);
    }

    @Override // com.smedialink.p031ui.wallet.staking.programmes.StakingProgrammesView
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

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
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

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
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

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
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

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
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

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$OpenStakingDetailsScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenStakingDetailsScreenCommand extends ViewCommand<StakingProgrammesView> {
        public final StakingDetailsItem stakingDetails;

        OpenStakingDetailsScreenCommand(StakingProgrammesView$$State stakingProgrammesView$$State, StakingDetailsItem stakingDetailsItem) {
            super("openStakingDetailsScreen", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.openStakingDetailsScreen(this.stakingDetails);
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$OpenDepositScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenDepositScreenCommand extends ViewCommand<StakingProgrammesView> {
        public final StakingDetailsItem stakingDetails;

        OpenDepositScreenCommand(StakingProgrammesView$$State stakingProgrammesView$$State, StakingDetailsItem stakingDetailsItem) {
            super("openDepositScreen", OneExecutionStateStrategy.class);
            this.stakingDetails = stakingDetailsItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.openDepositScreen(this.stakingDetails);
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$ShowSelectStakingOrderTypeDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSelectStakingOrderTypeDialogCommand extends ViewCommand<StakingProgrammesView> {
        public final StakingOrderType orderType;

        ShowSelectStakingOrderTypeDialogCommand(StakingProgrammesView$$State stakingProgrammesView$$State, StakingOrderType stakingOrderType) {
            super("showSelectStakingOrderTypeDialog", OneExecutionStateStrategy.class);
            this.orderType = stakingOrderType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.showSelectStakingOrderTypeDialog(this.orderType);
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$ShowLevelRequiredDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLevelRequiredDialogCommand extends ViewCommand<StakingProgrammesView> {
        public final AccountLevel minimalRank;

        ShowLevelRequiredDialogCommand(StakingProgrammesView$$State stakingProgrammesView$$State, AccountLevel accountLevel) {
            super("showLevelRequiredDialog", OneExecutionStateStrategy.class);
            this.minimalRank = accountLevel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.showLevelRequiredDialog(this.minimalRank);
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$RenderItemsCommand */
    /* loaded from: classes3.dex */
    public class RenderItemsCommand extends ViewCommand<StakingProgrammesView> {
        public final List<BaseNode> items;

        RenderItemsCommand(StakingProgrammesView$$State stakingProgrammesView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.renderItems(this.items);
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<StakingProgrammesView> {
        public final String text;

        ShowToastCommand(StakingProgrammesView$$State stakingProgrammesView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.showToast(this.text);
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<StakingProgrammesView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(StakingProgrammesView$$State stakingProgrammesView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<StakingProgrammesView> {
        OnLoadMoreCompleteCommand(StakingProgrammesView$$State stakingProgrammesView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.onLoadMoreComplete();
        }
    }

    /* compiled from: StakingProgrammesView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.staking.programmes.StakingProgrammesView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<StakingProgrammesView> {
        OnLoadMoreErrorCommand(StakingProgrammesView$$State stakingProgrammesView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(StakingProgrammesView stakingProgrammesView) {
            stakingProgrammesView.onLoadMoreError();
        }
    }
}
