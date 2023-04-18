package com.iMe.p031ui.wallet.crypto.wallet_connect.network_change;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkView$$State */
/* loaded from: classes3.dex */
public class WalletConnectSwitchNetworkView$$State extends MvpViewState<WalletConnectSwitchNetworkView> implements WalletConnectSwitchNetworkView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkView
    public void setupScreenWithData(String str, String str2, String str3, int i, String str4) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, str, str2, str3, i, str4);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(str, str2, str3, i, str4);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
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

    /* compiled from: WalletConnectSwitchNetworkView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes3.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<WalletConnectSwitchNetworkView> {
        public final String iconUrl;
        public final String name;
        public final int networkIconResId;
        public final String networkName;
        public final String url;

        SetupScreenWithDataCommand(WalletConnectSwitchNetworkView$$State walletConnectSwitchNetworkView$$State, String str, String str2, String str3, int i, String str4) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.iconUrl = str;
            this.name = str2;
            this.url = str3;
            this.networkIconResId = i;
            this.networkName = str4;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectSwitchNetworkView walletConnectSwitchNetworkView) {
            walletConnectSwitchNetworkView.setupScreenWithData(this.iconUrl, this.name, this.url, this.networkIconResId, this.networkName);
        }
    }

    /* compiled from: WalletConnectSwitchNetworkView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletConnectSwitchNetworkView> {
        public final String text;

        ShowToastCommand(WalletConnectSwitchNetworkView$$State walletConnectSwitchNetworkView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectSwitchNetworkView walletConnectSwitchNetworkView) {
            walletConnectSwitchNetworkView.showToast(this.text);
        }
    }

    /* compiled from: WalletConnectSwitchNetworkView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletConnectSwitchNetworkView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletConnectSwitchNetworkView$$State walletConnectSwitchNetworkView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectSwitchNetworkView walletConnectSwitchNetworkView) {
            walletConnectSwitchNetworkView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletConnectSwitchNetworkView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.network_change.WalletConnectSwitchNetworkView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletConnectSwitchNetworkView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletConnectSwitchNetworkView$$State walletConnectSwitchNetworkView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletConnectSwitchNetworkView walletConnectSwitchNetworkView) {
            walletConnectSwitchNetworkView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
