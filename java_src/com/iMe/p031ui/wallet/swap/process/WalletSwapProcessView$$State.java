package com.iMe.p031ui.wallet.swap.process;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.iMe.model.wallet.crypto.swap.SwapUiState;
import com.iMe.model.wallet.swap.SwapSide;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.iMe.p031ui.wallet.swap.token.WalletSelectTokenFragment;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.binancepay.OutputConvertToken;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State */
/* loaded from: classes4.dex */
public class WalletSwapProcessView$$State extends MvpViewState<WalletSwapProcessView> implements WalletSwapProcessView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void setupScreenForSwap(String str, String str2, int i, boolean z, WalletSwapProcessFragment.NetworkSwitchType networkSwitchType) {
        SetupScreenForSwapCommand setupScreenForSwapCommand = new SetupScreenForSwapCommand(this, str, str2, i, z, networkSwitchType);
        this.viewCommands.beforeApply(setupScreenForSwapCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenForSwap(str, str2, i, z, networkSwitchType);
        }
        this.viewCommands.afterApply(setupScreenForSwapCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void onTokenSelected(SwapSide swapSide, TokenDetailed tokenDetailed, int i) {
        OnTokenSelectedCommand onTokenSelectedCommand = new OnTokenSelectedCommand(this, swapSide, tokenDetailed, i);
        this.viewCommands.beforeApply(onTokenSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTokenSelected(swapSide, tokenDetailed, i);
        }
        this.viewCommands.afterApply(onTokenSelectedCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showTokenBalance(String str) {
        ShowTokenBalanceCommand showTokenBalanceCommand = new ShowTokenBalanceCommand(this, str);
        this.viewCommands.beforeApply(showTokenBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTokenBalance(str);
        }
        this.viewCommands.afterApply(showTokenBalanceCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void renderState(SwapUiState swapUiState) {
        RenderStateCommand renderStateCommand = new RenderStateCommand(this, swapUiState);
        this.viewCommands.beforeApply(renderStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderState(swapUiState);
        }
        this.viewCommands.afterApply(renderStateCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void setupNetwork(Network network, SwapSide swapSide) {
        SetupNetworkCommand setupNetworkCommand = new SetupNetworkCommand(this, network, swapSide);
        this.viewCommands.beforeApply(setupNetworkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetwork(network, swapSide);
        }
        this.viewCommands.afterApply(setupNetworkCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showNotEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
        ShowNotEnoughMoneyErrorDialogCommand showNotEnoughMoneyErrorDialogCommand = new ShowNotEnoughMoneyErrorDialogCommand(this, tokenBuyCoordinatorArgs);
        this.viewCommands.beforeApply(showNotEnoughMoneyErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showNotEnoughMoneyErrorDialog(tokenBuyCoordinatorArgs);
        }
        this.viewCommands.afterApply(showNotEnoughMoneyErrorDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showNotEnoughMoneyBinanceErrorDialog() {
        ShowNotEnoughMoneyBinanceErrorDialogCommand showNotEnoughMoneyBinanceErrorDialogCommand = new ShowNotEnoughMoneyBinanceErrorDialogCommand(this);
        this.viewCommands.beforeApply(showNotEnoughMoneyBinanceErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showNotEnoughMoneyBinanceErrorDialog();
        }
        this.viewCommands.afterApply(showNotEnoughMoneyBinanceErrorDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessSwapAlert() {
        ShowSuccessSwapAlertCommand showSuccessSwapAlertCommand = new ShowSuccessSwapAlertCommand(this);
        this.viewCommands.beforeApply(showSuccessSwapAlertCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSuccessSwapAlert();
        }
        this.viewCommands.afterApply(showSuccessSwapAlertCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSwapConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowSwapConfirmationDialogCommand showSwapConfirmationDialogCommand = new ShowSwapConfirmationDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showSwapConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSwapConfirmationDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showSwapConfirmationDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showSuccessApproveAlert() {
        ShowSuccessApproveAlertCommand showSuccessApproveAlertCommand = new ShowSuccessApproveAlertCommand(this);
        this.viewCommands.beforeApply(showSuccessApproveAlertCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSuccessApproveAlert();
        }
        this.viewCommands.afterApply(showSuccessApproveAlertCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void openSwapFeeScreen(SwapFeeScreenArgs swapFeeScreenArgs) {
        OpenSwapFeeScreenCommand openSwapFeeScreenCommand = new OpenSwapFeeScreenCommand(this, swapFeeScreenArgs);
        this.viewCommands.beforeApply(openSwapFeeScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSwapFeeScreen(swapFeeScreenArgs);
        }
        this.viewCommands.afterApply(openSwapFeeScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void openSelectTokenDialog(TokenDetailed tokenDetailed, WalletSelectTokenFragment.ScreenType screenType, String str, boolean z, Function1<? super TokenDetailed, Unit> function1) {
        OpenSelectTokenDialogCommand openSelectTokenDialogCommand = new OpenSelectTokenDialogCommand(this, tokenDetailed, screenType, str, z, function1);
        this.viewCommands.beforeApply(openSelectTokenDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSelectTokenDialog(tokenDetailed, screenType, str, z, function1);
        }
        this.viewCommands.afterApply(openSelectTokenDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showMinMaxInputValues(TokenDetailed tokenDetailed, OutputConvertToken outputConvertToken) {
        ShowMinMaxInputValuesCommand showMinMaxInputValuesCommand = new ShowMinMaxInputValuesCommand(this, tokenDetailed, outputConvertToken);
        this.viewCommands.beforeApply(showMinMaxInputValuesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showMinMaxInputValues(tokenDetailed, outputConvertToken);
        }
        this.viewCommands.afterApply(showMinMaxInputValuesCommand);
    }

    @Override // com.iMe.p031ui.wallet.swap.process.WalletSwapProcessView
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

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$SetupScreenForSwapCommand */
    /* loaded from: classes4.dex */
    public class SetupScreenForSwapCommand extends ViewCommand<WalletSwapProcessView> {
        public final String description;
        public final boolean isNetworkSwitchVisible;
        public final int logo;
        public final WalletSwapProcessFragment.NetworkSwitchType networkSwitchType;
        public final String title;

        SetupScreenForSwapCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, String str, String str2, int i, boolean z, WalletSwapProcessFragment.NetworkSwitchType networkSwitchType) {
            super("setupScreenForSwap", AddToEndSingleStrategy.class);
            this.title = str;
            this.description = str2;
            this.logo = i;
            this.isNetworkSwitchVisible = z;
            this.networkSwitchType = networkSwitchType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.setupScreenForSwap(this.title, this.description, this.logo, this.isNetworkSwitchVisible, this.networkSwitchType);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$OnTokenSelectedCommand */
    /* loaded from: classes4.dex */
    public class OnTokenSelectedCommand extends ViewCommand<WalletSwapProcessView> {
        public final SwapSide side;
        public final TokenDetailed token;
        public final int tokenDecimal;

        OnTokenSelectedCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, SwapSide swapSide, TokenDetailed tokenDetailed, int i) {
            super("onTokenSelected", AddToEndSingleStrategy.class);
            this.side = swapSide;
            this.token = tokenDetailed;
            this.tokenDecimal = i;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.onTokenSelected(this.side, this.token, this.tokenDecimal);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowTokenBalanceCommand */
    /* loaded from: classes4.dex */
    public class ShowTokenBalanceCommand extends ViewCommand<WalletSwapProcessView> {
        public final String balance;

        ShowTokenBalanceCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, String str) {
            super("showTokenBalance", AddToEndSingleStrategy.class);
            this.balance = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showTokenBalance(this.balance);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$RenderStateCommand */
    /* loaded from: classes4.dex */
    public class RenderStateCommand extends ViewCommand<WalletSwapProcessView> {
        public final SwapUiState state;

        RenderStateCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, SwapUiState swapUiState) {
            super("renderState", AddToEndSingleStrategy.class);
            this.state = swapUiState;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.renderState(this.state);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$SetupNetworkCommand */
    /* loaded from: classes4.dex */
    public class SetupNetworkCommand extends ViewCommand<WalletSwapProcessView> {
        public final Network network;
        public final SwapSide side;

        SetupNetworkCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, Network network, SwapSide swapSide) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.network = network;
            this.side = swapSide;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.setupNetwork(this.network, this.side);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowNotEnoughMoneyErrorDialogCommand extends ViewCommand<WalletSwapProcessView> {
        public final TokenBuyCoordinatorArgs args;

        ShowNotEnoughMoneyErrorDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("showNotEnoughMoneyErrorDialog", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showNotEnoughMoneyErrorDialog(this.args);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowNotEnoughMoneyBinanceErrorDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowNotEnoughMoneyBinanceErrorDialogCommand extends ViewCommand<WalletSwapProcessView> {
        ShowNotEnoughMoneyBinanceErrorDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State) {
            super("showNotEnoughMoneyBinanceErrorDialog", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showNotEnoughMoneyBinanceErrorDialog();
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowSuccessSwapAlertCommand */
    /* loaded from: classes4.dex */
    public class ShowSuccessSwapAlertCommand extends ViewCommand<WalletSwapProcessView> {
        ShowSuccessSwapAlertCommand(WalletSwapProcessView$$State walletSwapProcessView$$State) {
            super("showSuccessSwapAlert", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showSuccessSwapAlert();
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowSwapConfirmationDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowSwapConfirmationDialogCommand extends ViewCommand<WalletSwapProcessView> {
        public final Callbacks$Callback action;
        public final DialogModel model;

        ShowSwapConfirmationDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showSwapConfirmationDialog", OneExecutionStateStrategy.class);
            this.model = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showSwapConfirmationDialog(this.model, this.action);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowSuccessApproveAlertCommand */
    /* loaded from: classes4.dex */
    public class ShowSuccessApproveAlertCommand extends ViewCommand<WalletSwapProcessView> {
        ShowSuccessApproveAlertCommand(WalletSwapProcessView$$State walletSwapProcessView$$State) {
            super("showSuccessApproveAlert", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showSuccessApproveAlert();
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$OpenSwapFeeScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSwapFeeScreenCommand extends ViewCommand<WalletSwapProcessView> {
        public final SwapFeeScreenArgs args;

        OpenSwapFeeScreenCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, SwapFeeScreenArgs swapFeeScreenArgs) {
            super("openSwapFeeScreen", OneExecutionStateStrategy.class);
            this.args = swapFeeScreenArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.openSwapFeeScreen(this.args);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$OpenSelectTokenDialogCommand */
    /* loaded from: classes4.dex */
    public class OpenSelectTokenDialogCommand extends ViewCommand<WalletSwapProcessView> {
        public final Function1<? super TokenDetailed, Unit> action;
        public final String networkId;
        public final boolean onlyPositiveBalance;
        public final WalletSelectTokenFragment.ScreenType selectTokensScreenType;
        public final TokenDetailed selectedToken;

        OpenSelectTokenDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, TokenDetailed tokenDetailed, WalletSelectTokenFragment.ScreenType screenType, String str, boolean z, Function1<? super TokenDetailed, Unit> function1) {
            super("openSelectTokenDialog", OneExecutionStateStrategy.class);
            this.selectedToken = tokenDetailed;
            this.selectTokensScreenType = screenType;
            this.networkId = str;
            this.onlyPositiveBalance = z;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.openSelectTokenDialog(this.selectedToken, this.selectTokensScreenType, this.networkId, this.onlyPositiveBalance, this.action);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand */
    /* loaded from: classes4.dex */
    public class ShowMinMaxInputValuesCommand extends ViewCommand<WalletSwapProcessView> {
        public final OutputConvertToken information;
        public final TokenDetailed token;

        ShowMinMaxInputValuesCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, TokenDetailed tokenDetailed, OutputConvertToken outputConvertToken) {
            super("showMinMaxInputValues", OneExecutionStateStrategy.class);
            this.token = tokenDetailed;
            this.information = outputConvertToken;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showMinMaxInputValues(this.token, this.information);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes4.dex */
    public class ShowChangeNetworkHintCommand extends ViewCommand<WalletSwapProcessView> {
        ShowChangeNetworkHintCommand(WalletSwapProcessView$$State walletSwapProcessView$$State) {
            super("showChangeNetworkHint", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showChangeNetworkHint();
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletSwapProcessView> {
        public final String text;

        ShowToastCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showToast(this.text);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSwapProcessView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletSwapProcessView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletSwapProcessView> {
        public final Function1<? super Network, Unit> action;
        public final List<Network> availableNetworks;
        public final Network network;

        ShowChooseNetworkDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, Network network, List<Network> list, Function1<? super Network, Unit> function1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = network;
            this.availableNetworks = list;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showChooseNetworkDialog(this.network, this.availableNetworks, this.action);
        }
    }
}
