package com.smedialink.p031ui.wallet.airdrop.dialog;

import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStep;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State */
/* loaded from: classes3.dex */
public class WalletAirdropDialogView$$State extends MvpViewState<WalletAirdropDialogView> implements WalletAirdropDialogView {
    @Override // com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogView
    public void configureDialogState(boolean z, boolean z2, AirdropStep airdropStep, int i) {
        ConfigureDialogStateCommand configureDialogStateCommand = new ConfigureDialogStateCommand(this, z, z2, airdropStep, i);
        this.viewCommands.beforeApply(configureDialogStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.configureDialogState(z, z2, airdropStep, i);
        }
        this.viewCommands.afterApply(configureDialogStateCommand);
    }

    @Override // com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogView
    public void onSuccessClaimAirdrop(String str, String str2) {
        OnSuccessClaimAirdropCommand onSuccessClaimAirdropCommand = new OnSuccessClaimAirdropCommand(this, str, str2);
        this.viewCommands.beforeApply(onSuccessClaimAirdropCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessClaimAirdrop(str, str2);
        }
        this.viewCommands.afterApply(onSuccessClaimAirdropCommand);
    }

    @Override // com.smedialink.p031ui.wallet.airdrop.dialog.WalletAirdropDialogView
    public void onAcceptAirdrop() {
        OnAcceptAirdropCommand onAcceptAirdropCommand = new OnAcceptAirdropCommand(this);
        this.viewCommands.beforeApply(onAcceptAirdropCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onAcceptAirdrop();
        }
        this.viewCommands.afterApply(onAcceptAirdropCommand);
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

    @Override // com.smedialink.p031ui.base.mvp.base.BaseView
    public void finishScreen() {
        FinishScreenCommand finishScreenCommand = new FinishScreenCommand(this);
        this.viewCommands.beforeApply(finishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.finishScreen();
        }
        this.viewCommands.afterApply(finishScreenCommand);
    }

    /* compiled from: WalletAirdropDialogView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$ConfigureDialogStateCommand */
    /* loaded from: classes3.dex */
    public class ConfigureDialogStateCommand extends ViewCommand<WalletAirdropDialogView> {
        public final int amount;
        public final boolean isBotActivated;
        public final boolean isCryptoWalletCreated;
        public final AirdropStep step;

        ConfigureDialogStateCommand(WalletAirdropDialogView$$State walletAirdropDialogView$$State, boolean z, boolean z2, AirdropStep airdropStep, int i) {
            super("configureDialogState", OneExecutionStateStrategy.class);
            this.isBotActivated = z;
            this.isCryptoWalletCreated = z2;
            this.step = airdropStep;
            this.amount = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropDialogView walletAirdropDialogView) {
            walletAirdropDialogView.configureDialogState(this.isBotActivated, this.isCryptoWalletCreated, this.step, this.amount);
        }
    }

    /* compiled from: WalletAirdropDialogView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$OnSuccessClaimAirdropCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessClaimAirdropCommand extends ViewCommand<WalletAirdropDialogView> {
        public final String description;
        public final String title;

        OnSuccessClaimAirdropCommand(WalletAirdropDialogView$$State walletAirdropDialogView$$State, String str, String str2) {
            super("onSuccessClaimAirdrop", OneExecutionStateStrategy.class);
            this.title = str;
            this.description = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropDialogView walletAirdropDialogView) {
            walletAirdropDialogView.onSuccessClaimAirdrop(this.title, this.description);
        }
    }

    /* compiled from: WalletAirdropDialogView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$OnAcceptAirdropCommand */
    /* loaded from: classes3.dex */
    public class OnAcceptAirdropCommand extends ViewCommand<WalletAirdropDialogView> {
        OnAcceptAirdropCommand(WalletAirdropDialogView$$State walletAirdropDialogView$$State) {
            super("onAcceptAirdrop", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropDialogView walletAirdropDialogView) {
            walletAirdropDialogView.onAcceptAirdrop();
        }
    }

    /* compiled from: WalletAirdropDialogView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletAirdropDialogView> {
        public final String text;

        ShowToastCommand(WalletAirdropDialogView$$State walletAirdropDialogView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropDialogView walletAirdropDialogView) {
            walletAirdropDialogView.showToast(this.text);
        }
    }

    /* compiled from: WalletAirdropDialogView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletAirdropDialogView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletAirdropDialogView$$State walletAirdropDialogView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropDialogView walletAirdropDialogView) {
            walletAirdropDialogView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletAirdropDialogView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$FinishScreenCommand */
    /* loaded from: classes3.dex */
    public class FinishScreenCommand extends ViewCommand<WalletAirdropDialogView> {
        FinishScreenCommand(WalletAirdropDialogView$$State walletAirdropDialogView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropDialogView walletAirdropDialogView) {
            walletAirdropDialogView.finishScreen();
        }
    }
}
