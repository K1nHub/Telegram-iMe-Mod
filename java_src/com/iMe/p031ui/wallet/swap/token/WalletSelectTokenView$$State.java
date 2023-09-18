package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.wallet.token.FiatValue;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State */
/* loaded from: classes6.dex */
public class WalletSelectTokenView$$State extends MvpViewState<WalletSelectTokenView> implements WalletSelectTokenView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    @Override // com.iMe.p031ui.wallet.swap.token.WalletSelectTokenView
    public void renderItems(List<SelectableTokenItem> list) {
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

    @Override // com.iMe.p031ui.wallet.swap.token.WalletSelectTokenView
    public void onTokenSelected(TokenDetailed tokenDetailed, FiatValue fiatValue) {
        OnTokenSelectedCommand onTokenSelectedCommand = new OnTokenSelectedCommand(this, tokenDetailed, fiatValue);
        this.viewCommands.beforeApply(onTokenSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTokenSelected(tokenDetailed, fiatValue);
        }
        this.viewCommands.afterApply(onTokenSelectedCommand);
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

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
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

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
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

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
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

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
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

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<SelectableTokenItem> list) {
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

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$RenderItemsCommand */
    /* loaded from: classes6.dex */
    public class RenderItemsCommand extends ViewCommand<WalletSelectTokenView> {
        public final List<SelectableTokenItem> tokens;

        RenderItemsCommand(WalletSelectTokenView$$State walletSelectTokenView$$State, List<SelectableTokenItem> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.tokens = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.renderItems(this.tokens);
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnTokenSelectedCommand */
    /* loaded from: classes6.dex */
    public class OnTokenSelectedCommand extends ViewCommand<WalletSelectTokenView> {
        public final FiatValue rate;
        public final TokenDetailed token;

        OnTokenSelectedCommand(WalletSelectTokenView$$State walletSelectTokenView$$State, TokenDetailed tokenDetailed, FiatValue fiatValue) {
            super("onTokenSelected", OneExecutionStateStrategy.class);
            this.token = tokenDetailed;
            this.rate = fiatValue;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onTokenSelected(this.token, this.rate);
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$ShowToastCommand */
    /* loaded from: classes6.dex */
    public class ShowToastCommand extends ViewCommand<WalletSelectTokenView> {
        public final String text;

        ShowToastCommand(WalletSelectTokenView$$State walletSelectTokenView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.showToast(this.text);
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSelectTokenView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSelectTokenView$$State walletSelectTokenView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$ShowErrorToastCommand */
    /* loaded from: classes6.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletSelectTokenView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletSelectTokenView$$State walletSelectTokenView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnNoInternetErrorStateCommand */
    /* loaded from: classes6.dex */
    public class OnNoInternetErrorStateCommand extends ViewCommand<WalletSelectTokenView> {
        OnNoInternetErrorStateCommand(WalletSelectTokenView$$State walletSelectTokenView$$State) {
            super("onNoInternetErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onNoInternetErrorState();
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnUnexpectedErrorStateCommand */
    /* loaded from: classes6.dex */
    public class OnUnexpectedErrorStateCommand extends ViewCommand<WalletSelectTokenView> {
        OnUnexpectedErrorStateCommand(WalletSelectTokenView$$State walletSelectTokenView$$State) {
            super("onUnexpectedErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onUnexpectedErrorState();
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnLoadingStateCommand */
    /* loaded from: classes6.dex */
    public class OnLoadingStateCommand extends ViewCommand<WalletSelectTokenView> {
        OnLoadingStateCommand(WalletSelectTokenView$$State walletSelectTokenView$$State) {
            super("onLoadingState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onLoadingState();
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnEmptyStateCommand */
    /* loaded from: classes6.dex */
    public class OnEmptyStateCommand extends ViewCommand<WalletSelectTokenView> {
        OnEmptyStateCommand(WalletSelectTokenView$$State walletSelectTokenView$$State) {
            super("onEmptyState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onEmptyState();
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes6.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<WalletSelectTokenView> {
        public final List<SelectableTokenItem> items;

        OnLoadMoreItemsCommand(WalletSelectTokenView$$State walletSelectTokenView$$State, List<SelectableTokenItem> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes6.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<WalletSelectTokenView> {
        OnLoadMoreCompleteCommand(WalletSelectTokenView$$State walletSelectTokenView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onLoadMoreComplete();
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes6.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<WalletSelectTokenView> {
        OnLoadMoreErrorCommand(WalletSelectTokenView$$State walletSelectTokenView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onLoadMoreError();
        }
    }
}
