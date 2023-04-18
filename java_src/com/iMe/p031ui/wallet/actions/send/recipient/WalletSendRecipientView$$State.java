package com.iMe.p031ui.wallet.actions.send.recipient;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State */
/* loaded from: classes3.dex */
public class WalletSendRecipientView$$State extends MvpViewState<WalletSendRecipientView> implements WalletSendRecipientView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
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

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$OnRecipientSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnRecipientSelectedCommand extends ViewCommand<WalletSendRecipientView> {
        public final String address;
        public final boolean contactSelected;

        /* renamed from: id */
        public final String f377id;

        OnRecipientSelectedCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, String str, String str2, boolean z) {
            super("onRecipientSelected", OneExecutionStateStrategy.class);
            this.f377id = str;
            this.address = str2;
            this.contactSelected = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.onRecipientSelected(this.f377id, this.address, this.contactSelected);
        }
    }

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$ShowRequestPermissionDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowRequestPermissionDialogCommand extends ViewCommand<WalletSendRecipientView> {
        public final Callbacks$Callback action;
        public final DialogModel model;
        public final String recipient;

        ShowRequestPermissionDialogCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showRequestPermissionDialog", OneExecutionStateStrategy.class);
            this.recipient = str;
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.showRequestPermissionDialog(this.recipient, this.model, this.action);
        }
    }

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$ShowErrorDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorDialogCommand extends ViewCommand<WalletSendRecipientView> {
        public final String buttonText;
        public final String description;
        public final String title;

        ShowErrorDialogCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, String str, String str2, String str3) {
            super("showErrorDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.description = str2;
            this.buttonText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.showErrorDialog(this.title, this.description, this.buttonText);
        }
    }

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$ShowRequestPermissionSuccessDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowRequestPermissionSuccessDialogCommand extends ViewCommand<WalletSendRecipientView> {
        public final Callbacks$Callback action;
        public final String message;
        public final String title;

        ShowRequestPermissionSuccessDialogCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, String str, String str2, Callbacks$Callback callbacks$Callback) {
            super("showRequestPermissionSuccessDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.showRequestPermissionSuccessDialog(this.title, this.message, this.action);
        }
    }

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$OpenChatScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenChatScreenCommand extends ViewCommand<WalletSendRecipientView> {
        public final long userId;

        OpenChatScreenCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, long j) {
            super("openChatScreen", OneExecutionStateStrategy.class);
            this.userId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.openChatScreen(this.userId);
        }
    }

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletSendRecipientView> {
        public final String text;

        ShowToastCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.showToast(this.text);
        }
    }

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSendRecipientView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSendRecipientView$$State.java */
    /* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletSendRecipientView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletSendRecipientView$$State walletSendRecipientView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendRecipientView walletSendRecipientView) {
            walletSendRecipientView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
