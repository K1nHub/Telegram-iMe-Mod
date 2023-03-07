package com.smedialink.p031ui.wallet.crypto.enter.pin;

import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State */
/* loaded from: classes3.dex */
public class EnterWalletPinView$$State extends MvpViewState<EnterWalletPinView> implements EnterWalletPinView {
    @Override // com.smedialink.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
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

    @Override // com.smedialink.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
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

    @Override // com.smedialink.p031ui.wallet.crypto.enter.pin.EnterWalletPinView
    public void redirectScreenToPasswordEnter() {
        RedirectScreenToPasswordEnterCommand redirectScreenToPasswordEnterCommand = new RedirectScreenToPasswordEnterCommand(this);
        this.viewCommands.beforeApply(redirectScreenToPasswordEnterCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.redirectScreenToPasswordEnter();
        }
        this.viewCommands.afterApply(redirectScreenToPasswordEnterCommand);
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

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$OnSuccessEnterPinCodeCommand */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$OnPinCodeErrorShakeCommand */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$RedirectScreenToPasswordEnterCommand */
    /* loaded from: classes3.dex */
    public class RedirectScreenToPasswordEnterCommand extends ViewCommand<EnterWalletPinView> {
        RedirectScreenToPasswordEnterCommand(EnterWalletPinView$$State enterWalletPinView$$State) {
            super("redirectScreenToPasswordEnter", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(EnterWalletPinView enterWalletPinView) {
            enterWalletPinView.redirectScreenToPasswordEnter();
        }
    }

    /* compiled from: EnterWalletPinView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$ShowToastCommand */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.enter.pin.EnterWalletPinView$$State$ShowLoadingDialogCommand */
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
}
