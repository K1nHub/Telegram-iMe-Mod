package com.iMe.p031ui.wallet.swap.token;

import com.iMe.model.wallet.select.SelectableTokenItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State */
/* loaded from: classes4.dex */
public class WalletSelectTokenView$$State extends MvpViewState<WalletSelectTokenView> implements WalletSelectTokenView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onEmptyState() {
        GlobalStateView.CC.$default$onEmptyState(this);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onNoInternetErrorState() {
        GlobalStateView.CC.$default$onNoInternetErrorState(this);
    }

    @Override // com.iMe.p031ui.custom.state.GlobalStateView
    public /* synthetic */ void onUnexpectedErrorState() {
        GlobalStateView.CC.$default$onUnexpectedErrorState(this);
    }

    @Override // com.iMe.p031ui.wallet.swap.token.WalletSelectTokenView
    public void onTokensLoaded(List<SelectableTokenItem> list) {
        OnTokensLoadedCommand onTokensLoadedCommand = new OnTokensLoadedCommand(this, list);
        this.viewCommands.beforeApply(onTokensLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTokensLoaded(list);
        }
        this.viewCommands.afterApply(onTokensLoadedCommand);
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

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnTokensLoadedCommand */
    /* loaded from: classes4.dex */
    public class OnTokensLoadedCommand extends ViewCommand<WalletSelectTokenView> {
        public final List<SelectableTokenItem> tokens;

        OnTokensLoadedCommand(WalletSelectTokenView$$State walletSelectTokenView$$State, List<SelectableTokenItem> list) {
            super("onTokensLoaded", AddToEndSingleStrategy.class);
            this.tokens = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onTokensLoaded(this.tokens);
        }
    }

    /* compiled from: WalletSelectTokenView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
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
    /* renamed from: com.iMe.ui.wallet.swap.token.WalletSelectTokenView$$State$OnLoadingStateCommand */
    /* loaded from: classes4.dex */
    public class OnLoadingStateCommand extends ViewCommand<WalletSelectTokenView> {
        OnLoadingStateCommand(WalletSelectTokenView$$State walletSelectTokenView$$State) {
            super("onLoadingState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSelectTokenView walletSelectTokenView) {
            walletSelectTokenView.onLoadingState();
        }
    }
}
