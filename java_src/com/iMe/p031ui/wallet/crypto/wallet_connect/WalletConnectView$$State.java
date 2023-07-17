package com.iMe.p031ui.wallet.crypto.wallet_connect;

import com.iMe.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State */
/* loaded from: classes4.dex */
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
    public void setupNetwork(Network network) {
        SetupNetworkCommand setupNetworkCommand = new SetupNetworkCommand(this, network);
        this.viewCommands.beforeApply(setupNetworkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetwork(network);
        }
        this.viewCommands.afterApply(setupNetworkCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(Network network, List<Network> list, Function1<? super Network, Unit> function1) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, network, list, function1);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(network, list, function1);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$SetupSessionsItemsCommand */
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
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
    /* loaded from: classes4.dex */
    public class SetupNetworkCommand extends ViewCommand<WalletConnectView> {
        public final Network network;

        SetupNetworkCommand(WalletConnectView$$State walletConnectView$$State, Network network) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.network = network;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.setupNetwork(this.network);
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletConnectView> {
        public final Function1<? super Network, Unit> action;
        public final List<Network> availableNetworks;
        public final Network network;

        ShowChooseNetworkDialogCommand(WalletConnectView$$State walletConnectView$$State, Network network, List<Network> list, Function1<? super Network, Unit> function1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = network;
            this.availableNetworks = list;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.showChooseNetworkDialog(this.network, this.availableNetworks, this.action);
        }
    }
}
