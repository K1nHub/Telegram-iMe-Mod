package com.iMe.feature.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.LoadMoreView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* loaded from: classes3.dex */
public class TwitterView$$State extends MvpViewState<TwitterView> implements TwitterView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    @Override // com.iMe.feature.twitter.TwitterView
    public void openBrowserUrl(String str) {
        OpenBrowserUrlCommand openBrowserUrlCommand = new OpenBrowserUrlCommand(this, str);
        this.viewCommands.beforeApply(openBrowserUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBrowserUrl(str);
        }
        this.viewCommands.afterApply(openBrowserUrlCommand);
    }

    @Override // com.iMe.feature.twitter.TwitterView
    public void shareLink(String str) {
        ShareLinkCommand shareLinkCommand = new ShareLinkCommand(this, str);
        this.viewCommands.beforeApply(shareLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.shareLink(str);
        }
        this.viewCommands.afterApply(shareLinkCommand);
    }

    @Override // com.iMe.feature.twitter.TwitterView
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

    @Override // com.iMe.feature.twitter.TwitterView
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

    @Override // com.iMe.feature.twitter.TwitterView
    public void showResetTwitterDialog(DialogModel dialogModel) {
        ShowResetTwitterDialogCommand showResetTwitterDialogCommand = new ShowResetTwitterDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showResetTwitterDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showResetTwitterDialog(dialogModel);
        }
        this.viewCommands.afterApply(showResetTwitterDialogCommand);
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void finishScreen() {
        FinishScreenCommand finishScreenCommand = new FinishScreenCommand(this);
        this.viewCommands.beforeApply(finishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.finishScreen();
        }
        this.viewCommands.afterApply(finishScreenCommand);
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

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class OpenBrowserUrlCommand extends ViewCommand<TwitterView> {
        public final String url;

        OpenBrowserUrlCommand(TwitterView$$State twitterView$$State, String str) {
            super("openBrowserUrl", OneExecutionStateStrategy.class);
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.openBrowserUrl(this.url);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class ShareLinkCommand extends ViewCommand<TwitterView> {
        public final String url;

        ShareLinkCommand(TwitterView$$State twitterView$$State, String str) {
            super("shareLink", OneExecutionStateStrategy.class);
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.shareLink(this.url);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class RenderInitialItemsCommand extends ViewCommand<TwitterView> {
        public final List<BaseNode> items;

        RenderInitialItemsCommand(TwitterView$$State twitterView$$State, List<BaseNode> list) {
            super("renderInitialItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.renderInitialItems(this.items);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class RenderItemsCommand extends ViewCommand<TwitterView> {
        public final List<BaseNode> items;

        RenderItemsCommand(TwitterView$$State twitterView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.renderItems(this.items);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowResetTwitterDialogCommand extends ViewCommand<TwitterView> {
        public final DialogModel dialogModel;

        ShowResetTwitterDialogCommand(TwitterView$$State twitterView$$State, DialogModel dialogModel) {
            super("showResetTwitterDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.showResetTwitterDialog(this.dialogModel);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<TwitterView> {
        public final String text;

        ShowToastCommand(TwitterView$$State twitterView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.showToast(this.text);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<TwitterView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(TwitterView$$State twitterView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<TwitterView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(TwitterView$$State twitterView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class FinishScreenCommand extends ViewCommand<TwitterView> {
        FinishScreenCommand(TwitterView$$State twitterView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.finishScreen();
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<TwitterView> {
        public final List<BaseNode> items;

        OnLoadMoreItemsCommand(TwitterView$$State twitterView$$State, List<BaseNode> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<TwitterView> {
        OnLoadMoreCompleteCommand(TwitterView$$State twitterView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.onLoadMoreComplete();
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<TwitterView> {
        OnLoadMoreErrorCommand(TwitterView$$State twitterView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.onLoadMoreError();
        }
    }

    /* compiled from: TwitterView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowRefreshingCommand extends ViewCommand<TwitterView> {
        public final boolean show;

        ShowRefreshingCommand(TwitterView$$State twitterView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterView twitterView) {
            twitterView.showRefreshing(this.show);
        }
    }
}
