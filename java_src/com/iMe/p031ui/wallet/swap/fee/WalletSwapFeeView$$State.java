package com.iMe.p031ui.wallet.swap.fee;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeView$$State */
/* loaded from: classes4.dex */
public class WalletSwapFeeView$$State extends MvpViewState<WalletSwapFeeView> implements WalletSwapFeeView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.swap.fee.WalletSwapFeeView
    public void onFeeReselected() {
        OnFeeReselectedCommand onFeeReselectedCommand = new OnFeeReselectedCommand(this);
        this.viewCommands.beforeApply(onFeeReselectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onFeeReselected();
        }
        this.viewCommands.afterApply(onFeeReselectedCommand);
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

    /* compiled from: WalletSwapFeeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeView$$State$OnFeeReselectedCommand */
    /* loaded from: classes4.dex */
    public class OnFeeReselectedCommand extends ViewCommand<WalletSwapFeeView> {
        OnFeeReselectedCommand(WalletSwapFeeView$$State walletSwapFeeView$$State) {
            super("onFeeReselected", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapFeeView walletSwapFeeView) {
            walletSwapFeeView.onFeeReselected();
        }
    }

    /* compiled from: WalletSwapFeeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletSwapFeeView> {
        public final String text;

        ShowToastCommand(WalletSwapFeeView$$State walletSwapFeeView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapFeeView walletSwapFeeView) {
            walletSwapFeeView.showToast(this.text);
        }
    }

    /* compiled from: WalletSwapFeeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSwapFeeView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSwapFeeView$$State walletSwapFeeView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapFeeView walletSwapFeeView) {
            walletSwapFeeView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSwapFeeView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.fee.WalletSwapFeeView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletSwapFeeView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletSwapFeeView$$State walletSwapFeeView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapFeeView walletSwapFeeView) {
            walletSwapFeeView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
