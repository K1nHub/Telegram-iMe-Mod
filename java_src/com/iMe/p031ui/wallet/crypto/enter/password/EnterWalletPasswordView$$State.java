package com.iMe.p031ui.wallet.crypto.enter.password;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State */
/* loaded from: classes6.dex */
public class EnterWalletPasswordView$$State extends MvpViewState<EnterWalletPasswordView> implements EnterWalletPasswordView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void onSuccessDeleteWallet() {
        OnSuccessDeleteWalletCommand onSuccessDeleteWalletCommand = new OnSuccessDeleteWalletCommand(this);
        this.viewCommands.beforeApply(onSuccessDeleteWalletCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessDeleteWallet();
        }
        this.viewCommands.afterApply(onSuccessDeleteWalletCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void onSuccessUnlockWallet(String str, String str2) {
        OnSuccessUnlockWalletCommand onSuccessUnlockWalletCommand = new OnSuccessUnlockWalletCommand(this, str, str2);
        this.viewCommands.beforeApply(onSuccessUnlockWalletCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessUnlockWallet(str, str2);
        }
        this.viewCommands.afterApply(onSuccessUnlockWalletCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void onWalletPinCodeError() {
        OnWalletPinCodeErrorCommand onWalletPinCodeErrorCommand = new OnWalletPinCodeErrorCommand(this);
        this.viewCommands.beforeApply(onWalletPinCodeErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onWalletPinCodeError();
        }
        this.viewCommands.afterApply(onWalletPinCodeErrorCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void showRestoreWalletScreen(String str) {
        ShowRestoreWalletScreenCommand showRestoreWalletScreenCommand = new ShowRestoreWalletScreenCommand(this, str);
        this.viewCommands.beforeApply(showRestoreWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRestoreWalletScreen(str);
        }
        this.viewCommands.afterApply(showRestoreWalletScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.enter.password.EnterWalletPasswordView
    public void showDeleteWalletDialog(DialogModel dialogModel) {
        ShowDeleteWalletDialogCommand showDeleteWalletDialogCommand = new ShowDeleteWalletDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showDeleteWalletDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showDeleteWalletDialog(dialogModel);
        }
        this.viewCommands.afterApply(showDeleteWalletDialogCommand);
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

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$OnSuccessDeleteWalletCommand */
    /* loaded from: classes6.dex */
    public class OnSuccessDeleteWalletCommand extends ViewCommand<EnterWalletPasswordView> {
        OnSuccessDeleteWalletCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State) {
            super("onSuccessDeleteWallet", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.onSuccessDeleteWallet();
        }
    }

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$OnSuccessUnlockWalletCommand */
    /* loaded from: classes6.dex */
    public class OnSuccessUnlockWalletCommand extends ViewCommand<EnterWalletPasswordView> {
        public final String guid;
        public final String password;

        OnSuccessUnlockWalletCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State, String str, String str2) {
            super("onSuccessUnlockWallet", OneExecutionStateStrategy.class);
            this.password = str;
            this.guid = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.onSuccessUnlockWallet(this.password, this.guid);
        }
    }

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$OnWalletPinCodeErrorCommand */
    /* loaded from: classes6.dex */
    public class OnWalletPinCodeErrorCommand extends ViewCommand<EnterWalletPasswordView> {
        OnWalletPinCodeErrorCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State) {
            super("onWalletPinCodeError", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.onWalletPinCodeError();
        }
    }

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$ShowRestoreWalletScreenCommand */
    /* loaded from: classes6.dex */
    public class ShowRestoreWalletScreenCommand extends ViewCommand<EnterWalletPasswordView> {
        public final String walletAddress;

        ShowRestoreWalletScreenCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State, String str) {
            super("showRestoreWalletScreen", OneExecutionStateStrategy.class);
            this.walletAddress = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.showRestoreWalletScreen(this.walletAddress);
        }
    }

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$ShowDeleteWalletDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowDeleteWalletDialogCommand extends ViewCommand<EnterWalletPasswordView> {
        public final DialogModel dialogModel;

        ShowDeleteWalletDialogCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State, DialogModel dialogModel) {
            super("showDeleteWalletDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.showDeleteWalletDialog(this.dialogModel);
        }
    }

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$ShowToastCommand */
    /* loaded from: classes6.dex */
    public class ShowToastCommand extends ViewCommand<EnterWalletPasswordView> {
        public final String text;

        ShowToastCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.showToast(this.text);
        }
    }

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<EnterWalletPasswordView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: EnterWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.password.EnterWalletPasswordView$$State$ShowErrorToastCommand */
    /* loaded from: classes6.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<EnterWalletPasswordView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(EnterWalletPasswordView$$State enterWalletPasswordView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPasswordView enterWalletPasswordView) {
            enterWalletPasswordView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
