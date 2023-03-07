package com.smedialink.p031ui.wallet.swap.process;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.crypto.swap.SwapFeeScreenArgs;
import com.smedialink.model.wallet.crypto.swap.SwapUiState;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.model.wallet.swap.SwapSide;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessFragment;
import com.smedialink.storage.domain.model.binancepay.OutputConvertToken;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.fork.utils.Callbacks$Callback;
/* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State */
/* loaded from: classes3.dex */
public class WalletSwapProcessView$$State extends MvpViewState<WalletSwapProcessView> implements WalletSwapProcessView {
    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
    public void onTokenSelected(SwapSide swapSide, SelectableToken selectableToken, int i, int i2, NetworkType networkType) {
        OnTokenSelectedCommand onTokenSelectedCommand = new OnTokenSelectedCommand(this, swapSide, selectableToken, i, i2, networkType);
        this.viewCommands.beforeApply(onTokenSelectedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onTokenSelected(swapSide, selectableToken, i, i2, networkType);
        }
        this.viewCommands.afterApply(onTokenSelectedCommand);
    }

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
    public void setupNetworkType(NetworkType networkType, SwapSide swapSide) {
        SetupNetworkTypeCommand setupNetworkTypeCommand = new SetupNetworkTypeCommand(this, networkType, swapSide);
        this.viewCommands.beforeApply(setupNetworkTypeCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetworkType(networkType, swapSide);
        }
        this.viewCommands.afterApply(setupNetworkTypeCommand);
    }

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
    public void openSelectTokenDialog(SwapSide swapSide, SelectableToken selectableToken, List<? extends SelectableToken> list, NetworkType networkType, SelectableType selectableType, boolean z, Function1<? super SelectableToken, Unit> function1) {
        OpenSelectTokenDialogCommand openSelectTokenDialogCommand = new OpenSelectTokenDialogCommand(this, swapSide, selectableToken, list, networkType, selectableType, z, function1);
        this.viewCommands.beforeApply(openSelectTokenDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSelectTokenDialog(swapSide, selectableToken, list, networkType, selectableType, z, function1);
        }
        this.viewCommands.afterApply(openSelectTokenDialogCommand);
    }

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
    public void showMinMaxInputValues(SelectableToken selectableToken, OutputConvertToken outputConvertToken) {
        ShowMinMaxInputValuesCommand showMinMaxInputValuesCommand = new ShowMinMaxInputValuesCommand(this, selectableToken, outputConvertToken);
        this.viewCommands.beforeApply(showMinMaxInputValuesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showMinMaxInputValues(selectableToken, outputConvertToken);
        }
        this.viewCommands.afterApply(showMinMaxInputValuesCommand);
    }

    @Override // com.smedialink.p031ui.wallet.swap.process.WalletSwapProcessView
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

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$SetupScreenForSwapCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$OnTokenSelectedCommand */
    /* loaded from: classes3.dex */
    public class OnTokenSelectedCommand extends ViewCommand<WalletSwapProcessView> {
        public final int maxInputDigits;
        public final NetworkType networkType;
        public final SwapSide side;
        public final SelectableToken token;
        public final int tokenDecimal;

        OnTokenSelectedCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, SwapSide swapSide, SelectableToken selectableToken, int i, int i2, NetworkType networkType) {
            super("onTokenSelected", AddToEndSingleStrategy.class);
            this.side = swapSide;
            this.token = selectableToken;
            this.maxInputDigits = i;
            this.tokenDecimal = i2;
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.onTokenSelected(this.side, this.token, this.maxInputDigits, this.tokenDecimal, this.networkType);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowTokenBalanceCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$RenderStateCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$SetupNetworkTypeCommand */
    /* loaded from: classes3.dex */
    public class SetupNetworkTypeCommand extends ViewCommand<WalletSwapProcessView> {
        public final NetworkType networkType;
        public final SwapSide side;

        SetupNetworkTypeCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, NetworkType networkType, SwapSide swapSide) {
            super("setupNetworkType", AddToEndSingleStrategy.class);
            this.networkType = networkType;
            this.side = swapSide;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.setupNetworkType(this.networkType, this.side);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowNotEnoughMoneyErrorDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowNotEnoughMoneyBinanceErrorDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowSuccessSwapAlertCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowSwapConfirmationDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowSuccessApproveAlertCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$OpenSwapFeeScreenCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$OpenSelectTokenDialogCommand */
    /* loaded from: classes3.dex */
    public class OpenSelectTokenDialogCommand extends ViewCommand<WalletSwapProcessView> {
        public final Function1<? super SelectableToken, Unit> action;
        public final NetworkType networkType;
        public final boolean onlyPositiveBalance;
        public final SelectableToken selectedToken;
        public final SwapSide side;
        public final List<? extends SelectableToken> tokens;
        public final SelectableType type;

        OpenSelectTokenDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, SwapSide swapSide, SelectableToken selectableToken, List<? extends SelectableToken> list, NetworkType networkType, SelectableType selectableType, boolean z, Function1<? super SelectableToken, Unit> function1) {
            super("openSelectTokenDialog", OneExecutionStateStrategy.class);
            this.side = swapSide;
            this.selectedToken = selectableToken;
            this.tokens = list;
            this.networkType = networkType;
            this.type = selectableType;
            this.onlyPositiveBalance = z;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.openSelectTokenDialog(this.side, this.selectedToken, this.tokens, this.networkType, this.type, this.onlyPositiveBalance, this.action);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowMinMaxInputValuesCommand */
    /* loaded from: classes3.dex */
    public class ShowMinMaxInputValuesCommand extends ViewCommand<WalletSwapProcessView> {
        public final OutputConvertToken information;
        public final SelectableToken token;

        ShowMinMaxInputValuesCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, SelectableToken selectableToken, OutputConvertToken outputConvertToken) {
            super("showMinMaxInputValues", OneExecutionStateStrategy.class);
            this.token = selectableToken;
            this.information = outputConvertToken;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showMinMaxInputValues(this.token, this.information);
        }
    }

    /* compiled from: WalletSwapProcessView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowChangeNetworkHintCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
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
    /* renamed from: com.smedialink.ui.wallet.swap.process.WalletSwapProcessView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletSwapProcessView> {
        public final Function1<? super NetworkType, Unit> action;
        public final List<? extends NetworkType> availableNetworks;
        public final NetworkType networkType;

        ShowChooseNetworkDialogCommand(WalletSwapProcessView$$State walletSwapProcessView$$State, NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.networkType = networkType;
            this.availableNetworks = list;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSwapProcessView walletSwapProcessView) {
            walletSwapProcessView.showChooseNetworkDialog(this.networkType, this.availableNetworks, this.action);
        }
    }
}
