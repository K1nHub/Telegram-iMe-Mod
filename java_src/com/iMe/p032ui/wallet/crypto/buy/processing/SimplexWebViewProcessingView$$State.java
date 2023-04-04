package com.iMe.p032ui.wallet.crypto.buy.processing;

import com.iMe.model.wallet.crypto.simplex.PaymentResult;
import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView$$State */
/* loaded from: classes3.dex */
public class SimplexWebViewProcessingView$$State extends MvpViewState<SimplexWebViewProcessingView> implements SimplexWebViewProcessingView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView
    public void redirectAndShowResult(PaymentResult paymentResult) {
        RedirectAndShowResultCommand redirectAndShowResultCommand = new RedirectAndShowResultCommand(this, paymentResult);
        this.viewCommands.beforeApply(redirectAndShowResultCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.redirectAndShowResult(paymentResult);
        }
        this.viewCommands.afterApply(redirectAndShowResultCommand);
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

    /* compiled from: SimplexWebViewProcessingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView$$State$RedirectAndShowResultCommand */
    /* loaded from: classes3.dex */
    public class RedirectAndShowResultCommand extends ViewCommand<SimplexWebViewProcessingView> {
        public final PaymentResult result;

        RedirectAndShowResultCommand(SimplexWebViewProcessingView$$State simplexWebViewProcessingView$$State, PaymentResult paymentResult) {
            super("redirectAndShowResult", OneExecutionStateStrategy.class);
            this.result = paymentResult;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(SimplexWebViewProcessingView simplexWebViewProcessingView) {
            simplexWebViewProcessingView.redirectAndShowResult(this.result);
        }
    }

    /* compiled from: SimplexWebViewProcessingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<SimplexWebViewProcessingView> {
        public final String text;

        ShowToastCommand(SimplexWebViewProcessingView$$State simplexWebViewProcessingView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(SimplexWebViewProcessingView simplexWebViewProcessingView) {
            simplexWebViewProcessingView.showToast(this.text);
        }
    }

    /* compiled from: SimplexWebViewProcessingView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.processing.SimplexWebViewProcessingView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<SimplexWebViewProcessingView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(SimplexWebViewProcessingView$$State simplexWebViewProcessingView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(SimplexWebViewProcessingView simplexWebViewProcessingView) {
            simplexWebViewProcessingView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
