package com.iMe.p032ui.wallet.crypto.create.pin;

import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State */
/* loaded from: classes3.dex */
public class CreateWalletPinView$$State extends MvpViewState<CreateWalletPinView> implements CreateWalletPinView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.crypto.create.pin.CreateWalletPinView
    public void goToBackUpTutorial(String str, String str2, String str3) {
        GoToBackUpTutorialCommand goToBackUpTutorialCommand = new GoToBackUpTutorialCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(goToBackUpTutorialCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.goToBackUpTutorial(str, str2, str3);
        }
        this.viewCommands.afterApply(goToBackUpTutorialCommand);
    }

    @Override // com.iMe.p032ui.wallet.crypto.create.pin.CreateWalletPinView
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

    @Override // com.iMe.p032ui.wallet.crypto.create.pin.CreateWalletPinView
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

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    /* compiled from: CreateWalletPinView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.pin.CreateWalletPinView$$State$GoToBackUpTutorialCommand */
    /* loaded from: classes3.dex */
    public class GoToBackUpTutorialCommand extends ViewCommand<CreateWalletPinView> {
        public final String password;
        public final String pin;
        public final String seed;

        GoToBackUpTutorialCommand(CreateWalletPinView$$State createWalletPinView$$State, String str, String str2, String str3) {
            super("goToBackUpTutorial", OneExecutionStateStrategy.class);
            this.password = str;
            this.pin = str2;
            this.seed = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPinView createWalletPinView) {
            createWalletPinView.goToBackUpTutorial(this.password, this.pin, this.seed);
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
}
