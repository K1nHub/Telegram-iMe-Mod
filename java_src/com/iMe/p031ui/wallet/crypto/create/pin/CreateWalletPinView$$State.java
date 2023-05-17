package com.iMe.p031ui.wallet.crypto.create.pin;

import com.iMe.p031ui.base.mvp.base.BaseView;
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
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void goToBackUpTutorial(String str, String str2, Wallet wallet2) {
        GoToBackUpTutorialCommand goToBackUpTutorialCommand = new GoToBackUpTutorialCommand(this, str, str2, wallet2);
        this.viewCommands.beforeApply(goToBackUpTutorialCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.goToBackUpTutorial(str, str2, wallet2);
        }
        this.viewCommands.afterApply(goToBackUpTutorialCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onSuccessCreateWallet() {
        OnSuccessCreateWalletCommand onSuccessCreateWalletCommand = new OnSuccessCreateWalletCommand(this);
        this.viewCommands.beforeApply(onSuccessCreateWalletCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessCreateWallet();
        }
        this.viewCommands.afterApply(onSuccessCreateWalletCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.pin.CreateWalletPinView
    public void onCodeErrorShake() {
        OnCodeErrorShakeCommand onCodeErrorShakeCommand = new OnCodeErrorShakeCommand(this);
        this.viewCommands.beforeApply(onCodeErrorShakeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onCodeErrorShake();
        }
        this.viewCommands.afterApply(onCodeErrorShakeCommand);
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

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$GoToBackUpTutorialCommand */
    /* loaded from: classes3.dex */
    public class GoToBackUpTutorialCommand extends ViewCommand<CreateWalletPinView> {
        public final String password;
        public final String pin;

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f1845wallet;

        GoToBackUpTutorialCommand(CreateWalletPinView$$State createWalletPinView$$State, String str, String str2, Wallet wallet2) {
            super("goToBackUpTutorial", OneExecutionStateStrategy.class);
            this.password = str;
            this.pin = str2;
            this.f1845wallet = wallet2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.goToBackUpTutorial(this.password, this.pin, this.f1845wallet);
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$OnSuccessCreateWalletCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessCreateWalletCommand extends ViewCommand<CreateWalletPinView> {
        OnSuccessCreateWalletCommand(CreateWalletPinView$$State createWalletPinView$$State) {
            super("onSuccessCreateWallet", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.onSuccessCreateWallet();
        }
    }

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$OnCodeErrorShakeCommand */
    /* loaded from: classes3.dex */
    public class OnCodeErrorShakeCommand extends ViewCommand<CreateWalletPinView> {
        OnCodeErrorShakeCommand(CreateWalletPinView$$State createWalletPinView$$State) {
            super("onCodeErrorShake", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.onCodeErrorShake();
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
