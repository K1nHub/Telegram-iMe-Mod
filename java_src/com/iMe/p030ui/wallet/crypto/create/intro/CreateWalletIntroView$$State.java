package com.iMe.p030ui.wallet.crypto.create.intro;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State */
/* loaded from: classes3.dex */
public class CreateWalletIntroView$$State extends MvpViewState<CreateWalletIntroView> implements CreateWalletIntroView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void setupScreenData(TLRPC$User tLRPC$User, String str, Network.Explorer explorer) {
        SetupScreenDataCommand setupScreenDataCommand = new SetupScreenDataCommand(this, tLRPC$User, str, explorer);
        this.viewCommands.beforeApply(setupScreenDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenData(tLRPC$User, str, explorer);
        }
        this.viewCommands.afterApply(setupScreenDataCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void updateNextButtonLoadingState(boolean z) {
        UpdateNextButtonLoadingStateCommand updateNextButtonLoadingStateCommand = new UpdateNextButtonLoadingStateCommand(this, z);
        this.viewCommands.beforeApply(updateNextButtonLoadingStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateNextButtonLoadingState(z);
        }
        this.viewCommands.afterApply(updateNextButtonLoadingStateCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void showCreateNewWalletConfirmationDialog(DialogModel dialogModel) {
        ShowCreateNewWalletConfirmationDialogCommand showCreateNewWalletConfirmationDialogCommand = new ShowCreateNewWalletConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showCreateNewWalletConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showCreateNewWalletConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showCreateNewWalletConfirmationDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openAddressScan(String str) {
        OpenAddressScanCommand openAddressScanCommand = new OpenAddressScanCommand(this, str);
        this.viewCommands.beforeApply(openAddressScanCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openAddressScan(str);
        }
        this.viewCommands.afterApply(openAddressScanCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openImportWalletScreen(String str, String str2) {
        OpenImportWalletScreenCommand openImportWalletScreenCommand = new OpenImportWalletScreenCommand(this, str, str2);
        this.viewCommands.beforeApply(openImportWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openImportWalletScreen(str, str2);
        }
        this.viewCommands.afterApply(openImportWalletScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openCreateWalletScreen(Wallet wallet2, String str) {
        OpenCreateWalletScreenCommand openCreateWalletScreenCommand = new OpenCreateWalletScreenCommand(this, wallet2, str);
        this.viewCommands.beforeApply(openCreateWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCreateWalletScreen(wallet2, str);
        }
        this.viewCommands.afterApply(openCreateWalletScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.create.intro.CreateWalletIntroView
    public void openAddWalletScreen(Wallet wallet2, String str) {
        OpenAddWalletScreenCommand openAddWalletScreenCommand = new OpenAddWalletScreenCommand(this, wallet2, str);
        this.viewCommands.beforeApply(openAddWalletScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openAddWalletScreen(wallet2, str);
        }
        this.viewCommands.afterApply(openAddWalletScreenCommand);
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

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$SetupScreenDataCommand */
    /* loaded from: classes3.dex */
    public class SetupScreenDataCommand extends ViewCommand<CreateWalletIntroView> {
        public final String address;
        public final Network.Explorer explorer;
        public final TLRPC$User user;

        SetupScreenDataCommand(CreateWalletIntroView$$State createWalletIntroView$$State, TLRPC$User tLRPC$User, String str, Network.Explorer explorer) {
            super("setupScreenData", AddToEndSingleStrategy.class);
            this.user = tLRPC$User;
            this.address = str;
            this.explorer = explorer;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.setupScreenData(this.user, this.address, this.explorer);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$UpdateNextButtonLoadingStateCommand */
    /* loaded from: classes3.dex */
    public class UpdateNextButtonLoadingStateCommand extends ViewCommand<CreateWalletIntroView> {
        public final boolean isLoading;

        UpdateNextButtonLoadingStateCommand(CreateWalletIntroView$$State createWalletIntroView$$State, boolean z) {
            super("updateNextButtonLoadingState", AddToEndSingleStrategy.class);
            this.isLoading = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.updateNextButtonLoadingState(this.isLoading);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$ShowCreateNewWalletConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowCreateNewWalletConfirmationDialogCommand extends ViewCommand<CreateWalletIntroView> {
        public final DialogModel dialogModel;

        ShowCreateNewWalletConfirmationDialogCommand(CreateWalletIntroView$$State createWalletIntroView$$State, DialogModel dialogModel) {
            super("showCreateNewWalletConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.showCreateNewWalletConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$OpenAddressScanCommand */
    /* loaded from: classes3.dex */
    public class OpenAddressScanCommand extends ViewCommand<CreateWalletIntroView> {
        public final String url;

        OpenAddressScanCommand(CreateWalletIntroView$$State createWalletIntroView$$State, String str) {
            super("openAddressScan", OneExecutionStateStrategy.class);
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.openAddressScan(this.url);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$OpenImportWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenImportWalletScreenCommand extends ViewCommand<CreateWalletIntroView> {
        public final String password;
        public final String walletAddress;

        OpenImportWalletScreenCommand(CreateWalletIntroView$$State createWalletIntroView$$State, String str, String str2) {
            super("openImportWalletScreen", OneExecutionStateStrategy.class);
            this.password = str;
            this.walletAddress = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.openImportWalletScreen(this.password, this.walletAddress);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$OpenCreateWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCreateWalletScreenCommand extends ViewCommand<CreateWalletIntroView> {
        public final String password;

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f2180wallet;

        OpenCreateWalletScreenCommand(CreateWalletIntroView$$State createWalletIntroView$$State, Wallet wallet2, String str) {
            super("openCreateWalletScreen", OneExecutionStateStrategy.class);
            this.f2180wallet = wallet2;
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.openCreateWalletScreen(this.f2180wallet, this.password);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$OpenAddWalletScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenAddWalletScreenCommand extends ViewCommand<CreateWalletIntroView> {
        public final String password;

        /* renamed from: wallet  reason: collision with root package name */
        public final Wallet f2179wallet;

        OpenAddWalletScreenCommand(CreateWalletIntroView$$State createWalletIntroView$$State, Wallet wallet2, String str) {
            super("openAddWalletScreen", OneExecutionStateStrategy.class);
            this.f2179wallet = wallet2;
            this.password = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.openAddWalletScreen(this.f2179wallet, this.password);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CreateWalletIntroView> {
        public final String text;

        ShowToastCommand(CreateWalletIntroView$$State createWalletIntroView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.showToast(this.text);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CreateWalletIntroView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CreateWalletIntroView$$State createWalletIntroView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CreateWalletIntroView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CreateWalletIntroView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CreateWalletIntroView$$State createWalletIntroView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateWalletIntroView createWalletIntroView) {
            createWalletIntroView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
