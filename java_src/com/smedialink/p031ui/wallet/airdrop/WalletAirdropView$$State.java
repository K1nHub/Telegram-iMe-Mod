package com.smedialink.p031ui.wallet.airdrop;

import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropView$$State */
/* loaded from: classes3.dex */
public class WalletAirdropView$$State extends MvpViewState<WalletAirdropView> implements WalletAirdropView {
    @Override // com.smedialink.p031ui.wallet.airdrop.WalletAirdropView
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

    @Override // com.smedialink.p031ui.wallet.airdrop.WalletAirdropView
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

    /* compiled from: WalletAirdropView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropView$$State$ShowAirdropDialogCommand */
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
    /* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropView$$State$CheckNeedToShowAirdropDialogCommand */
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
    /* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropView$$State$ShowToastCommand */
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
    /* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropView$$State$ShowLoadingDialogCommand */
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
}
