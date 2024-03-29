package com.iMe.p030ui.wallet.crypto.wallet_connect.transaction;

import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView$$State */
/* loaded from: classes4.dex */
public class WalletConnectTransactionView$$State extends MvpViewState<WalletConnectTransactionView> implements WalletConnectTransactionView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView
    public void onTransactionSuccess() {
        OnTransactionSuccessCommand onTransactionSuccessCommand = new OnTransactionSuccessCommand(this);
        this.viewCommands.beforeApply(onTransactionSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTransactionSuccess();
        }
        this.viewCommands.afterApply(onTransactionSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView
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

    @Override // com.iMe.p030ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView
    public void showFee(FeeType feeType) {
        ShowFeeCommand showFeeCommand = new ShowFeeCommand(this, feeType);
        this.viewCommands.beforeApply(showFeeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showFee(feeType);
        }
        this.viewCommands.afterApply(showFeeCommand);
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

    /* compiled from: WalletConnectTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView$$State$OnTransactionSuccessCommand */
    /* loaded from: classes4.dex */
    public class OnTransactionSuccessCommand extends ViewCommand<WalletConnectTransactionView> {
        OnTransactionSuccessCommand(WalletConnectTransactionView$$State walletConnectTransactionView$$State) {
            super("onTransactionSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectTransactionView walletConnectTransactionView) {
            walletConnectTransactionView.onTransactionSuccess();
        }
    }

    /* compiled from: WalletConnectTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes4.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<WalletConnectTransactionView> {
        public final String from;
        public final String network;
        public final String peerUrl;

        /* renamed from: to */
        public final String f398to;
        public final String transactionAmount;

        SetupScreenWithDataCommand(WalletConnectTransactionView$$State walletConnectTransactionView$$State, String str, String str2, String str3, String str4, String str5) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.transactionAmount = str;
            this.network = str2;
            this.from = str3;
            this.f398to = str4;
            this.peerUrl = str5;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectTransactionView walletConnectTransactionView) {
            walletConnectTransactionView.setupScreenWithData(this.transactionAmount, this.network, this.from, this.f398to, this.peerUrl);
        }
    }

    /* compiled from: WalletConnectTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView$$State$ShowFeeCommand */
    /* loaded from: classes4.dex */
    public class ShowFeeCommand extends ViewCommand<WalletConnectTransactionView> {
        public final FeeType feeType;

        ShowFeeCommand(WalletConnectTransactionView$$State walletConnectTransactionView$$State, FeeType feeType) {
            super("showFee", AddToEndSingleStrategy.class);
            this.feeType = feeType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectTransactionView walletConnectTransactionView) {
            walletConnectTransactionView.showFee(this.feeType);
        }
    }

    /* compiled from: WalletConnectTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletConnectTransactionView> {
        public final String text;

        ShowToastCommand(WalletConnectTransactionView$$State walletConnectTransactionView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectTransactionView walletConnectTransactionView) {
            walletConnectTransactionView.showToast(this.text);
        }
    }

    /* compiled from: WalletConnectTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletConnectTransactionView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletConnectTransactionView$$State walletConnectTransactionView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectTransactionView walletConnectTransactionView) {
            walletConnectTransactionView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletConnectTransactionView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.transaction.WalletConnectTransactionView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletConnectTransactionView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletConnectTransactionView$$State walletConnectTransactionView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectTransactionView walletConnectTransactionView) {
            walletConnectTransactionView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
