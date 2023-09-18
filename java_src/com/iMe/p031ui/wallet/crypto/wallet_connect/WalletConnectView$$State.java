package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State */
/* loaded from: classes6.dex */
public class WalletConnectView$$State extends MvpViewState<WalletConnectView> implements WalletConnectView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectView
    public void setupSessionsItems(List<WalletConnectSessionItem> list) {
        SetupSessionsItemsCommand setupSessionsItemsCommand = new SetupSessionsItemsCommand(this, list);
        this.viewCommands.beforeApply(setupSessionsItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupSessionsItems(list);
        }
        this.viewCommands.afterApply(setupSessionsItemsCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.WalletConnectView
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

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
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

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
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

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$SetupSessionsItemsCommand */
    /* loaded from: classes6.dex */
    public class SetupSessionsItemsCommand extends ViewCommand<WalletConnectView> {
        public final List<WalletConnectSessionItem> items;

        SetupSessionsItemsCommand(WalletConnectView$$State walletConnectView$$State, List<WalletConnectSessionItem> list) {
            super("setupSessionsItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.setupSessionsItems(this.items);
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes6.dex */
    public class ShowChangeNetworkHintCommand extends ViewCommand<WalletConnectView> {
        ShowChangeNetworkHintCommand(WalletConnectView$$State walletConnectView$$State) {
            super("showChangeNetworkHint", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.showChangeNetworkHint();
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowToastCommand */
    /* loaded from: classes6.dex */
    public class ShowToastCommand extends ViewCommand<WalletConnectView> {
        public final String text;

        ShowToastCommand(WalletConnectView$$State walletConnectView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.showToast(this.text);
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletConnectView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletConnectView$$State walletConnectView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowErrorToastCommand */
    /* loaded from: classes6.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletConnectView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletConnectView$$State walletConnectView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$SetupNetworkCommand */
    /* loaded from: classes6.dex */
    public class SetupNetworkCommand extends ViewCommand<WalletConnectView> {
        public final NetworkItem networkItem;

        SetupNetworkCommand(WalletConnectView$$State walletConnectView$$State, NetworkItem networkItem) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.networkItem = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.setupNetwork(this.networkItem);
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes6.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletConnectView> {
        public final List<? extends NetworkItem> availableNetworks;
        public final NetworkItem network;

        ShowChooseNetworkDialogCommand(WalletConnectView$$State walletConnectView$$State, NetworkItem networkItem, List<? extends NetworkItem> list) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = networkItem;
            this.availableNetworks = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.showChooseNetworkDialog(this.network, this.availableNetworks);
        }
    }
}
