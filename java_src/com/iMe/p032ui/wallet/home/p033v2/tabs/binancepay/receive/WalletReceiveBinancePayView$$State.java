package com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.model.wallet.select.SelectableType;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State */
/* loaded from: classes3.dex */
public class WalletReceiveBinancePayView$$State extends MvpViewState<WalletReceiveBinancePayView> implements WalletReceiveBinancePayView {
    @Override // com.iMe.p032ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void showSelectTokenDialog(SelectableType selectableType, List<? extends SelectableToken> list, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> callbacks$Callback1) {
        ShowSelectTokenDialogCommand showSelectTokenDialogCommand = new ShowSelectTokenDialogCommand(this, selectableType, list, networkType, z, callbacks$Callback1);
        this.viewCommands.beforeApply(showSelectTokenDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectTokenDialog(selectableType, list, networkType, z, callbacks$Callback1);
        }
        this.viewCommands.afterApply(showSelectTokenDialogCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void updateSelectedUser() {
        UpdateSelectedUserCommand updateSelectedUserCommand = new UpdateSelectedUserCommand(this);
        this.viewCommands.beforeApply(updateSelectedUserCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateSelectedUser();
        }
        this.viewCommands.afterApply(updateSelectedUserCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void updateSelectedToken() {
        UpdateSelectedTokenCommand updateSelectedTokenCommand = new UpdateSelectedTokenCommand(this);
        this.viewCommands.beforeApply(updateSelectedTokenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateSelectedToken();
        }
        this.viewCommands.afterApply(updateSelectedTokenCommand);
    }

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive.WalletReceiveBinancePayView
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

    @Override // com.iMe.p032ui.wallet.home.p033v2.tabs.binancepay.receive.WalletReceiveBinancePayView
    public void showCreatedCollectionSuccessDialog(String str, String str2, String str3, Callbacks$Callback callbacks$Callback) {
        ShowCreatedCollectionSuccessDialogCommand showCreatedCollectionSuccessDialogCommand = new ShowCreatedCollectionSuccessDialogCommand(this, str, str2, str3, callbacks$Callback);
        this.viewCommands.beforeApply(showCreatedCollectionSuccessDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showCreatedCollectionSuccessDialog(str, str2, str3, callbacks$Callback);
        }
        this.viewCommands.afterApply(showCreatedCollectionSuccessDialogCommand);
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

    /* compiled from: WalletReceiveBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State$ShowSelectTokenDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSelectTokenDialogCommand extends ViewCommand<WalletReceiveBinancePayView> {
        public final Callbacks$Callback1<SelectableToken> action;
        public final NetworkType networkType;
        public final boolean onlyPositiveBalance;
        public final List<? extends SelectableToken> tokens;
        public final SelectableType type;

        ShowSelectTokenDialogCommand(WalletReceiveBinancePayView$$State walletReceiveBinancePayView$$State, SelectableType selectableType, List<? extends SelectableToken> list, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> callbacks$Callback1) {
            super("showSelectTokenDialog", AddToEndSingleStrategy.class);
            this.type = selectableType;
            this.tokens = list;
            this.networkType = networkType;
            this.onlyPositiveBalance = z;
            this.action = callbacks$Callback1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletReceiveBinancePayView walletReceiveBinancePayView) {
            walletReceiveBinancePayView.showSelectTokenDialog(this.type, this.tokens, this.networkType, this.onlyPositiveBalance, this.action);
        }
    }

    /* compiled from: WalletReceiveBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State$UpdateSelectedUserCommand */
    /* loaded from: classes3.dex */
    public class UpdateSelectedUserCommand extends ViewCommand<WalletReceiveBinancePayView> {
        UpdateSelectedUserCommand(WalletReceiveBinancePayView$$State walletReceiveBinancePayView$$State) {
            super("updateSelectedUser", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletReceiveBinancePayView walletReceiveBinancePayView) {
            walletReceiveBinancePayView.updateSelectedUser();
        }
    }

    /* compiled from: WalletReceiveBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State$UpdateSelectedTokenCommand */
    /* loaded from: classes3.dex */
    public class UpdateSelectedTokenCommand extends ViewCommand<WalletReceiveBinancePayView> {
        UpdateSelectedTokenCommand(WalletReceiveBinancePayView$$State walletReceiveBinancePayView$$State) {
            super("updateSelectedToken", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletReceiveBinancePayView walletReceiveBinancePayView) {
            walletReceiveBinancePayView.updateSelectedToken();
        }
    }

    /* compiled from: WalletReceiveBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State$OpenChatScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenChatScreenCommand extends ViewCommand<WalletReceiveBinancePayView> {
        public final long userId;

        OpenChatScreenCommand(WalletReceiveBinancePayView$$State walletReceiveBinancePayView$$State, long j) {
            super("openChatScreen", AddToEndSingleStrategy.class);
            this.userId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletReceiveBinancePayView walletReceiveBinancePayView) {
            walletReceiveBinancePayView.openChatScreen(this.userId);
        }
    }

    /* compiled from: WalletReceiveBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State$ShowCreatedCollectionSuccessDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowCreatedCollectionSuccessDialogCommand extends ViewCommand<WalletReceiveBinancePayView> {
        public final Callbacks$Callback action;
        public final String buttonText;
        public final String message;
        public final String title;

        ShowCreatedCollectionSuccessDialogCommand(WalletReceiveBinancePayView$$State walletReceiveBinancePayView$$State, String str, String str2, String str3, Callbacks$Callback callbacks$Callback) {
            super("showCreatedCollectionSuccessDialog", AddToEndSingleStrategy.class);
            this.title = str;
            this.message = str2;
            this.buttonText = str3;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletReceiveBinancePayView walletReceiveBinancePayView) {
            walletReceiveBinancePayView.showCreatedCollectionSuccessDialog(this.title, this.message, this.buttonText, this.action);
        }
    }

    /* compiled from: WalletReceiveBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletReceiveBinancePayView> {
        public final String text;

        ShowToastCommand(WalletReceiveBinancePayView$$State walletReceiveBinancePayView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletReceiveBinancePayView walletReceiveBinancePayView) {
            walletReceiveBinancePayView.showToast(this.text);
        }
    }

    /* compiled from: WalletReceiveBinancePayView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.binancepay.receive.WalletReceiveBinancePayView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletReceiveBinancePayView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletReceiveBinancePayView$$State walletReceiveBinancePayView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletReceiveBinancePayView walletReceiveBinancePayView) {
            walletReceiveBinancePayView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
