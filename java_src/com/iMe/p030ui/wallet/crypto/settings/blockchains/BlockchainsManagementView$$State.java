package com.iMe.p030ui.wallet.crypto.settings.blockchains;

import android.content.DialogInterface;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State */
/* loaded from: classes3.dex */
public class BlockchainsManagementView$$State extends MvpViewState<BlockchainsManagementView> implements BlockchainsManagementView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void setupWalletsItems(List<BaseNode> list) {
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

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
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

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
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

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
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

    @Override // com.iMe.p030ui.wallet.crypto.settings.blockchains.BlockchainsManagementView
    public void showWalletDetailsDialog(BlockchainManagementItem.Wallet wallet2, DialogModel dialogModel) {
        ShowWalletDetailsDialogCommand showWalletDetailsDialogCommand = new ShowWalletDetailsDialogCommand(this, wallet2, dialogModel);
        this.viewCommands.beforeApply(showWalletDetailsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWalletDetailsDialog(wallet2, dialogModel);
        }
        this.viewCommands.afterApply(showWalletDetailsDialogCommand);
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowActivationConfirmationDialogCommand showActivationConfirmationDialogCommand = new ShowActivationConfirmationDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showActivationConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActivationConfirmationDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showActivationConfirmationDialogCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletIntroScreen(BlockchainType blockchainType, String str, WalletCreationType.Initial initial) {
        OpenCreateWalletIntroScreenCommand openCreateWalletIntroScreenCommand = new OpenCreateWalletIntroScreenCommand(this, blockchainType, str, initial);
        this.viewCommands.beforeApply(openCreateWalletIntroScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCreateWalletIntroScreen(blockchainType, str, initial);
        }
        this.viewCommands.afterApply(openCreateWalletIntroScreenCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        ShowSelectOptionsDialogCommand showSelectOptionsDialogCommand = new ShowSelectOptionsDialogCommand(this, str, strArr, onClickListener);
        this.viewCommands.beforeApply(showSelectOptionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectOptionsDialog(str, strArr, onClickListener);
        }
        this.viewCommands.afterApply(showSelectOptionsDialogCommand);
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$SetupWalletsItemsCommand */
    /* loaded from: classes3.dex */
    public class SetupWalletsItemsCommand extends ViewCommand<BlockchainsManagementView> {
        public final List<BaseNode> items;

        SetupWalletsItemsCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, List<BaseNode> list) {
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
    /* loaded from: classes3.dex */
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
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowWalletInfoDialogCommand */
    /* loaded from: classes3.dex */
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
    /* loaded from: classes3.dex */
    public class OpenBackupScreenCommand extends ViewCommand<BlockchainsManagementView> {

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f2183wallet;

        OpenBackupScreenCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, Wallet wallet2) {
            super("openBackupScreen", OneExecutionStateStrategy.class);
            this.f2183wallet = wallet2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.openBackupScreen(this.f2183wallet);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowWalletDetailsDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowWalletDetailsDialogCommand extends ViewCommand<BlockchainsManagementView> {
        public final DialogModel infoDialogModel;
        public final BlockchainManagementItem.Wallet walletItem;

        ShowWalletDetailsDialogCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, BlockchainManagementItem.Wallet wallet2, DialogModel dialogModel) {
            super("showWalletDetailsDialog", OneExecutionStateStrategy.class);
            this.walletItem = wallet2;
            this.infoDialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showWalletDetailsDialog(this.walletItem, this.infoDialogModel);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
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
    /* loaded from: classes3.dex */
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
    /* loaded from: classes3.dex */
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
    /* loaded from: classes3.dex */
    public class FinishScreenCommand extends ViewCommand<BlockchainsManagementView> {
        FinishScreenCommand(BlockchainsManagementView$$State blockchainsManagementView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.finishScreen();
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowActivationConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowActivationConfirmationDialogCommand extends ViewCommand<BlockchainsManagementView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowActivationConfirmationDialogCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showActivationConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showActivationConfirmationDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$OpenCreateWalletIntroScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCreateWalletIntroScreenCommand extends ViewCommand<BlockchainsManagementView> {
        public final BlockchainType blockchainType;
        public final String linkedWalletAddress;
        public final WalletCreationType.Initial walletCreationType;

        OpenCreateWalletIntroScreenCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, BlockchainType blockchainType, String str, WalletCreationType.Initial initial) {
            super("openCreateWalletIntroScreen", OneExecutionStateStrategy.class);
            this.blockchainType = blockchainType;
            this.linkedWalletAddress = str;
            this.walletCreationType = initial;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.openCreateWalletIntroScreen(this.blockchainType, this.linkedWalletAddress, this.walletCreationType);
        }
    }

    /* compiled from: BlockchainsManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView$$State$ShowSelectOptionsDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSelectOptionsDialogCommand extends ViewCommand<BlockchainsManagementView> {
        public final String[] items;
        public final DialogInterface.OnClickListener listener;
        public final String title;

        ShowSelectOptionsDialogCommand(BlockchainsManagementView$$State blockchainsManagementView$$State, String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
            super("showSelectOptionsDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.items = strArr;
            this.listener = onClickListener;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(BlockchainsManagementView blockchainsManagementView) {
            blockchainsManagementView.showSelectOptionsDialog(this.title, this.items, this.listener);
        }
    }
}
