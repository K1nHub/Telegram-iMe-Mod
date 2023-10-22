package com.iMe.p030ui.wallet.home.tabs.crypto;

import android.content.DialogInterface;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ItemOptionsModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.model.wallet.details.TokenDetailsArgs;
import com.iMe.model.wallet.home.NetworkChoosePurpose;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.model.wallet.transfer.TransferScreenArgs;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State */
/* loaded from: classes4.dex */
public class WalletHomeCryptoView$$State extends MvpViewState<WalletHomeCryptoView> implements WalletHomeCryptoView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showAddressMismatchScreen() {
        ShowAddressMismatchScreenCommand showAddressMismatchScreenCommand = new ShowAddressMismatchScreenCommand(this);
        this.viewCommands.beforeApply(showAddressMismatchScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showAddressMismatchScreen();
        }
        this.viewCommands.afterApply(showAddressMismatchScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showWalletAddressScan(String str) {
        ShowWalletAddressScanCommand showWalletAddressScanCommand = new ShowWalletAddressScanCommand(this, str);
        this.viewCommands.beforeApply(showWalletAddressScanCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showWalletAddressScan(str);
        }
        this.viewCommands.afterApply(showWalletAddressScanCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showQrReceiveDialog(String str, Network network) {
        ShowQrReceiveDialogCommand showQrReceiveDialogCommand = new ShowQrReceiveDialogCommand(this, str, network);
        this.viewCommands.beforeApply(showQrReceiveDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showQrReceiveDialog(str, network);
        }
        this.viewCommands.afterApply(showQrReceiveDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openSendScreen(TransferScreenArgs transferScreenArgs) {
        OpenSendScreenCommand openSendScreenCommand = new OpenSendScreenCommand(this, transferScreenArgs);
        this.viewCommands.beforeApply(openSendScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSendScreen(transferScreenArgs);
        }
        this.viewCommands.afterApply(openSendScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openSwapScreen(TokenDetailed tokenDetailed) {
        OpenSwapScreenCommand openSwapScreenCommand = new OpenSwapScreenCommand(this, tokenDetailed);
        this.viewCommands.beforeApply(openSwapScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSwapScreen(tokenDetailed);
        }
        this.viewCommands.afterApply(openSwapScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openHistoryScreen() {
        OpenHistoryScreenCommand openHistoryScreenCommand = new OpenHistoryScreenCommand(this);
        this.viewCommands.beforeApply(openHistoryScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openHistoryScreen();
        }
        this.viewCommands.afterApply(openHistoryScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openTokenSettingsScreen(String str) {
        OpenTokenSettingsScreenCommand openTokenSettingsScreenCommand = new OpenTokenSettingsScreenCommand(this, str);
        this.viewCommands.beforeApply(openTokenSettingsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openTokenSettingsScreen(str);
        }
        this.viewCommands.afterApply(openTokenSettingsScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void openWalletDetails(TokenDetailsArgs tokenDetailsArgs) {
        OpenWalletDetailsCommand openWalletDetailsCommand = new OpenWalletDetailsCommand(this, tokenDetailsArgs);
        this.viewCommands.beforeApply(openWalletDetailsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openWalletDetails(tokenDetailsArgs);
        }
        this.viewCommands.afterApply(openWalletDetailsCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showChangeNetworkHint() {
        ShowChangeNetworkHintCommand showChangeNetworkHintCommand = new ShowChangeNetworkHintCommand(this);
        this.viewCommands.beforeApply(showChangeNetworkHintCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChangeNetworkHint();
        }
        this.viewCommands.afterApply(showChangeNetworkHintCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showSelectTokensOrderTypeDialog(TokenSortingData tokenSortingData, boolean z) {
        ShowSelectTokensOrderTypeDialogCommand showSelectTokensOrderTypeDialogCommand = new ShowSelectTokensOrderTypeDialogCommand(this, tokenSortingData, z);
        this.viewCommands.beforeApply(showSelectTokensOrderTypeDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectTokensOrderTypeDialog(tokenSortingData, z);
        }
        this.viewCommands.afterApply(showSelectTokensOrderTypeDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showMenuItems(List<ItemOptionsModel> list) {
        ShowMenuItemsCommand showMenuItemsCommand = new ShowMenuItemsCommand(this, list);
        this.viewCommands.beforeApply(showMenuItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showMenuItems(list);
        }
        this.viewCommands.afterApply(showMenuItemsCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list, NetworkChoosePurpose networkChoosePurpose) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkItem, list, networkChoosePurpose);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkItem, list, networkChoosePurpose);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.WalletHomeCryptoView
    public void renderNodes(List<? extends BaseNode> list) {
        RenderNodesCommand renderNodesCommand = new RenderNodesCommand(this, list);
        this.viewCommands.beforeApply(renderNodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderNodes(list);
        }
        this.viewCommands.afterApply(renderNodesCommand);
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

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        ShowRefreshingCommand showRefreshingCommand = new ShowRefreshingCommand(this, z);
        this.viewCommands.beforeApply(showRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRefreshing(z);
        }
        this.viewCommands.afterApply(showRefreshingCommand);
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
    public void openCreateWalletIntroScreen(String str, WalletCreationType.Initial initial) {
        OpenCreateWalletIntroScreenCommand openCreateWalletIntroScreenCommand = new OpenCreateWalletIntroScreenCommand(this, str, initial);
        this.viewCommands.beforeApply(openCreateWalletIntroScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCreateWalletIntroScreen(str, initial);
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

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowAddressMismatchScreenCommand */
    /* loaded from: classes4.dex */
    public class ShowAddressMismatchScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        ShowAddressMismatchScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("showAddressMismatchScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showAddressMismatchScreen();
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowWalletAddressScanCommand */
    /* loaded from: classes4.dex */
    public class ShowWalletAddressScanCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String address;

        ShowWalletAddressScanCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str) {
            super("showWalletAddressScan", OneExecutionStateStrategy.class);
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showWalletAddressScan(this.address);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowQrReceiveDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowQrReceiveDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String address;
        public final Network network;

        ShowQrReceiveDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str, Network network) {
            super("showQrReceiveDialog", OneExecutionStateStrategy.class);
            this.address = str;
            this.network = network;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showQrReceiveDialog(this.address, this.network);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$OpenSendScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSendScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        public final TransferScreenArgs transferArgs;

        OpenSendScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, TransferScreenArgs transferScreenArgs) {
            super("openSendScreen", OneExecutionStateStrategy.class);
            this.transferArgs = transferScreenArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openSendScreen(this.transferArgs);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$OpenSwapScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSwapScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        public final TokenDetailed tokenDetailed;

        OpenSwapScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, TokenDetailed tokenDetailed) {
            super("openSwapScreen", OneExecutionStateStrategy.class);
            this.tokenDetailed = tokenDetailed;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openSwapScreen(this.tokenDetailed);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$OpenHistoryScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenHistoryScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        OpenHistoryScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("openHistoryScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openHistoryScreen();
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$OpenTokenSettingsScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenTokenSettingsScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String networkId;

        OpenTokenSettingsScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str) {
            super("openTokenSettingsScreen", OneExecutionStateStrategy.class);
            this.networkId = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openTokenSettingsScreen(this.networkId);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$OpenWalletDetailsCommand */
    /* loaded from: classes4.dex */
    public class OpenWalletDetailsCommand extends ViewCommand<WalletHomeCryptoView> {
        public final TokenDetailsArgs tokenDetailsArgs;

        OpenWalletDetailsCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, TokenDetailsArgs tokenDetailsArgs) {
            super("openWalletDetails", OneExecutionStateStrategy.class);
            this.tokenDetailsArgs = tokenDetailsArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openWalletDetails(this.tokenDetailsArgs);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes4.dex */
    public class ShowChangeNetworkHintCommand extends ViewCommand<WalletHomeCryptoView> {
        ShowChangeNetworkHintCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State) {
            super("showChangeNetworkHint", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showChangeNetworkHint();
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowSelectTokensOrderTypeDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowSelectTokensOrderTypeDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final boolean isAllNetworksSelected;
        public final TokenSortingData tokensOrderType;

        ShowSelectTokensOrderTypeDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, TokenSortingData tokenSortingData, boolean z) {
            super("showSelectTokensOrderTypeDialog", OneExecutionStateStrategy.class);
            this.tokensOrderType = tokenSortingData;
            this.isAllNetworksSelected = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showSelectTokensOrderTypeDialog(this.tokensOrderType, this.isAllNetworksSelected);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowMenuItemsCommand */
    /* loaded from: classes4.dex */
    public class ShowMenuItemsCommand extends ViewCommand<WalletHomeCryptoView> {
        public final List<ItemOptionsModel> items;

        ShowMenuItemsCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, List<ItemOptionsModel> list) {
            super("showMenuItems", OneExecutionStateStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showMenuItems(this.items);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final List<? extends NetworkItem> availableNetworksItems;
        public final NetworkItem network;
        public final NetworkChoosePurpose purpose;

        ShowChooseNetworkDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, NetworkItem networkItem, List<? extends NetworkItem> list, NetworkChoosePurpose networkChoosePurpose) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = networkItem;
            this.availableNetworksItems = list;
            this.purpose = networkChoosePurpose;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showChooseNetworkDialog(this.network, this.availableNetworksItems, this.purpose);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$RenderNodesCommand */
    /* loaded from: classes4.dex */
    public class RenderNodesCommand extends ViewCommand<WalletHomeCryptoView> {
        public final List<? extends BaseNode> nodes;

        RenderNodesCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, List<? extends BaseNode> list) {
            super("renderNodes", AddToEndSingleStrategy.class);
            this.nodes = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.renderNodes(this.nodes);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String text;

        ShowToastCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showToast(this.text);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletHomeCryptoView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowRefreshingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshingCommand extends ViewCommand<WalletHomeCryptoView> {
        public final boolean show;

        ShowRefreshingCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showRefreshing(this.show);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowActivationConfirmationDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowActivationConfirmationDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowActivationConfirmationDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showActivationConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showActivationConfirmationDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$OpenCreateWalletIntroScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenCreateWalletIntroScreenCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String linkedWalletAddress;
        public final WalletCreationType.Initial walletCreationType;

        OpenCreateWalletIntroScreenCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str, WalletCreationType.Initial initial) {
            super("openCreateWalletIntroScreen", OneExecutionStateStrategy.class);
            this.linkedWalletAddress = str;
            this.walletCreationType = initial;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.openCreateWalletIntroScreen(this.linkedWalletAddress, this.walletCreationType);
        }
    }

    /* compiled from: WalletHomeCryptoView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.WalletHomeCryptoView$$State$ShowSelectOptionsDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowSelectOptionsDialogCommand extends ViewCommand<WalletHomeCryptoView> {
        public final String[] items;
        public final DialogInterface.OnClickListener listener;
        public final String title;

        ShowSelectOptionsDialogCommand(WalletHomeCryptoView$$State walletHomeCryptoView$$State, String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
            super("showSelectOptionsDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.items = strArr;
            this.listener = onClickListener;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoView walletHomeCryptoView) {
            walletHomeCryptoView.showSelectOptionsDialog(this.title, this.items, this.listener);
        }
    }
}
