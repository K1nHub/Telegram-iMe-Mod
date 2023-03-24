package com.smedialink.p031ui.twitter.search;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.twitter.TwitterUserItem;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.fork.utils.Callbacks$Callback;
/* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State */
/* loaded from: classes3.dex */
public class TwitterSearchView$$State extends MvpViewState<TwitterSearchView> implements TwitterSearchView {
    @Override // com.smedialink.p031ui.twitter.search.TwitterSearchView
    public void showInviteConfirmationDialog(DialogModel dialogModel, long j) {
        ShowInviteConfirmationDialogCommand showInviteConfirmationDialogCommand = new ShowInviteConfirmationDialogCommand(this, dialogModel, j);
        this.viewCommands.beforeApply(showInviteConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showInviteConfirmationDialog(dialogModel, j);
        }
        this.viewCommands.afterApply(showInviteConfirmationDialogCommand);
    }

    @Override // com.smedialink.p031ui.twitter.search.TwitterSearchView
    public void onUserSelected(TwitterUserItem twitterUserItem, String str) {
        OnUserSelectedCommand onUserSelectedCommand = new OnUserSelectedCommand(this, twitterUserItem, str);
        this.viewCommands.beforeApply(onUserSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onUserSelected(twitterUserItem, str);
        }
        this.viewCommands.afterApply(onUserSelectedCommand);
    }

    @Override // com.smedialink.p031ui.twitter.search.TwitterSearchView
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

    @Override // com.smedialink.manager.crypto.recipient.CryptoRecipientView
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

    @Override // com.smedialink.manager.crypto.recipient.CryptoRecipientView
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

    @Override // com.smedialink.manager.crypto.recipient.CryptoRecipientView
    public void showErrorDialog(String str, String str2, String str3) {
        ShowErrorDialogCommand showErrorDialogCommand = new ShowErrorDialogCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(showErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorDialog(str, str2, str3);
        }
        this.viewCommands.afterApply(showErrorDialogCommand);
    }

    @Override // com.smedialink.manager.crypto.recipient.CryptoRecipientView
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

    @Override // com.smedialink.manager.crypto.recipient.CryptoRecipientView
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
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$ShowInviteConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowInviteConfirmationDialogCommand extends ViewCommand<TwitterSearchView> {
        public final DialogModel dialogModel;
        public final long twitterUserId;

        ShowInviteConfirmationDialogCommand(TwitterSearchView$$State twitterSearchView$$State, DialogModel dialogModel, long j) {
            super("showInviteConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.twitterUserId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showInviteConfirmationDialog(this.dialogModel, this.twitterUserId);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$OnUserSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnUserSelectedCommand extends ViewCommand<TwitterSearchView> {
        public final String address;
        public final TwitterUserItem twitterUserItem;

        OnUserSelectedCommand(TwitterSearchView$$State twitterSearchView$$State, TwitterUserItem twitterUserItem, String str) {
            super("onUserSelected", AddToEndSingleStrategy.class);
            this.twitterUserItem = twitterUserItem;
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.onUserSelected(this.twitterUserItem, this.address);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$RenderItemsCommand */
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
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$ShowToastCommand */
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
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$ShowLoadingDialogCommand */
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
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$OnLoadMoreCompleteCommand */
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
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<TwitterSearchView> {
        OnLoadMoreErrorCommand(TwitterSearchView$$State twitterSearchView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.onLoadMoreError();
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$OnRecipientSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnRecipientSelectedCommand extends ViewCommand<TwitterSearchView> {
        public final String address;
        public final boolean contactSelected;

        /* renamed from: id */
        public final String f378id;

        OnRecipientSelectedCommand(TwitterSearchView$$State twitterSearchView$$State, String str, String str2, boolean z) {
            super("onRecipientSelected", OneExecutionStateStrategy.class);
            this.f378id = str;
            this.address = str2;
            this.contactSelected = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.onRecipientSelected(this.f378id, this.address, this.contactSelected);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$ShowRequestPermissionDialogCommand */
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
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$ShowErrorDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorDialogCommand extends ViewCommand<TwitterSearchView> {
        public final String buttonText;
        public final String description;
        public final String title;

        ShowErrorDialogCommand(TwitterSearchView$$State twitterSearchView$$State, String str, String str2, String str3) {
            super("showErrorDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.description = str2;
            this.buttonText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TwitterSearchView twitterSearchView) {
            twitterSearchView.showErrorDialog(this.title, this.description, this.buttonText);
        }
    }

    /* compiled from: TwitterSearchView$$State.java */
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$ShowRequestPermissionSuccessDialogCommand */
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
    /* renamed from: com.smedialink.ui.twitter.search.TwitterSearchView$$State$OpenChatScreenCommand */
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
