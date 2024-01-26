package com.iMe.p030ui.wallet.airdrop.dialog;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStep;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State */
/* loaded from: classes3.dex */
public class WalletAirdropDialogView$$State extends MvpViewState<WalletAirdropDialogView> implements WalletAirdropDialogView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.airdrop.dialog.WalletAirdropDialogView
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

    /* compiled from: WalletAirdropDialogView$$State.java */
    /* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$ConfigureDialogStateCommand */
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
    /* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$ShowToastCommand */
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
    /* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$ShowLoadingDialogCommand */
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
    /* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletAirdropDialogView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletAirdropDialogView$$State walletAirdropDialogView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAirdropDialogView walletAirdropDialogView) {
            walletAirdropDialogView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
