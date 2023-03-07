package com.smedialink.p031ui.wallet.crypto.settings.blockchains.details;

import com.smedialink.model.dialog.DialogModel;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView$$State */
/* loaded from: classes3.dex */
public class BlockchainWalletDetailsView$$State extends MvpViewState<BlockchainWalletDetailsView> implements BlockchainWalletDetailsView {
    @Override // com.smedialink.p031ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView
    public void setupScreenWithData(int i, String str, String str2, String str3, String str4) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, i, str, str2, str3, str4);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(i, str, str2, str3, str4);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView
    public void showResetWalletConfirmationDialog(DialogModel dialogModel) {
        ShowResetWalletConfirmationDialogCommand showResetWalletConfirmationDialogCommand = new ShowResetWalletConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showResetWalletConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showResetWalletConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showResetWalletConfirmationDialogCommand);
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

    /* compiled from: BlockchainWalletDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes3.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<BlockchainWalletDetailsView> {
        public final String address;
        public final String createdDate;
        public final int iconResId;
        public final String subtitle;
        public final String title;

        SetupScreenWithDataCommand(BlockchainWalletDetailsView$$State blockchainWalletDetailsView$$State, int i, String str, String str2, String str3, String str4) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.iconResId = i;
            this.title = str;
            this.subtitle = str2;
            this.createdDate = str3;
            this.address = str4;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainWalletDetailsView blockchainWalletDetailsView) {
            blockchainWalletDetailsView.setupScreenWithData(this.iconResId, this.title, this.subtitle, this.createdDate, this.address);
        }
    }

    /* compiled from: BlockchainWalletDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView$$State$ShowResetWalletConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowResetWalletConfirmationDialogCommand extends ViewCommand<BlockchainWalletDetailsView> {
        public final DialogModel dialogModel;

        ShowResetWalletConfirmationDialogCommand(BlockchainWalletDetailsView$$State blockchainWalletDetailsView$$State, DialogModel dialogModel) {
            super("showResetWalletConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainWalletDetailsView blockchainWalletDetailsView) {
            blockchainWalletDetailsView.showResetWalletConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: BlockchainWalletDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<BlockchainWalletDetailsView> {
        public final String text;

        ShowToastCommand(BlockchainWalletDetailsView$$State blockchainWalletDetailsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainWalletDetailsView blockchainWalletDetailsView) {
            blockchainWalletDetailsView.showToast(this.text);
        }
    }

    /* compiled from: BlockchainWalletDetailsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<BlockchainWalletDetailsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(BlockchainWalletDetailsView$$State blockchainWalletDetailsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainWalletDetailsView blockchainWalletDetailsView) {
            blockchainWalletDetailsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
