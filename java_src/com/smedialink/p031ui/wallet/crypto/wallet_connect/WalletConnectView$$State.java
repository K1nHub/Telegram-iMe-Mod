package com.smedialink.p031ui.wallet.crypto.wallet_connect;

import com.smedialink.model.wallet.crypto.wallet_connect.WalletConnectSessionItem;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectView$$State */
/* loaded from: classes3.dex */
public class WalletConnectView$$State extends MvpViewState<WalletConnectView> implements WalletConnectView {
    @Override // com.smedialink.p031ui.wallet.crypto.wallet_connect.WalletConnectView
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

    @Override // com.smedialink.p031ui.wallet.crypto.wallet_connect.WalletConnectView
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

    @Override // com.smedialink.p031ui.base.mvp.SwitchNetworkView
    public void setupNetworkType(NetworkType networkType) {
        SetupNetworkTypeCommand setupNetworkTypeCommand = new SetupNetworkTypeCommand(this, networkType);
        this.viewCommands.beforeApply(setupNetworkTypeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetworkType(networkType);
        }
        this.viewCommands.afterApply(setupNetworkTypeCommand);
    }

    @Override // com.smedialink.p031ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkType, list, function1);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkType, list, function1);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$SetupSessionsItemsCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$SetupNetworkTypeCommand */
    /* loaded from: classes3.dex */
    public class SetupNetworkTypeCommand extends ViewCommand<WalletConnectView> {
        public final NetworkType networkType;

        SetupNetworkTypeCommand(WalletConnectView$$State walletConnectView$$State, NetworkType networkType) {
            super("setupNetworkType", AddToEndSingleStrategy.class);
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.setupNetworkType(this.networkType);
        }
    }

    /* compiled from: WalletConnectView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.WalletConnectView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletConnectView> {
        public final Function1<? super NetworkType, Unit> action;
        public final List<? extends NetworkType> availableNetworks;
        public final NetworkType networkType;

        ShowChooseNetworkDialogCommand(WalletConnectView$$State walletConnectView$$State, NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.networkType = networkType;
            this.availableNetworks = list;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectView walletConnectView) {
            walletConnectView.showChooseNetworkDialog(this.networkType, this.availableNetworks, this.action);
        }
    }
}
