package com.iMe.p030ui.wallet.crypto.address_mismatch;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchView$$State */
/* loaded from: classes3.dex */
public class AddressMismatchView$$State extends MvpViewState<AddressMismatchView> implements AddressMismatchView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.address_mismatch.AddressMismatchView
    public void closeScreen(long j) {
        CloseScreenCommand closeScreenCommand = new CloseScreenCommand(this, j);
        this.viewCommands.beforeApply(closeScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.closeScreen(j);
        }
        this.viewCommands.afterApply(closeScreenCommand);
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

    /* compiled from: AddressMismatchView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchView$$State$CloseScreenCommand */
    /* loaded from: classes3.dex */
    public class CloseScreenCommand extends ViewCommand<AddressMismatchView> {
        public final long delay;

        CloseScreenCommand(AddressMismatchView$$State addressMismatchView$$State, long j) {
            super("closeScreen", AddToEndSingleStrategy.class);
            this.delay = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(AddressMismatchView addressMismatchView) {
            addressMismatchView.closeScreen(this.delay);
        }
    }

    /* compiled from: AddressMismatchView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<AddressMismatchView> {
        public final String text;

        ShowToastCommand(AddressMismatchView$$State addressMismatchView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(AddressMismatchView addressMismatchView) {
            addressMismatchView.showToast(this.text);
        }
    }

    /* compiled from: AddressMismatchView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<AddressMismatchView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(AddressMismatchView$$State addressMismatchView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(AddressMismatchView addressMismatchView) {
            addressMismatchView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: AddressMismatchView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<AddressMismatchView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(AddressMismatchView$$State addressMismatchView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(AddressMismatchView addressMismatchView) {
            addressMismatchView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
