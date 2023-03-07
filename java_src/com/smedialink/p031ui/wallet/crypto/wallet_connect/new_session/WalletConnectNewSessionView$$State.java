package com.smedialink.p031ui.wallet.crypto.wallet_connect.new_session;

import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionView$$State */
/* loaded from: classes3.dex */
public class WalletConnectNewSessionView$$State extends MvpViewState<WalletConnectNewSessionView> implements WalletConnectNewSessionView {
    @Override // com.smedialink.p031ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionView
    public void setupScreenWithData(String str, String str2, String str3, String str4, String str5) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, str, str2, str3, str4, str5);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(str, str2, str3, str4, str5);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
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

    /* compiled from: WalletConnectNewSessionView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes3.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<WalletConnectNewSessionView> {
        public final String address;
        public final String iconUrl;
        public final String name;
        public final String network;
        public final String url;

        SetupScreenWithDataCommand(WalletConnectNewSessionView$$State walletConnectNewSessionView$$State, String str, String str2, String str3, String str4, String str5) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.iconUrl = str;
            this.name = str2;
            this.url = str3;
            this.address = str4;
            this.network = str5;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectNewSessionView walletConnectNewSessionView) {
            walletConnectNewSessionView.setupScreenWithData(this.iconUrl, this.name, this.url, this.address, this.network);
        }
    }

    /* compiled from: WalletConnectNewSessionView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletConnectNewSessionView> {
        public final String text;

        ShowToastCommand(WalletConnectNewSessionView$$State walletConnectNewSessionView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectNewSessionView walletConnectNewSessionView) {
            walletConnectNewSessionView.showToast(this.text);
        }
    }

    /* compiled from: WalletConnectNewSessionView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.wallet_connect.new_session.WalletConnectNewSessionView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletConnectNewSessionView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletConnectNewSessionView$$State walletConnectNewSessionView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectNewSessionView walletConnectNewSessionView) {
            walletConnectNewSessionView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
