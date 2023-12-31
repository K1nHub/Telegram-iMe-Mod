package com.iMe.feature.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
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
/* loaded from: classes3.dex */
public class TwitterSearchView$$State extends MvpViewState<TwitterSearchView> implements TwitterSearchView {
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

    @Override // com.iMe.feature.twitter.search.TwitterSearchView
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

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void onRecipientSelected(String str, String str2, boolean z) {
        OnRecipientSelectedCommand onRecipientSelectedCommand = new OnRecipientSelectedCommand(this, str, str2, z);
        this.viewCommands.beforeApply(onRecipientSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onRecipientSelected(str, str2, z);
        }
        this.viewCommands.afterApply(onRecipientSelectedCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionDialog(String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowRequestPermissionDialogCommand showRequestPermissionDialogCommand = new ShowRequestPermissionDialogCommand(this, str, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showRequestPermissionDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequestPermissionDialog(str, dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showRequestPermissionDialogCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showErrorDialog(int i, String str, String str2, String str3, Long l) {
        ShowErrorDialogCommand showErrorDialogCommand = new ShowErrorDialogCommand(this, i, str, str2, str3, l);
        this.viewCommands.beforeApply(showErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorDialog(i, str, str2, str3, l);
        }
        this.viewCommands.afterApply(showErrorDialogCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionSuccessDialog(String str, String str2, Callbacks$Callback callbacks$Callback) {
        ShowRequestPermissionSuccessDialogCommand showRequestPermissionSuccessDialogCommand = new ShowRequestPermissionSuccessDialogCommand(this, str, str2, callbacks$Callback);
        this.viewCommands.beforeApply(showRequestPermissionSuccessDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequestPermissionSuccessDialog(str, str2, callbacks$Callback);
        }
        this.viewCommands.afterApply(showRequestPermissionSuccessDialogCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void openChatScreen(long j) {
        OpenChatScreenCommand openChatScreenCommand = new OpenChatScreenCommand(this, j);
        this.viewCommands.beforeApply(openChatScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openChatScreen(j);
        }
        this.viewCommands.afterApply(openChatScreenCommand);
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class RenderItemsCommand extends ViewCommand<TwitterSearchView> {
        public final List<BaseNode> items;

        RenderItemsCommand(TwitterSearchView$$State twitterSearchView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.renderItems(this.items);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<TwitterSearchView> {
        public final String text;

        ShowToastCommand(TwitterSearchView$$State twitterSearchView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showToast(this.text);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<TwitterSearchView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(TwitterSearchView$$State twitterSearchView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<TwitterSearchView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(TwitterSearchView$$State twitterSearchView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<TwitterSearchView> {
        OnLoadMoreCompleteCommand(TwitterSearchView$$State twitterSearchView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.onLoadMoreComplete();
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class OnRecipientSelectedCommand extends ViewCommand<TwitterSearchView> {
        public final String address;

        /* renamed from: id */
        public final String f277id;
        public final boolean isContactSelected;

        OnRecipientSelectedCommand(TwitterSearchView$$State twitterSearchView$$State, String str, String str2, boolean z) {
            super("onRecipientSelected", OneExecutionStateStrategy.class);
            this.f277id = str;
            this.address = str2;
            this.isContactSelected = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.onRecipientSelected(this.f277id, this.address, this.isContactSelected);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowRequestPermissionDialogCommand extends ViewCommand<TwitterSearchView> {
        public final Callbacks$Callback action;
        public final DialogModel model;
        public final String recipient;

        ShowRequestPermissionDialogCommand(TwitterSearchView$$State twitterSearchView$$State, String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showRequestPermissionDialog", OneExecutionStateStrategy.class);
            this.recipient = str;
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showRequestPermissionDialog(this.recipient, this.model, this.action);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowErrorDialogCommand extends ViewCommand<TwitterSearchView> {
        public final int animatedIcon;
        public final String buttonText;
        public final String description;
        public final Long recipientId;
        public final String title;

        ShowErrorDialogCommand(TwitterSearchView$$State twitterSearchView$$State, int i, String str, String str2, String str3, Long l) {
            super("showErrorDialog", OneExecutionStateStrategy.class);
            this.animatedIcon = i;
            this.title = str;
            this.description = str2;
            this.buttonText = str3;
            this.recipientId = l;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showErrorDialog(this.animatedIcon, this.title, this.description, this.buttonText, this.recipientId);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class ShowRequestPermissionSuccessDialogCommand extends ViewCommand<TwitterSearchView> {
        public final Callbacks$Callback action;
        public final String message;
        public final String title;

        ShowRequestPermissionSuccessDialogCommand(TwitterSearchView$$State twitterSearchView$$State, String str, String str2, Callbacks$Callback callbacks$Callback) {
            super("showRequestPermissionSuccessDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showRequestPermissionSuccessDialog(this.title, this.message, this.action);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* loaded from: classes3.dex */
    public class OpenChatScreenCommand extends ViewCommand<TwitterSearchView> {
        public final long userId;

        OpenChatScreenCommand(TwitterSearchView$$State twitterSearchView$$State, long j) {
            super("openChatScreen", OneExecutionStateStrategy.class);
            this.userId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.openChatScreen(this.userId);
        }
    }
}
