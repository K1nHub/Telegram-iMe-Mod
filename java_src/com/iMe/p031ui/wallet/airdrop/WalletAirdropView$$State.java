package com.iMe.p031ui.wallet.airdrop;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropView$$State */
/* loaded from: classes3.dex */
public class WalletAirdropView$$State extends MvpViewState<WalletAirdropView> implements WalletAirdropView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.airdrop.WalletAirdropView
    public void showAirdropDialog() {
        ShowAirdropDialogCommand showAirdropDialogCommand = new ShowAirdropDialogCommand(this);
        this.viewCommands.beforeApply(showAirdropDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAirdropDialog();
        }
        this.viewCommands.afterApply(showAirdropDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.airdrop.WalletAirdropView
    public void checkNeedToShowAirdropDialog() {
        CheckNeedToShowAirdropDialogCommand checkNeedToShowAirdropDialogCommand = new CheckNeedToShowAirdropDialogCommand(this);
        this.viewCommands.beforeApply(checkNeedToShowAirdropDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.checkNeedToShowAirdropDialog();
        }
        this.viewCommands.afterApply(checkNeedToShowAirdropDialogCommand);
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

    /* compiled from: WalletAirdropView$$State.java */
    /* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropView$$State$ShowAirdropDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowAirdropDialogCommand extends ViewCommand<WalletAirdropView> {
        ShowAirdropDialogCommand(WalletAirdropView$$State walletAirdropView$$State) {
            super("showAirdropDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropView walletAirdropView) {
            walletAirdropView.showAirdropDialog();
        }
    }

    /* compiled from: WalletAirdropView$$State.java */
    /* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropView$$State$CheckNeedToShowAirdropDialogCommand */
    /* loaded from: classes3.dex */
    public class CheckNeedToShowAirdropDialogCommand extends ViewCommand<WalletAirdropView> {
        CheckNeedToShowAirdropDialogCommand(WalletAirdropView$$State walletAirdropView$$State) {
            super("checkNeedToShowAirdropDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropView walletAirdropView) {
            walletAirdropView.checkNeedToShowAirdropDialog();
        }
    }

    /* compiled from: WalletAirdropView$$State.java */
    /* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletAirdropView> {
        public final String text;

        ShowToastCommand(WalletAirdropView$$State walletAirdropView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropView walletAirdropView) {
            walletAirdropView.showToast(this.text);
        }
    }

    /* compiled from: WalletAirdropView$$State.java */
    /* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletAirdropView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletAirdropView$$State walletAirdropView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropView walletAirdropView) {
            walletAirdropView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletAirdropView$$State.java */
    /* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletAirdropView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletAirdropView$$State walletAirdropView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropView walletAirdropView) {
            walletAirdropView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
