package com.iMe.p030ui.wallet.home.tabs.services;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State */
/* loaded from: classes4.dex */
public class WalletHomeServicesView$$State extends MvpViewState<WalletHomeServicesView> implements WalletHomeServicesView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openStakingScreen() {
        OpenStakingScreenCommand openStakingScreenCommand = new OpenStakingScreenCommand(this);
        this.viewCommands.beforeApply(openStakingScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openStakingScreen();
        }
        this.viewCommands.afterApply(openStakingScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openCryptoBoxesScreen() {
        OpenCryptoBoxesScreenCommand openCryptoBoxesScreenCommand = new OpenCryptoBoxesScreenCommand(this);
        this.viewCommands.beforeApply(openCryptoBoxesScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCryptoBoxesScreen();
        }
        this.viewCommands.afterApply(openCryptoBoxesScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openChannelsCatalogScreen() {
        OpenChannelsCatalogScreenCommand openChannelsCatalogScreenCommand = new OpenChannelsCatalogScreenCommand(this);
        this.viewCommands.beforeApply(openChannelsCatalogScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openChannelsCatalogScreen();
        }
        this.viewCommands.afterApply(openChannelsCatalogScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openTelegramUsernamesScreen() {
        OpenTelegramUsernamesScreenCommand openTelegramUsernamesScreenCommand = new OpenTelegramUsernamesScreenCommand(this);
        this.viewCommands.beforeApply(openTelegramUsernamesScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTelegramUsernamesScreen();
        }
        this.viewCommands.afterApply(openTelegramUsernamesScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openTelegramPremiumScreen() {
        OpenTelegramPremiumScreenCommand openTelegramPremiumScreenCommand = new OpenTelegramPremiumScreenCommand(this);
        this.viewCommands.beforeApply(openTelegramPremiumScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTelegramPremiumScreen();
        }
        this.viewCommands.afterApply(openTelegramPremiumScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void openActionIntroScreen(int i) {
        OpenActionIntroScreenCommand openActionIntroScreenCommand = new OpenActionIntroScreenCommand(this, i);
        this.viewCommands.beforeApply(openActionIntroScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openActionIntroScreen(i);
        }
        this.viewCommands.afterApply(openActionIntroScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void showRequiredWalletCreatedDialog(BlockchainType blockchainType) {
        ShowRequiredWalletCreatedDialogCommand showRequiredWalletCreatedDialogCommand = new ShowRequiredWalletCreatedDialogCommand(this, blockchainType);
        this.viewCommands.beforeApply(showRequiredWalletCreatedDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequiredWalletCreatedDialog(blockchainType);
        }
        this.viewCommands.afterApply(showRequiredWalletCreatedDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.services.WalletHomeServicesView
    public void firstScreenInitWithItems(List<BaseNode> list) {
        FirstScreenInitWithItemsCommand firstScreenInitWithItemsCommand = new FirstScreenInitWithItemsCommand(this, list);
        this.viewCommands.beforeApply(firstScreenInitWithItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.firstScreenInitWithItems(list);
        }
        this.viewCommands.afterApply(firstScreenInitWithItemsCommand);
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

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$OpenStakingScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenStakingScreenCommand extends ViewCommand<WalletHomeServicesView> {
        OpenStakingScreenCommand(WalletHomeServicesView$$State walletHomeServicesView$$State) {
            super("openStakingScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.openStakingScreen();
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$OpenCryptoBoxesScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenCryptoBoxesScreenCommand extends ViewCommand<WalletHomeServicesView> {
        OpenCryptoBoxesScreenCommand(WalletHomeServicesView$$State walletHomeServicesView$$State) {
            super("openCryptoBoxesScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.openCryptoBoxesScreen();
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$OpenChannelsCatalogScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenChannelsCatalogScreenCommand extends ViewCommand<WalletHomeServicesView> {
        OpenChannelsCatalogScreenCommand(WalletHomeServicesView$$State walletHomeServicesView$$State) {
            super("openChannelsCatalogScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.openChannelsCatalogScreen();
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$OpenTelegramUsernamesScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenTelegramUsernamesScreenCommand extends ViewCommand<WalletHomeServicesView> {
        OpenTelegramUsernamesScreenCommand(WalletHomeServicesView$$State walletHomeServicesView$$State) {
            super("openTelegramUsernamesScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.openTelegramUsernamesScreen();
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$OpenTelegramPremiumScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenTelegramPremiumScreenCommand extends ViewCommand<WalletHomeServicesView> {
        OpenTelegramPremiumScreenCommand(WalletHomeServicesView$$State walletHomeServicesView$$State) {
            super("openTelegramPremiumScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.openTelegramPremiumScreen();
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$OpenActionIntroScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenActionIntroScreenCommand extends ViewCommand<WalletHomeServicesView> {
        public final int screenType;

        OpenActionIntroScreenCommand(WalletHomeServicesView$$State walletHomeServicesView$$State, int i) {
            super("openActionIntroScreen", OneExecutionStateStrategy.class);
            this.screenType = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.openActionIntroScreen(this.screenType);
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$ShowRequiredWalletCreatedDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowRequiredWalletCreatedDialogCommand extends ViewCommand<WalletHomeServicesView> {
        public final BlockchainType blockchainType;

        ShowRequiredWalletCreatedDialogCommand(WalletHomeServicesView$$State walletHomeServicesView$$State, BlockchainType blockchainType) {
            super("showRequiredWalletCreatedDialog", OneExecutionStateStrategy.class);
            this.blockchainType = blockchainType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.showRequiredWalletCreatedDialog(this.blockchainType);
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$FirstScreenInitWithItemsCommand */
    /* loaded from: classes4.dex */
    public class FirstScreenInitWithItemsCommand extends ViewCommand<WalletHomeServicesView> {
        public final List<BaseNode> dashboardUiItems;

        FirstScreenInitWithItemsCommand(WalletHomeServicesView$$State walletHomeServicesView$$State, List<BaseNode> list) {
            super("firstScreenInitWithItems", AddToEndSingleStrategy.class);
            this.dashboardUiItems = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.firstScreenInitWithItems(this.dashboardUiItems);
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletHomeServicesView> {
        public final String text;

        ShowToastCommand(WalletHomeServicesView$$State walletHomeServicesView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.showToast(this.text);
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletHomeServicesView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletHomeServicesView$$State walletHomeServicesView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletHomeServicesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.services.WalletHomeServicesView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletHomeServicesView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletHomeServicesView$$State walletHomeServicesView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeServicesView walletHomeServicesView) {
            walletHomeServicesView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
