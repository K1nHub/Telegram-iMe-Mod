package com.iMe.p030ui.wallet.crypto.enter.pin;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State */
/* loaded from: classes3.dex */
public class EnterWalletPinView$$State extends MvpViewState<EnterWalletPinView> implements EnterWalletPinView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void updateLoadingState(boolean z, boolean z2) {
        UpdateLoadingStateCommand updateLoadingStateCommand = new UpdateLoadingStateCommand(this, z, z2);
        this.viewCommands.beforeApply(updateLoadingStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateLoadingState(z, z2);
        }
        this.viewCommands.afterApply(updateLoadingStateCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void onSuccessEnterPinCode(String str, String str2) {
        OnSuccessEnterPinCodeCommand onSuccessEnterPinCodeCommand = new OnSuccessEnterPinCodeCommand(this, str, str2);
        this.viewCommands.beforeApply(onSuccessEnterPinCodeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessEnterPinCode(str, str2);
        }
        this.viewCommands.afterApply(onSuccessEnterPinCodeCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void onPinCodeErrorShake() {
        OnPinCodeErrorShakeCommand onPinCodeErrorShakeCommand = new OnPinCodeErrorShakeCommand(this);
        this.viewCommands.beforeApply(onPinCodeErrorShakeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onPinCodeErrorShake();
        }
        this.viewCommands.afterApply(onPinCodeErrorShakeCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void onDeleteWalletSuccess() {
        OnDeleteWalletSuccessCommand onDeleteWalletSuccessCommand = new OnDeleteWalletSuccessCommand(this);
        this.viewCommands.beforeApply(onDeleteWalletSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onDeleteWalletSuccess();
        }
        this.viewCommands.afterApply(onDeleteWalletSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void openPasswordEnterScreen() {
        OpenPasswordEnterScreenCommand openPasswordEnterScreenCommand = new OpenPasswordEnterScreenCommand(this);
        this.viewCommands.beforeApply(openPasswordEnterScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openPasswordEnterScreen();
        }
        this.viewCommands.afterApply(openPasswordEnterScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void openRestoreWalletScreen(String str) {
        OpenRestoreWalletScreenCommand openRestoreWalletScreenCommand = new OpenRestoreWalletScreenCommand(this, str);
        this.viewCommands.beforeApply(openRestoreWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openRestoreWalletScreen(str);
        }
        this.viewCommands.afterApply(openRestoreWalletScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void showForgotPasswordOptionsDialog() {
        ShowForgotPasswordOptionsDialogCommand showForgotPasswordOptionsDialogCommand = new ShowForgotPasswordOptionsDialogCommand(this);
        this.viewCommands.beforeApply(showForgotPasswordOptionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showForgotPasswordOptionsDialog();
        }
        this.viewCommands.afterApply(showForgotPasswordOptionsDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.enter.pin.EnterWalletPinView
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

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$UpdateLoadingStateCommand */
    /* loaded from: classes3.dex */
    public class UpdateLoadingStateCommand extends ViewCommand<EnterWalletPinView> {
        public final boolean isFingerprint;
        public final boolean isLoading;

        UpdateLoadingStateCommand(EnterWalletPinView$$State enterWalletPinView$$State, boolean z, boolean z2) {
            super("updateLoadingState", OneExecutionStateStrategy.class);
            this.isLoading = z;
            this.isFingerprint = z2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.updateLoadingState(this.isLoading, this.isFingerprint);
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessEnterPinCodeCommand extends ViewCommand<EnterWalletPinView> {
        public final String password;
        public final String pin;

        OnSuccessEnterPinCodeCommand(EnterWalletPinView$$State enterWalletPinView$$State, String str, String str2) {
            super("onSuccessEnterPinCode", OneExecutionStateStrategy.class);
            this.pin = str;
            this.password = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.onSuccessEnterPinCode(this.pin, this.password);
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$OnPinCodeErrorShakeCommand */
    /* loaded from: classes3.dex */
    public class OnPinCodeErrorShakeCommand extends ViewCommand<EnterWalletPinView> {
        OnPinCodeErrorShakeCommand(EnterWalletPinView$$State enterWalletPinView$$State) {
            super("onPinCodeErrorShake", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.onPinCodeErrorShake();
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$OnDeleteWalletSuccessCommand */
    /* loaded from: classes3.dex */
    public class OnDeleteWalletSuccessCommand extends ViewCommand<EnterWalletPinView> {
        OnDeleteWalletSuccessCommand(EnterWalletPinView$$State enterWalletPinView$$State) {
            super("onDeleteWalletSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.onDeleteWalletSuccess();
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$OpenPasswordEnterScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenPasswordEnterScreenCommand extends ViewCommand<EnterWalletPinView> {
        OpenPasswordEnterScreenCommand(EnterWalletPinView$$State enterWalletPinView$$State) {
            super("openPasswordEnterScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.openPasswordEnterScreen();
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$OpenRestoreWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenRestoreWalletScreenCommand extends ViewCommand<EnterWalletPinView> {
        public final String walletAddress;

        OpenRestoreWalletScreenCommand(EnterWalletPinView$$State enterWalletPinView$$State, String str) {
            super("openRestoreWalletScreen", OneExecutionStateStrategy.class);
            this.walletAddress = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.openRestoreWalletScreen(this.walletAddress);
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$ShowForgotPasswordOptionsDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowForgotPasswordOptionsDialogCommand extends ViewCommand<EnterWalletPinView> {
        ShowForgotPasswordOptionsDialogCommand(EnterWalletPinView$$State enterWalletPinView$$State) {
            super("showForgotPasswordOptionsDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.showForgotPasswordOptionsDialog();
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$ShowDeleteWalletDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowDeleteWalletDialogCommand extends ViewCommand<EnterWalletPinView> {
        public final DialogModel dialogModel;

        ShowDeleteWalletDialogCommand(EnterWalletPinView$$State enterWalletPinView$$State, DialogModel dialogModel) {
            super("showDeleteWalletDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.showDeleteWalletDialog(this.dialogModel);
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<EnterWalletPinView> {
        public final String text;

        ShowToastCommand(EnterWalletPinView$$State enterWalletPinView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.showToast(this.text);
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<EnterWalletPinView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(EnterWalletPinView$$State enterWalletPinView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<EnterWalletPinView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(EnterWalletPinView$$State enterWalletPinView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
