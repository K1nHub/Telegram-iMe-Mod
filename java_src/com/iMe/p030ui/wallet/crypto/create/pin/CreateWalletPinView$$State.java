package com.iMe.p030ui.wallet.crypto.create.pin;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State */
/* loaded from: classes3.dex */
public class CreateWalletPinView$$State extends MvpViewState<CreateWalletPinView> implements CreateWalletPinView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onWalletCreateSuccess(String str, String str2, Wallet wallet2) {
        OnWalletCreateSuccessCommand onWalletCreateSuccessCommand = new OnWalletCreateSuccessCommand(this, str, str2, wallet2);
        this.viewCommands.beforeApply(onWalletCreateSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onWalletCreateSuccess(str, str2, wallet2);
        }
        this.viewCommands.afterApply(onWalletCreateSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onWalletImportSuccess() {
        OnWalletImportSuccessCommand onWalletImportSuccessCommand = new OnWalletImportSuccessCommand(this);
        this.viewCommands.beforeApply(onWalletImportSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onWalletImportSuccess();
        }
        this.viewCommands.afterApply(onWalletImportSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onWalletPinCodeChangeSuccess() {
        OnWalletPinCodeChangeSuccessCommand onWalletPinCodeChangeSuccessCommand = new OnWalletPinCodeChangeSuccessCommand(this);
        this.viewCommands.beforeApply(onWalletPinCodeChangeSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onWalletPinCodeChangeSuccess();
        }
        this.viewCommands.afterApply(onWalletPinCodeChangeSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.pin.CreateWalletPinView
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

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$OnWalletCreateSuccessCommand */
    /* loaded from: classes3.dex */
    public class OnWalletCreateSuccessCommand extends ViewCommand<CreateWalletPinView> {
        public final String password;
        public final String pin;

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f2182wallet;

        OnWalletCreateSuccessCommand(CreateWalletPinView$$State createWalletPinView$$State, String str, String str2, Wallet wallet2) {
            super("onWalletCreateSuccess", OneExecutionStateStrategy.class);
            this.password = str;
            this.pin = str2;
            this.f2182wallet = wallet2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.onWalletCreateSuccess(this.password, this.pin, this.f2182wallet);
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$OnWalletImportSuccessCommand */
    /* loaded from: classes3.dex */
    public class OnWalletImportSuccessCommand extends ViewCommand<CreateWalletPinView> {
        OnWalletImportSuccessCommand(CreateWalletPinView$$State createWalletPinView$$State) {
            super("onWalletImportSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.onWalletImportSuccess();
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$OnWalletPinCodeChangeSuccessCommand */
    /* loaded from: classes3.dex */
    public class OnWalletPinCodeChangeSuccessCommand extends ViewCommand<CreateWalletPinView> {
        OnWalletPinCodeChangeSuccessCommand(CreateWalletPinView$$State createWalletPinView$$State) {
            super("onWalletPinCodeChangeSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.onWalletPinCodeChangeSuccess();
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$OnWalletPinCodeErrorCommand */
    /* loaded from: classes3.dex */
    public class OnWalletPinCodeErrorCommand extends ViewCommand<CreateWalletPinView> {
        OnWalletPinCodeErrorCommand(CreateWalletPinView$$State createWalletPinView$$State) {
            super("onWalletPinCodeError", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.onWalletPinCodeError();
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CreateWalletPinView> {
        public final String text;

        ShowToastCommand(CreateWalletPinView$$State createWalletPinView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.showToast(this.text);
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CreateWalletPinView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CreateWalletPinView$$State createWalletPinView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CreateWalletPinView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CreateWalletPinView$$State createWalletPinView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
