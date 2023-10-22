package com.iMe.p030ui.wallet.cryptobox.suspension;

import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State */
/* loaded from: classes3.dex */
public class CryptoBoxSuspensionView$$State extends MvpViewState<CryptoBoxSuspensionView> implements CryptoBoxSuspensionView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void showTransactionSuccess() {
        ShowTransactionSuccessCommand showTransactionSuccessCommand = new ShowTransactionSuccessCommand(this);
        this.viewCommands.beforeApply(showTransactionSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTransactionSuccess();
        }
        this.viewCommands.afterApply(showTransactionSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void showTransactionError(String str) {
        ShowTransactionErrorCommand showTransactionErrorCommand = new ShowTransactionErrorCommand(this, str);
        this.viewCommands.beforeApply(showTransactionErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTransactionError(str);
        }
        this.viewCommands.afterApply(showTransactionErrorCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void renderButtonLoading(boolean z) {
        RenderButtonLoadingCommand renderButtonLoadingCommand = new RenderButtonLoadingCommand(this, z);
        this.viewCommands.beforeApply(renderButtonLoadingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderButtonLoading(z);
        }
        this.viewCommands.afterApply(renderButtonLoadingCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView
    public void showFee(FeeType feeType) {
        ShowFeeCommand showFeeCommand = new ShowFeeCommand(this, feeType);
        this.viewCommands.beforeApply(showFeeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showFee(feeType);
        }
        this.viewCommands.afterApply(showFeeCommand);
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

    /* compiled from: CryptoBoxSuspensionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State$ShowTransactionSuccessCommand */
    /* loaded from: classes3.dex */
    public class ShowTransactionSuccessCommand extends ViewCommand<CryptoBoxSuspensionView> {
        ShowTransactionSuccessCommand(CryptoBoxSuspensionView$$State cryptoBoxSuspensionView$$State) {
            super("showTransactionSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxSuspensionView cryptoBoxSuspensionView) {
            cryptoBoxSuspensionView.showTransactionSuccess();
        }
    }

    /* compiled from: CryptoBoxSuspensionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State$ShowTransactionErrorCommand */
    /* loaded from: classes3.dex */
    public class ShowTransactionErrorCommand extends ViewCommand<CryptoBoxSuspensionView> {
        public final String message;

        ShowTransactionErrorCommand(CryptoBoxSuspensionView$$State cryptoBoxSuspensionView$$State, String str) {
            super("showTransactionError", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxSuspensionView cryptoBoxSuspensionView) {
            cryptoBoxSuspensionView.showTransactionError(this.message);
        }
    }

    /* compiled from: CryptoBoxSuspensionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State$RenderButtonLoadingCommand */
    /* loaded from: classes3.dex */
    public class RenderButtonLoadingCommand extends ViewCommand<CryptoBoxSuspensionView> {
        public final boolean isLoading;

        RenderButtonLoadingCommand(CryptoBoxSuspensionView$$State cryptoBoxSuspensionView$$State, boolean z) {
            super("renderButtonLoading", AddToEndSingleStrategy.class);
            this.isLoading = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxSuspensionView cryptoBoxSuspensionView) {
            cryptoBoxSuspensionView.renderButtonLoading(this.isLoading);
        }
    }

    /* compiled from: CryptoBoxSuspensionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State$ShowFeeCommand */
    /* loaded from: classes3.dex */
    public class ShowFeeCommand extends ViewCommand<CryptoBoxSuspensionView> {
        public final FeeType feeType;

        ShowFeeCommand(CryptoBoxSuspensionView$$State cryptoBoxSuspensionView$$State, FeeType feeType) {
            super("showFee", AddToEndSingleStrategy.class);
            this.feeType = feeType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxSuspensionView cryptoBoxSuspensionView) {
            cryptoBoxSuspensionView.showFee(this.feeType);
        }
    }

    /* compiled from: CryptoBoxSuspensionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CryptoBoxSuspensionView> {
        public final String text;

        ShowToastCommand(CryptoBoxSuspensionView$$State cryptoBoxSuspensionView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxSuspensionView cryptoBoxSuspensionView) {
            cryptoBoxSuspensionView.showToast(this.text);
        }
    }

    /* compiled from: CryptoBoxSuspensionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CryptoBoxSuspensionView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CryptoBoxSuspensionView$$State cryptoBoxSuspensionView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxSuspensionView cryptoBoxSuspensionView) {
            cryptoBoxSuspensionView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CryptoBoxSuspensionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.suspension.CryptoBoxSuspensionView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CryptoBoxSuspensionView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CryptoBoxSuspensionView$$State cryptoBoxSuspensionView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxSuspensionView cryptoBoxSuspensionView) {
            cryptoBoxSuspensionView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
