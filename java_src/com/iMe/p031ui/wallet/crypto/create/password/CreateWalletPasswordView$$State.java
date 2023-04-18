package com.iMe.p031ui.wallet.crypto.create.password;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView$$State */
/* loaded from: classes3.dex */
public class CreateWalletPasswordView$$State extends MvpViewState<CreateWalletPasswordView> implements CreateWalletPasswordView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.create.password.CreateWalletPasswordView
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

    @Override // com.iMe.p031ui.wallet.crypto.create.password.CreateWalletPasswordView
    public void onPasswordMatch(String str) {
        OnPasswordMatchCommand onPasswordMatchCommand = new OnPasswordMatchCommand(this, str);
        this.viewCommands.beforeApply(onPasswordMatchCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onPasswordMatch(str);
        }
        this.viewCommands.afterApply(onPasswordMatchCommand);
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

    /* compiled from: CreateWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView$$State$OnCodeErrorShakeCommand */
    /* loaded from: classes3.dex */
    public class OnCodeErrorShakeCommand extends ViewCommand<CreateWalletPasswordView> {
        OnCodeErrorShakeCommand(CreateWalletPasswordView$$State createWalletPasswordView$$State) {
            super("onCodeErrorShake", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPasswordView createWalletPasswordView) {
            createWalletPasswordView.onCodeErrorShake();
        }
    }

    /* compiled from: CreateWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView$$State$OnPasswordMatchCommand */
    /* loaded from: classes3.dex */
    public class OnPasswordMatchCommand extends ViewCommand<CreateWalletPasswordView> {
        public final String password;

        OnPasswordMatchCommand(CreateWalletPasswordView$$State createWalletPasswordView$$State, String str) {
            super("onPasswordMatch", OneExecutionStateStrategy.class);
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPasswordView createWalletPasswordView) {
            createWalletPasswordView.onPasswordMatch(this.password);
        }
    }

    /* compiled from: CreateWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CreateWalletPasswordView> {
        public final String text;

        ShowToastCommand(CreateWalletPasswordView$$State createWalletPasswordView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPasswordView createWalletPasswordView) {
            createWalletPasswordView.showToast(this.text);
        }
    }

    /* compiled from: CreateWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CreateWalletPasswordView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CreateWalletPasswordView$$State createWalletPasswordView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPasswordView createWalletPasswordView) {
            createWalletPasswordView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CreateWalletPasswordView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.password.CreateWalletPasswordView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CreateWalletPasswordView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CreateWalletPasswordView$$State createWalletPasswordView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletPasswordView createWalletPasswordView) {
            createWalletPasswordView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
