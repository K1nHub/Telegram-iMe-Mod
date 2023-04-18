package com.iMe.p031ui.wallet.swap;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.swap.SwapProtocolInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State */
/* loaded from: classes4.dex */
public class WalletSwapProtocolsView$$State extends MvpViewState<WalletSwapProtocolsView> implements WalletSwapProtocolsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.swap.WalletSwapProtocolsView
    public void showExchangesProviders(List<? extends BaseNode> list) {
        ShowExchangesProvidersCommand showExchangesProvidersCommand = new ShowExchangesProvidersCommand(this, list);
        this.viewCommands.beforeApply(showExchangesProvidersCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showExchangesProviders(list);
        }
        this.viewCommands.afterApply(showExchangesProvidersCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.WalletSwapProtocolsView
    public void showRequiredVerifyDialog() {
        ShowRequiredVerifyDialogCommand showRequiredVerifyDialogCommand = new ShowRequiredVerifyDialogCommand(this);
        this.viewCommands.beforeApply(showRequiredVerifyDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRequiredVerifyDialog();
        }
        this.viewCommands.afterApply(showRequiredVerifyDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.WalletSwapProtocolsView
    public void openBinanceConvertScreen() {
        OpenBinanceConvertScreenCommand openBinanceConvertScreenCommand = new OpenBinanceConvertScreenCommand(this);
        this.viewCommands.beforeApply(openBinanceConvertScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBinanceConvertScreen();
        }
        this.viewCommands.afterApply(openBinanceConvertScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.WalletSwapProtocolsView
    public void openSwapScreen(SwapProtocolInfo swapProtocolInfo, NetworkType networkType) {
        OpenSwapScreenCommand openSwapScreenCommand = new OpenSwapScreenCommand(this, swapProtocolInfo, networkType);
        this.viewCommands.beforeApply(openSwapScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSwapScreen(swapProtocolInfo, networkType);
        }
        this.viewCommands.afterApply(openSwapScreenCommand);
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

    /* compiled from: WalletSwapProtocolsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State$ShowExchangesProvidersCommand */
    /* loaded from: classes4.dex */
    public class ShowExchangesProvidersCommand extends ViewCommand<WalletSwapProtocolsView> {
        public final List<? extends BaseNode> providers;

        ShowExchangesProvidersCommand(WalletSwapProtocolsView$$State walletSwapProtocolsView$$State, List<? extends BaseNode> list) {
            super("showExchangesProviders", AddToEndSingleStrategy.class);
            this.providers = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProtocolsView walletSwapProtocolsView) {
            walletSwapProtocolsView.showExchangesProviders(this.providers);
        }
    }

    /* compiled from: WalletSwapProtocolsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State$ShowRequiredVerifyDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowRequiredVerifyDialogCommand extends ViewCommand<WalletSwapProtocolsView> {
        ShowRequiredVerifyDialogCommand(WalletSwapProtocolsView$$State walletSwapProtocolsView$$State) {
            super("showRequiredVerifyDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProtocolsView walletSwapProtocolsView) {
            walletSwapProtocolsView.showRequiredVerifyDialog();
        }
    }

    /* compiled from: WalletSwapProtocolsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State$OpenBinanceConvertScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBinanceConvertScreenCommand extends ViewCommand<WalletSwapProtocolsView> {
        OpenBinanceConvertScreenCommand(WalletSwapProtocolsView$$State walletSwapProtocolsView$$State) {
            super("openBinanceConvertScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProtocolsView walletSwapProtocolsView) {
            walletSwapProtocolsView.openBinanceConvertScreen();
        }
    }

    /* compiled from: WalletSwapProtocolsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State$OpenSwapScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSwapScreenCommand extends ViewCommand<WalletSwapProtocolsView> {
        public final NetworkType forcedNetworkType;
        public final SwapProtocolInfo item;

        OpenSwapScreenCommand(WalletSwapProtocolsView$$State walletSwapProtocolsView$$State, SwapProtocolInfo swapProtocolInfo, NetworkType networkType) {
            super("openSwapScreen", OneExecutionStateStrategy.class);
            this.item = swapProtocolInfo;
            this.forcedNetworkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProtocolsView walletSwapProtocolsView) {
            walletSwapProtocolsView.openSwapScreen(this.item, this.forcedNetworkType);
        }
    }

    /* compiled from: WalletSwapProtocolsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletSwapProtocolsView> {
        public final String text;

        ShowToastCommand(WalletSwapProtocolsView$$State walletSwapProtocolsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProtocolsView walletSwapProtocolsView) {
            walletSwapProtocolsView.showToast(this.text);
        }
    }

    /* compiled from: WalletSwapProtocolsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSwapProtocolsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSwapProtocolsView$$State walletSwapProtocolsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProtocolsView walletSwapProtocolsView) {
            walletSwapProtocolsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSwapProtocolsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.WalletSwapProtocolsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletSwapProtocolsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletSwapProtocolsView$$State walletSwapProtocolsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProtocolsView walletSwapProtocolsView) {
            walletSwapProtocolsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
