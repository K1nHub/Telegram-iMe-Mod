package com.iMe.p032ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State */
/* loaded from: classes4.dex */
public class WalletTransactionsView$$State extends MvpViewState<WalletTransactionsView> implements WalletTransactionsView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.transaction.WalletTransactionsView
    public void renderInitialItems(List<BaseNode> list) {
        RenderInitialItemsCommand renderInitialItemsCommand = new RenderInitialItemsCommand(this, list);
        this.viewCommands.beforeApply(renderInitialItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderInitialItems(list);
        }
        this.viewCommands.afterApply(renderInitialItemsCommand);
    }

    @Override // com.iMe.p032ui.wallet.transaction.WalletTransactionsView
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

    @Override // com.iMe.p032ui.wallet.transaction.WalletTransactionsView
    public void showChangeNetworkHint() {
        ShowChangeNetworkHintCommand showChangeNetworkHintCommand = new ShowChangeNetworkHintCommand(this);
        this.viewCommands.beforeApply(showChangeNetworkHintCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChangeNetworkHint();
        }
        this.viewCommands.afterApply(showChangeNetworkHintCommand);
    }

    @Override // com.iMe.p032ui.wallet.transaction.WalletTransactionsView
    public void openStakingOperationDetails(StakingOperationItem stakingOperationItem, NetworkType networkType) {
        OpenStakingOperationDetailsCommand openStakingOperationDetailsCommand = new OpenStakingOperationDetailsCommand(this, stakingOperationItem, networkType);
        this.viewCommands.beforeApply(openStakingOperationDetailsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingOperationDetails(stakingOperationItem, networkType);
        }
        this.viewCommands.afterApply(openStakingOperationDetailsCommand);
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

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> list) {
        OnLoadMoreItemsCommand onLoadMoreItemsCommand = new OnLoadMoreItemsCommand(this, list);
        this.viewCommands.beforeApply(onLoadMoreItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadMoreItems(list);
        }
        this.viewCommands.afterApply(onLoadMoreItemsCommand);
    }

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p032ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        ResetLoadMoreCommand resetLoadMoreCommand = new ResetLoadMoreCommand(this);
        this.viewCommands.beforeApply(resetLoadMoreCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.resetLoadMore();
        }
        this.viewCommands.afterApply(resetLoadMoreCommand);
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

    @Override // com.iMe.p032ui.base.mvp.SwitchNetworkView
    public void setupNetworkType(NetworkType networkType) {
        SetupNetworkTypeCommand setupNetworkTypeCommand = new SetupNetworkTypeCommand(this, networkType);
        this.viewCommands.beforeApply(setupNetworkTypeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetworkType(networkType);
        }
        this.viewCommands.afterApply(setupNetworkTypeCommand);
    }

    @Override // com.iMe.p032ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkType, list, function1);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkType, list, function1);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$RenderInitialItemsCommand */
    /* loaded from: classes4.dex */
    public class RenderInitialItemsCommand extends ViewCommand<WalletTransactionsView> {
        public final List<BaseNode> items;

        RenderInitialItemsCommand(WalletTransactionsView$$State walletTransactionsView$$State, List<BaseNode> list) {
            super("renderInitialItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.renderInitialItems(this.items);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$RenderItemsCommand */
    /* loaded from: classes4.dex */
    public class RenderItemsCommand extends ViewCommand<WalletTransactionsView> {
        public final List<BaseNode> items;

        RenderItemsCommand(WalletTransactionsView$$State walletTransactionsView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.renderItems(this.items);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes4.dex */
    public class ShowChangeNetworkHintCommand extends ViewCommand<WalletTransactionsView> {
        ShowChangeNetworkHintCommand(WalletTransactionsView$$State walletTransactionsView$$State) {
            super("showChangeNetworkHint", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.showChangeNetworkHint();
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$OpenStakingOperationDetailsCommand */
    /* loaded from: classes4.dex */
    public class OpenStakingOperationDetailsCommand extends ViewCommand<WalletTransactionsView> {
        public final StakingOperationItem item;
        public final NetworkType networkType;

        OpenStakingOperationDetailsCommand(WalletTransactionsView$$State walletTransactionsView$$State, StakingOperationItem stakingOperationItem, NetworkType networkType) {
            super("openStakingOperationDetails", OneExecutionStateStrategy.class);
            this.item = stakingOperationItem;
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.openStakingOperationDetails(this.item, this.networkType);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletTransactionsView> {
        public final String text;

        ShowToastCommand(WalletTransactionsView$$State walletTransactionsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.showToast(this.text);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletTransactionsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletTransactionsView$$State walletTransactionsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<WalletTransactionsView> {
        public final List<BaseNode> items;

        OnLoadMoreItemsCommand(WalletTransactionsView$$State walletTransactionsView$$State, List<BaseNode> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<WalletTransactionsView> {
        OnLoadMoreCompleteCommand(WalletTransactionsView$$State walletTransactionsView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.onLoadMoreComplete();
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<WalletTransactionsView> {
        OnLoadMoreErrorCommand(WalletTransactionsView$$State walletTransactionsView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.onLoadMoreError();
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ResetLoadMoreCommand */
    /* loaded from: classes4.dex */
    public class ResetLoadMoreCommand extends ViewCommand<WalletTransactionsView> {
        ResetLoadMoreCommand(WalletTransactionsView$$State walletTransactionsView$$State) {
            super("resetLoadMore", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.resetLoadMore();
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowRefreshingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshingCommand extends ViewCommand<WalletTransactionsView> {
        public final boolean show;

        ShowRefreshingCommand(WalletTransactionsView$$State walletTransactionsView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.showRefreshing(this.show);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$SetupNetworkTypeCommand */
    /* loaded from: classes4.dex */
    public class SetupNetworkTypeCommand extends ViewCommand<WalletTransactionsView> {
        public final NetworkType networkType;

        SetupNetworkTypeCommand(WalletTransactionsView$$State walletTransactionsView$$State, NetworkType networkType) {
            super("setupNetworkType", AddToEndSingleStrategy.class);
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.setupNetworkType(this.networkType);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletTransactionsView> {
        public final Function1<? super NetworkType, Unit> action;
        public final List<? extends NetworkType> availableNetworks;
        public final NetworkType networkType;

        ShowChooseNetworkDialogCommand(WalletTransactionsView$$State walletTransactionsView$$State, NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.networkType = networkType;
            this.availableNetworks = list;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.showChooseNetworkDialog(this.networkType, this.availableNetworks, this.action);
        }
    }
}
