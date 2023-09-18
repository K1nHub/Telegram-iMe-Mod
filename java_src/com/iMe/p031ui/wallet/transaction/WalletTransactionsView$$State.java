package com.iMe.p031ui.wallet.transaction;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.transaction.CryptoBoxActionItem;
import com.iMe.model.wallet.transaction.StakingOperationItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State */
/* loaded from: classes6.dex */
public class WalletTransactionsView$$State extends MvpViewState<WalletTransactionsView> implements WalletTransactionsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.transaction.WalletTransactionsView
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

    @Override // com.iMe.p031ui.wallet.transaction.WalletTransactionsView
    public void openStakingOperationDetails(StakingOperationItem stakingOperationItem, Network network) {
        OpenStakingOperationDetailsCommand openStakingOperationDetailsCommand = new OpenStakingOperationDetailsCommand(this, stakingOperationItem, network);
        this.viewCommands.beforeApply(openStakingOperationDetailsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingOperationDetails(stakingOperationItem, network);
        }
        this.viewCommands.afterApply(openStakingOperationDetailsCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.WalletTransactionsView
    public void openCryptoBoxActionDetails(CryptoBoxActionItem cryptoBoxActionItem, Network network) {
        OpenCryptoBoxActionDetailsCommand openCryptoBoxActionDetailsCommand = new OpenCryptoBoxActionDetailsCommand(this, cryptoBoxActionItem, network);
        this.viewCommands.beforeApply(openCryptoBoxActionDetailsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCryptoBoxActionDetails(cryptoBoxActionItem, network);
        }
        this.viewCommands.afterApply(openCryptoBoxActionDetailsCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.WalletTransactionsView
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

    @Override // com.iMe.p031ui.wallet.transaction.WalletTransactionsView
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

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p031ui.base.mvp.SwipeRefreshView
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

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void setupNetwork(NetworkItem networkItem) {
        SetupNetworkCommand setupNetworkCommand = new SetupNetworkCommand(this, networkItem);
        this.viewCommands.beforeApply(setupNetworkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetwork(networkItem);
        }
        this.viewCommands.afterApply(setupNetworkCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkItem, list);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkItem, list);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
    public class OpenStakingOperationDetailsCommand extends ViewCommand<WalletTransactionsView> {
        public final StakingOperationItem item;
        public final Network network;

        OpenStakingOperationDetailsCommand(WalletTransactionsView$$State walletTransactionsView$$State, StakingOperationItem stakingOperationItem, Network network) {
            super("openStakingOperationDetails", OneExecutionStateStrategy.class);
            this.item = stakingOperationItem;
            this.network = network;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.openStakingOperationDetails(this.item, this.network);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$OpenCryptoBoxActionDetailsCommand */
    /* loaded from: classes6.dex */
    public class OpenCryptoBoxActionDetailsCommand extends ViewCommand<WalletTransactionsView> {
        public final CryptoBoxActionItem item;
        public final Network network;

        OpenCryptoBoxActionDetailsCommand(WalletTransactionsView$$State walletTransactionsView$$State, CryptoBoxActionItem cryptoBoxActionItem, Network network) {
            super("openCryptoBoxActionDetails", OneExecutionStateStrategy.class);
            this.item = cryptoBoxActionItem;
            this.network = network;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.openCryptoBoxActionDetails(this.item, this.network);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$RenderInitialItemsCommand */
    /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowToastCommand */
    /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowErrorToastCommand */
    /* loaded from: classes6.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletTransactionsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletTransactionsView$$State walletTransactionsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
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
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$SetupNetworkCommand */
    /* loaded from: classes6.dex */
    public class SetupNetworkCommand extends ViewCommand<WalletTransactionsView> {
        public final NetworkItem networkItem;

        SetupNetworkCommand(WalletTransactionsView$$State walletTransactionsView$$State, NetworkItem networkItem) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.networkItem = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.setupNetwork(this.networkItem);
        }
    }

    /* compiled from: WalletTransactionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.WalletTransactionsView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletTransactionsView> {
        public final List<? extends NetworkItem> availableNetworks;
        public final NetworkItem network;

        ShowChooseNetworkDialogCommand(WalletTransactionsView$$State walletTransactionsView$$State, NetworkItem networkItem, List<? extends NetworkItem> list) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = networkItem;
            this.availableNetworks = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionsView walletTransactionsView) {
            walletTransactionsView.showChooseNetworkDialog(this.network, this.availableNetworks);
        }
    }
}
