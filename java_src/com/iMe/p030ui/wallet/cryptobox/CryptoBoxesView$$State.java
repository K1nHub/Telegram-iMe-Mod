package com.iMe.p030ui.wallet.cryptobox;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.cryptobox.CryptoBoxInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State */
/* loaded from: classes3.dex */
public class CryptoBoxesView$$State extends MvpViewState<CryptoBoxesView> implements CryptoBoxesView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void showChooseOrderDialog(DialogModel dialogModel, List<String> list, int i) {
        ShowChooseOrderDialogCommand showChooseOrderDialogCommand = new ShowChooseOrderDialogCommand(this, dialogModel, list, i);
        this.viewCommands.beforeApply(showChooseOrderDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseOrderDialog(dialogModel, list, i);
        }
        this.viewCommands.afterApply(showChooseOrderDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowConfirmDialogCommand showConfirmDialogCommand = new ShowConfirmDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showConfirmDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showConfirmDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void openCryptoBoxCreationScreen(TLRPC$Chat tLRPC$Chat, Network network) {
        OpenCryptoBoxCreationScreenCommand openCryptoBoxCreationScreenCommand = new OpenCryptoBoxCreationScreenCommand(this, tLRPC$Chat, network);
        this.viewCommands.beforeApply(openCryptoBoxCreationScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCryptoBoxCreationScreen(tLRPC$Chat, network);
        }
        this.viewCommands.afterApply(openCryptoBoxCreationScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void openCryptoBoxDetailsScreen(CryptoBoxInfo cryptoBoxInfo) {
        OpenCryptoBoxDetailsScreenCommand openCryptoBoxDetailsScreenCommand = new OpenCryptoBoxDetailsScreenCommand(this, cryptoBoxInfo);
        this.viewCommands.beforeApply(openCryptoBoxDetailsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCryptoBoxDetailsScreen(cryptoBoxInfo);
        }
        this.viewCommands.afterApply(openCryptoBoxDetailsScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void openAddAdminScreen(long j, TLRPC$Chat tLRPC$Chat) {
        OpenAddAdminScreenCommand openAddAdminScreenCommand = new OpenAddAdminScreenCommand(this, j, tLRPC$Chat);
        this.viewCommands.beforeApply(openAddAdminScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openAddAdminScreen(j, tLRPC$Chat);
        }
        this.viewCommands.afterApply(openAddAdminScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.CryptoBoxesView
    public void renderItems(List<BaseNode> list) {
        RenderItemsCommand renderItemsCommand = new RenderItemsCommand(this, list);
        this.viewCommands.beforeApply(renderItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderItems(list);
        }
        this.viewCommands.afterApply(renderItemsCommand);
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

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void setupNetwork(NetworkItem networkItem) {
        SetupNetworkCommand setupNetworkCommand = new SetupNetworkCommand(this, networkItem);
        this.viewCommands.beforeApply(setupNetworkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetwork(networkItem);
        }
        this.viewCommands.afterApply(setupNetworkCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkItem, list);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkItem, list);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
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

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$ShowChooseOrderDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowChooseOrderDialogCommand extends ViewCommand<CryptoBoxesView> {
        public final DialogModel dialogModel;
        public final int selectedPosition;
        public final List<String> titles;

        ShowChooseOrderDialogCommand(CryptoBoxesView$$State cryptoBoxesView$$State, DialogModel dialogModel, List<String> list, int i) {
            super("showChooseOrderDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.titles = list;
            this.selectedPosition = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.showChooseOrderDialog(this.dialogModel, this.titles, this.selectedPosition);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$ShowConfirmDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmDialogCommand extends ViewCommand<CryptoBoxesView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowConfirmDialogCommand(CryptoBoxesView$$State cryptoBoxesView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.showConfirmDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$OpenCryptoBoxCreationScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCryptoBoxCreationScreenCommand extends ViewCommand<CryptoBoxesView> {
        public final TLRPC$Chat chat;
        public final Network presetNetwork;

        OpenCryptoBoxCreationScreenCommand(CryptoBoxesView$$State cryptoBoxesView$$State, TLRPC$Chat tLRPC$Chat, Network network) {
            super("openCryptoBoxCreationScreen", OneExecutionStateStrategy.class);
            this.chat = tLRPC$Chat;
            this.presetNetwork = network;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.openCryptoBoxCreationScreen(this.chat, this.presetNetwork);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$OpenCryptoBoxDetailsScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCryptoBoxDetailsScreenCommand extends ViewCommand<CryptoBoxesView> {
        public final CryptoBoxInfo cryptoBoxInfo;

        OpenCryptoBoxDetailsScreenCommand(CryptoBoxesView$$State cryptoBoxesView$$State, CryptoBoxInfo cryptoBoxInfo) {
            super("openCryptoBoxDetailsScreen", OneExecutionStateStrategy.class);
            this.cryptoBoxInfo = cryptoBoxInfo;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.openCryptoBoxDetailsScreen(this.cryptoBoxInfo);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$OpenAddAdminScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenAddAdminScreenCommand extends ViewCommand<CryptoBoxesView> {
        public final TLRPC$Chat chat;
        public final long walletBotId;

        OpenAddAdminScreenCommand(CryptoBoxesView$$State cryptoBoxesView$$State, long j, TLRPC$Chat tLRPC$Chat) {
            super("openAddAdminScreen", OneExecutionStateStrategy.class);
            this.walletBotId = j;
            this.chat = tLRPC$Chat;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.openAddAdminScreen(this.walletBotId, this.chat);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$RenderItemsCommand */
    /* loaded from: classes3.dex */
    public class RenderItemsCommand extends ViewCommand<CryptoBoxesView> {
        public final List<BaseNode> items;

        RenderItemsCommand(CryptoBoxesView$$State cryptoBoxesView$$State, List<BaseNode> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.renderItems(this.items);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CryptoBoxesView> {
        public final String text;

        ShowToastCommand(CryptoBoxesView$$State cryptoBoxesView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.showToast(this.text);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CryptoBoxesView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CryptoBoxesView$$State cryptoBoxesView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CryptoBoxesView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CryptoBoxesView$$State cryptoBoxesView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$SetupNetworkCommand */
    /* loaded from: classes3.dex */
    public class SetupNetworkCommand extends ViewCommand<CryptoBoxesView> {
        public final NetworkItem networkItem;

        SetupNetworkCommand(CryptoBoxesView$$State cryptoBoxesView$$State, NetworkItem networkItem) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.networkItem = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.setupNetwork(this.networkItem);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<CryptoBoxesView> {
        public final List<? extends NetworkItem> availableNetworks;
        public final NetworkItem network;

        ShowChooseNetworkDialogCommand(CryptoBoxesView$$State cryptoBoxesView$$State, NetworkItem networkItem, List<? extends NetworkItem> list) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = networkItem;
            this.availableNetworks = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.showChooseNetworkDialog(this.network, this.availableNetworks);
        }
    }

    /* compiled from: CryptoBoxesView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesView$$State$ShowRefreshingCommand */
    /* loaded from: classes3.dex */
    public class ShowRefreshingCommand extends ViewCommand<CryptoBoxesView> {
        public final boolean show;

        ShowRefreshingCommand(CryptoBoxesView$$State cryptoBoxesView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxesView cryptoBoxesView) {
            cryptoBoxesView.showRefreshing(this.show);
        }
    }
}
