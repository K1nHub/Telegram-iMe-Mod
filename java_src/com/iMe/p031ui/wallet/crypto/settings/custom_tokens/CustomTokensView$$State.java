package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State */
/* loaded from: classes4.dex */
public class CustomTokensView$$State extends MvpViewState<CustomTokensView> implements CustomTokensView {
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

    @Override // com.iMe.p031ui.wallet.crypto.settings.custom_tokens.CustomTokensView
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

    @Override // com.iMe.p031ui.wallet.crypto.settings.custom_tokens.CustomTokensView
    public void openTokenManagementScreen(TokenManagementFragment.ScreenType screenType) {
        OpenTokenManagementScreenCommand openTokenManagementScreenCommand = new OpenTokenManagementScreenCommand(this, screenType);
        this.viewCommands.beforeApply(openTokenManagementScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTokenManagementScreen(screenType);
        }
        this.viewCommands.afterApply(openTokenManagementScreenCommand);
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

    /* compiled from: CustomTokensView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State$RenderItemsCommand */
    /* loaded from: classes4.dex */
    public class RenderItemsCommand extends ViewCommand<CustomTokensView> {
        public final List<BaseNode> items;

        RenderItemsCommand(CustomTokensView$$State customTokensView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CustomTokensView customTokensView) {
            customTokensView.renderItems(this.items);
        }
    }

    /* compiled from: CustomTokensView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State$OpenTokenManagementScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenTokenManagementScreenCommand extends ViewCommand<CustomTokensView> {
        public final TokenManagementFragment.ScreenType screenType;

        OpenTokenManagementScreenCommand(CustomTokensView$$State customTokensView$$State, TokenManagementFragment.ScreenType screenType) {
            super("openTokenManagementScreen", OneExecutionStateStrategy.class);
            this.screenType = screenType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CustomTokensView customTokensView) {
            customTokensView.openTokenManagementScreen(this.screenType);
        }
    }

    /* compiled from: CustomTokensView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<CustomTokensView> {
        public final String text;

        ShowToastCommand(CustomTokensView$$State customTokensView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CustomTokensView customTokensView) {
            customTokensView.showToast(this.text);
        }
    }

    /* compiled from: CustomTokensView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CustomTokensView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CustomTokensView$$State customTokensView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CustomTokensView customTokensView) {
            customTokensView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CustomTokensView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CustomTokensView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CustomTokensView$$State customTokensView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CustomTokensView customTokensView) {
            customTokensView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: CustomTokensView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<CustomTokensView> {
        public final List<BaseNode> items;

        OnLoadMoreItemsCommand(CustomTokensView$$State customTokensView$$State, List<BaseNode> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CustomTokensView customTokensView) {
            customTokensView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: CustomTokensView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<CustomTokensView> {
        OnLoadMoreCompleteCommand(CustomTokensView$$State customTokensView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CustomTokensView customTokensView) {
            customTokensView.onLoadMoreComplete();
        }
    }
}
