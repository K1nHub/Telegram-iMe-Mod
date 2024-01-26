package com.iMe.p030ui.wallet.crypto.wallet_connect.message_sign;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignView$$State */
/* loaded from: classes.dex */
public class WalletConnectMessageSignView$$State extends MvpViewState<WalletConnectMessageSignView> implements WalletConnectMessageSignView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignView
    public void setupScreenWithData(String str, String str2, String str3) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, str, str2, str3);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(str, str2, str3);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
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

    /* compiled from: WalletConnectMessageSignView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<WalletConnectMessageSignView> {
        public final String from;
        public final String message;
        public final String peerUrl;

        SetupScreenWithDataCommand(WalletConnectMessageSignView$$State walletConnectMessageSignView$$State, String str, String str2, String str3) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.message = str;
            this.from = str2;
            this.peerUrl = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectMessageSignView walletConnectMessageSignView) {
            walletConnectMessageSignView.setupScreenWithData(this.message, this.from, this.peerUrl);
        }
    }

    /* compiled from: WalletConnectMessageSignView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignView$$State$ShowToastCommand */
    /* loaded from: classes.dex */
    public class ShowToastCommand extends ViewCommand<WalletConnectMessageSignView> {
        public final String text;

        ShowToastCommand(WalletConnectMessageSignView$$State walletConnectMessageSignView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectMessageSignView walletConnectMessageSignView) {
            walletConnectMessageSignView.showToast(this.text);
        }
    }

    /* compiled from: WalletConnectMessageSignView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletConnectMessageSignView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletConnectMessageSignView$$State walletConnectMessageSignView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectMessageSignView walletConnectMessageSignView) {
            walletConnectMessageSignView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletConnectMessageSignView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.message_sign.WalletConnectMessageSignView$$State$ShowErrorToastCommand */
    /* loaded from: classes.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletConnectMessageSignView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletConnectMessageSignView$$State walletConnectMessageSignView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectMessageSignView walletConnectMessageSignView) {
            walletConnectMessageSignView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
