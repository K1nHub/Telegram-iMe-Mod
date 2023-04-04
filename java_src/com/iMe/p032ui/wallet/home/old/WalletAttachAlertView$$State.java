package com.iMe.p032ui.wallet.home.old;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State */
/* loaded from: classes3.dex */
public class WalletAttachAlertView$$State extends MvpViewState<WalletAttachAlertView> implements WalletAttachAlertView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.home.old.WalletAttachAlertView
    public void showBalances(List<TokenBalance> list) {
        ShowBalancesCommand showBalancesCommand = new ShowBalancesCommand(this, list);
        this.viewCommands.beforeApply(showBalancesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showBalances(list);
        }
        this.viewCommands.afterApply(showBalancesCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.old.WalletAttachAlertView
    public void showTransactions(List<BaseNode> list) {
        ShowTransactionsCommand showTransactionsCommand = new ShowTransactionsCommand(this, list);
        this.viewCommands.beforeApply(showTransactionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTransactions(list);
        }
        this.viewCommands.afterApply(showTransactionsCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.old.WalletAttachAlertView
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

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    @Override // com.iMe.p032ui.base.mvp.base.BaseView
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

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void onRecipientSelected(String str, String str2, boolean z) {
        OnRecipientSelectedCommand onRecipientSelectedCommand = new OnRecipientSelectedCommand(this, str, str2, z);
        this.viewCommands.beforeApply(onRecipientSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onRecipientSelected(str, str2, z);
        }
        this.viewCommands.afterApply(onRecipientSelectedCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionDialog(String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowRequestPermissionDialogCommand showRequestPermissionDialogCommand = new ShowRequestPermissionDialogCommand(this, str, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showRequestPermissionDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequestPermissionDialog(str, dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showRequestPermissionDialogCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showErrorDialog(String str, String str2, String str3) {
        ShowErrorDialogCommand showErrorDialogCommand = new ShowErrorDialogCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(showErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showErrorDialog(str, str2, str3);
        }
        this.viewCommands.afterApply(showErrorDialogCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void showRequestPermissionSuccessDialog(String str, String str2, Callbacks$Callback callbacks$Callback) {
        ShowRequestPermissionSuccessDialogCommand showRequestPermissionSuccessDialogCommand = new ShowRequestPermissionSuccessDialogCommand(this, str, str2, callbacks$Callback);
        this.viewCommands.beforeApply(showRequestPermissionSuccessDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequestPermissionSuccessDialog(str, str2, callbacks$Callback);
        }
        this.viewCommands.afterApply(showRequestPermissionSuccessDialogCommand);
    }

    @Override // com.iMe.manager.crypto.recipient.CryptoRecipientView
    public void openChatScreen(long j) {
        OpenChatScreenCommand openChatScreenCommand = new OpenChatScreenCommand(this, j);
        this.viewCommands.beforeApply(openChatScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openChatScreen(j);
        }
        this.viewCommands.afterApply(openChatScreenCommand);
    }

    @Override // com.iMe.p032ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        OnNoInternetErrorStateCommand onNoInternetErrorStateCommand = new OnNoInternetErrorStateCommand(this);
        this.viewCommands.beforeApply(onNoInternetErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onNoInternetErrorState();
        }
        this.viewCommands.afterApply(onNoInternetErrorStateCommand);
    }

    @Override // com.iMe.p032ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        OnUnexpectedErrorStateCommand onUnexpectedErrorStateCommand = new OnUnexpectedErrorStateCommand(this);
        this.viewCommands.beforeApply(onUnexpectedErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onUnexpectedErrorState();
        }
        this.viewCommands.afterApply(onUnexpectedErrorStateCommand);
    }

    @Override // com.iMe.p032ui.custom.state.GlobalStateView
    public void onLoadingState() {
        OnLoadingStateCommand onLoadingStateCommand = new OnLoadingStateCommand(this);
        this.viewCommands.beforeApply(onLoadingStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadingState();
        }
        this.viewCommands.afterApply(onLoadingStateCommand);
    }

    @Override // com.iMe.p032ui.custom.state.GlobalStateView
    public void onEmptyState() {
        OnEmptyStateCommand onEmptyStateCommand = new OnEmptyStateCommand(this);
        this.viewCommands.beforeApply(onEmptyStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onEmptyState();
        }
        this.viewCommands.afterApply(onEmptyStateCommand);
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowBalancesCommand */
    /* loaded from: classes3.dex */
    public class ShowBalancesCommand extends ViewCommand<WalletAttachAlertView> {
        public final List<TokenBalance> balances;

        ShowBalancesCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, List<TokenBalance> list) {
            super("showBalances", AddToEndSingleStrategy.class);
            this.balances = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showBalances(this.balances);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowTransactionsCommand */
    /* loaded from: classes3.dex */
    public class ShowTransactionsCommand extends ViewCommand<WalletAttachAlertView> {
        public final List<BaseNode> transactions;

        ShowTransactionsCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, List<BaseNode> list) {
            super("showTransactions", AddToEndSingleStrategy.class);
            this.transactions = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showTransactions(this.transactions);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletAttachAlertView> {
        public final Function1<? super NetworkType, Unit> action;
        public final List<? extends NetworkType> availableNetworks;
        public final NetworkType networkType;

        ShowChooseNetworkDialogCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1) {
            super("showChooseNetworkDialog", AddToEndSingleStrategy.class);
            this.networkType = networkType;
            this.availableNetworks = list;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showChooseNetworkDialog(this.networkType, this.availableNetworks, this.action);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletAttachAlertView> {
        public final String text;

        ShowToastCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showToast(this.text);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletAttachAlertView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$OnRecipientSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnRecipientSelectedCommand extends ViewCommand<WalletAttachAlertView> {
        public final String address;
        public final boolean contactSelected;

        /* renamed from: id */
        public final String f385id;

        OnRecipientSelectedCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, String str, String str2, boolean z) {
            super("onRecipientSelected", OneExecutionStateStrategy.class);
            this.f385id = str;
            this.address = str2;
            this.contactSelected = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.onRecipientSelected(this.f385id, this.address, this.contactSelected);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowRequestPermissionDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowRequestPermissionDialogCommand extends ViewCommand<WalletAttachAlertView> {
        public final Callbacks$Callback action;
        public final DialogModel model;
        public final String recipient;

        ShowRequestPermissionDialogCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showRequestPermissionDialog", OneExecutionStateStrategy.class);
            this.recipient = str;
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showRequestPermissionDialog(this.recipient, this.model, this.action);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowErrorDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorDialogCommand extends ViewCommand<WalletAttachAlertView> {
        public final String buttonText;
        public final String description;
        public final String title;

        ShowErrorDialogCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, String str, String str2, String str3) {
            super("showErrorDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.description = str2;
            this.buttonText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showErrorDialog(this.title, this.description, this.buttonText);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$ShowRequestPermissionSuccessDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowRequestPermissionSuccessDialogCommand extends ViewCommand<WalletAttachAlertView> {
        public final Callbacks$Callback action;
        public final String message;
        public final String title;

        ShowRequestPermissionSuccessDialogCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, String str, String str2, Callbacks$Callback callbacks$Callback) {
            super("showRequestPermissionSuccessDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.message = str2;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.showRequestPermissionSuccessDialog(this.title, this.message, this.action);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$OpenChatScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenChatScreenCommand extends ViewCommand<WalletAttachAlertView> {
        public final long userId;

        OpenChatScreenCommand(WalletAttachAlertView$$State walletAttachAlertView$$State, long j) {
            super("openChatScreen", OneExecutionStateStrategy.class);
            this.userId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.openChatScreen(this.userId);
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$OnNoInternetErrorStateCommand */
    /* loaded from: classes3.dex */
    public class OnNoInternetErrorStateCommand extends ViewCommand<WalletAttachAlertView> {
        OnNoInternetErrorStateCommand(WalletAttachAlertView$$State walletAttachAlertView$$State) {
            super("onNoInternetErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.onNoInternetErrorState();
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$OnUnexpectedErrorStateCommand */
    /* loaded from: classes3.dex */
    public class OnUnexpectedErrorStateCommand extends ViewCommand<WalletAttachAlertView> {
        OnUnexpectedErrorStateCommand(WalletAttachAlertView$$State walletAttachAlertView$$State) {
            super("onUnexpectedErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.onUnexpectedErrorState();
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$OnLoadingStateCommand */
    /* loaded from: classes3.dex */
    public class OnLoadingStateCommand extends ViewCommand<WalletAttachAlertView> {
        OnLoadingStateCommand(WalletAttachAlertView$$State walletAttachAlertView$$State) {
            super("onLoadingState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.onLoadingState();
        }
    }

    /* compiled from: WalletAttachAlertView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView$$State$OnEmptyStateCommand */
    /* loaded from: classes3.dex */
    public class OnEmptyStateCommand extends ViewCommand<WalletAttachAlertView> {
        OnEmptyStateCommand(WalletAttachAlertView$$State walletAttachAlertView$$State) {
            super("onEmptyState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAttachAlertView walletAttachAlertView) {
            walletAttachAlertView.onEmptyState();
        }
    }
}
