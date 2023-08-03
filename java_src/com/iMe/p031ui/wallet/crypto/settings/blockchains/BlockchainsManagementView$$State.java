package com.iMe.p031ui.wallet.crypto.settings.blockchains;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State */
/* loaded from: classes4.dex */
public class BlockchainsManagementView$$State extends MvpViewState<BlockchainsManagementView> implements BlockchainsManagementView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void setupWalletsItems(List<BlockchainWalletItem> list) {
        SetupWalletsItemsCommand setupWalletsItemsCommand = new SetupWalletsItemsCommand(this, list);
        this.viewCommands.beforeApply(setupWalletsItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupWalletsItems(list);
        }
        this.viewCommands.afterApply(setupWalletsItemsCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showResetAllWalletsConfirmationDialog(DialogModel dialogModel) {
        ShowResetAllWalletsConfirmationDialogCommand showResetAllWalletsConfirmationDialogCommand = new ShowResetAllWalletsConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showResetAllWalletsConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showResetAllWalletsConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showResetAllWalletsConfirmationDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showWalletDetailsDialog(BlockchainWalletItem blockchainWalletItem, DialogModel dialogModel) {
        ShowWalletDetailsDialogCommand showWalletDetailsDialogCommand = new ShowWalletDetailsDialogCommand(this, blockchainWalletItem, dialogModel);
        this.viewCommands.beforeApply(showWalletDetailsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWalletDetailsDialog(blockchainWalletItem, dialogModel);
        }
        this.viewCommands.afterApply(showWalletDetailsDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showWalletInfoDialog(DialogModel dialogModel) {
        ShowWalletInfoDialogCommand showWalletInfoDialogCommand = new ShowWalletInfoDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showWalletInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWalletInfoDialog(dialogModel);
        }
        this.viewCommands.afterApply(showWalletInfoDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void openBackupScreen(Wallet wallet2) {
        OpenBackupScreenCommand openBackupScreenCommand = new OpenBackupScreenCommand(this, wallet2);
        this.viewCommands.beforeApply(openBackupScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBackupScreen(wallet2);
        }
        this.viewCommands.afterApply(openBackupScreenCommand);
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
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

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$SetupWalletsItemsCommand */
    /* loaded from: classes4.dex */
    public class SetupWalletsItemsCommand extends ViewCommand<BlockchainsManagementView> {
        public final List<BlockchainWalletItem> items;

        SetupWalletsItemsCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, List<BlockchainWalletItem> list) {
            super("setupWalletsItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.setupWalletsItems(this.items);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowResetAllWalletsConfirmationDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowResetAllWalletsConfirmationDialogCommand extends ViewCommand<BlockchainsManagementView> {
        public final DialogModel dialogModel;

        ShowResetAllWalletsConfirmationDialogCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, DialogModel dialogModel) {
            super("showResetAllWalletsConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showResetAllWalletsConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowWalletDetailsDialogCommand extends ViewCommand<BlockchainsManagementView> {
        public final DialogModel infoDialogModel;
        public final BlockchainWalletItem walletItem;

        ShowWalletDetailsDialogCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, BlockchainWalletItem blockchainWalletItem, DialogModel dialogModel) {
            super("showWalletDetailsDialog", OneExecutionStateStrategy.class);
            this.walletItem = blockchainWalletItem;
            this.infoDialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showWalletDetailsDialog(this.walletItem, this.infoDialogModel);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowWalletInfoDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowWalletInfoDialogCommand extends ViewCommand<BlockchainsManagementView> {
        public final DialogModel dialogModel;

        ShowWalletInfoDialogCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, DialogModel dialogModel) {
            super("showWalletInfoDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showWalletInfoDialog(this.dialogModel);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$OpenBackupScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBackupScreenCommand extends ViewCommand<BlockchainsManagementView> {

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f1989wallet;

        OpenBackupScreenCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, Wallet wallet2) {
            super("openBackupScreen", OneExecutionStateStrategy.class);
            this.f1989wallet = wallet2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.openBackupScreen(this.f1989wallet);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<BlockchainsManagementView> {
        public final String text;

        ShowToastCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showToast(this.text);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<BlockchainsManagementView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<BlockchainsManagementView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$FinishScreenCommand */
    /* loaded from: classes4.dex */
    public class FinishScreenCommand extends ViewCommand<BlockchainsManagementView> {
        FinishScreenCommand(BlockchainsManagementView$$State blockchainsManagementView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.finishScreen();
        }
    }
}
