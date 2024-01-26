package com.iMe.p030ui.wallet.home.tabs.binancepay.history;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State */
/* loaded from: classes4.dex */
public class WalletBinancePayHistoryView$$State extends MvpViewState<WalletBinancePayHistoryView> implements WalletBinancePayHistoryView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView
    public void onLoadedTransactions(List<BaseNode> list) {
        OnLoadedTransactionsCommand onLoadedTransactionsCommand = new OnLoadedTransactionsCommand(this, list);
        this.viewCommands.beforeApply(onLoadedTransactionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadedTransactions(list);
        }
        this.viewCommands.afterApply(onLoadedTransactionsCommand);
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

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        OnNoInternetErrorStateCommand onNoInternetErrorStateCommand = new OnNoInternetErrorStateCommand(this);
        this.viewCommands.beforeApply(onNoInternetErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onNoInternetErrorState();
        }
        this.viewCommands.afterApply(onNoInternetErrorStateCommand);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        OnUnexpectedErrorStateCommand onUnexpectedErrorStateCommand = new OnUnexpectedErrorStateCommand(this);
        this.viewCommands.beforeApply(onUnexpectedErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onUnexpectedErrorState();
        }
        this.viewCommands.afterApply(onUnexpectedErrorStateCommand);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onLoadingState() {
        OnLoadingStateCommand onLoadingStateCommand = new OnLoadingStateCommand(this);
        this.viewCommands.beforeApply(onLoadingStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadingState();
        }
        this.viewCommands.afterApply(onLoadingStateCommand);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onEmptyState() {
        OnEmptyStateCommand onEmptyStateCommand = new OnEmptyStateCommand(this);
        this.viewCommands.beforeApply(onEmptyStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onEmptyState();
        }
        this.viewCommands.afterApply(onEmptyStateCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
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

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
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

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
    public void showConfirmPaymentDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowConfirmPaymentDialogCommand showConfirmPaymentDialogCommand = new ShowConfirmPaymentDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showConfirmPaymentDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmPaymentDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showConfirmPaymentDialogCommand);
    }

    @Override // com.iMe.manager.crypto.pay.BinancePayProcessView
    public void showSuccessPaymentProcessedDialog(String str, String str2, String str3) {
        ShowSuccessPaymentProcessedDialogCommand showSuccessPaymentProcessedDialogCommand = new ShowSuccessPaymentProcessedDialogCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(showSuccessPaymentProcessedDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSuccessPaymentProcessedDialog(str, str2, str3);
        }
        this.viewCommands.afterApply(showSuccessPaymentProcessedDialogCommand);
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnLoadedTransactionsCommand */
    /* loaded from: classes4.dex */
    public class OnLoadedTransactionsCommand extends ViewCommand<WalletBinancePayHistoryView> {
        public final List<BaseNode> transactions;

        OnLoadedTransactionsCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, List<BaseNode> list) {
            super("onLoadedTransactions", AddToEndSingleStrategy.class);
            this.transactions = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onLoadedTransactions(this.transactions);
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletBinancePayHistoryView> {
        public final String text;

        ShowToastCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.showToast(this.text);
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletBinancePayHistoryView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletBinancePayHistoryView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnNoInternetErrorStateCommand */
    /* loaded from: classes4.dex */
    public class OnNoInternetErrorStateCommand extends ViewCommand<WalletBinancePayHistoryView> {
        OnNoInternetErrorStateCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State) {
            super("onNoInternetErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onNoInternetErrorState();
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnUnexpectedErrorStateCommand */
    /* loaded from: classes4.dex */
    public class OnUnexpectedErrorStateCommand extends ViewCommand<WalletBinancePayHistoryView> {
        OnUnexpectedErrorStateCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State) {
            super("onUnexpectedErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onUnexpectedErrorState();
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnLoadingStateCommand */
    /* loaded from: classes4.dex */
    public class OnLoadingStateCommand extends ViewCommand<WalletBinancePayHistoryView> {
        OnLoadingStateCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State) {
            super("onLoadingState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onLoadingState();
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnEmptyStateCommand */
    /* loaded from: classes4.dex */
    public class OnEmptyStateCommand extends ViewCommand<WalletBinancePayHistoryView> {
        OnEmptyStateCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State) {
            super("onEmptyState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onEmptyState();
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<WalletBinancePayHistoryView> {
        public final List<BaseNode> items;

        OnLoadMoreItemsCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, List<BaseNode> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<WalletBinancePayHistoryView> {
        OnLoadMoreCompleteCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onLoadMoreComplete();
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<WalletBinancePayHistoryView> {
        OnLoadMoreErrorCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.onLoadMoreError();
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$ResetLoadMoreCommand */
    /* loaded from: classes4.dex */
    public class ResetLoadMoreCommand extends ViewCommand<WalletBinancePayHistoryView> {
        ResetLoadMoreCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State) {
            super("resetLoadMore", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.resetLoadMore();
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$ShowRefreshingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshingCommand extends ViewCommand<WalletBinancePayHistoryView> {
        public final boolean show;

        ShowRefreshingCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.showRefreshing(this.show);
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$ShowConfirmPaymentDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowConfirmPaymentDialogCommand extends ViewCommand<WalletBinancePayHistoryView> {
        public final Callbacks$Callback action;
        public final DialogModel model;

        ShowConfirmPaymentDialogCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmPaymentDialog", OneExecutionStateStrategy.class);
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.showConfirmPaymentDialog(this.model, this.action);
        }
    }

    /* compiled from: WalletBinancePayHistoryView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.history.WalletBinancePayHistoryView$$State$ShowSuccessPaymentProcessedDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowSuccessPaymentProcessedDialogCommand extends ViewCommand<WalletBinancePayHistoryView> {
        public final String btnText;
        public final String message;
        public final String title;

        ShowSuccessPaymentProcessedDialogCommand(WalletBinancePayHistoryView$$State walletBinancePayHistoryView$$State, String str, String str2, String str3) {
            super("showSuccessPaymentProcessedDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
            this.btnText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletBinancePayHistoryView walletBinancePayHistoryView) {
            walletBinancePayHistoryView.showSuccessPaymentProcessedDialog(this.title, this.message, this.btnText);
        }
    }
}
