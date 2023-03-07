package com.smedialink.p031ui.wallet.actions.send.amount;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.select.SelectableToken;
import com.smedialink.model.wallet.select.SelectableType;
import com.smedialink.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountPresenter;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.fork.utils.Callbacks$Callback1;
/* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State */
/* loaded from: classes3.dex */
public class WalletSendAmountView$$State extends MvpViewState<WalletSendAmountView> implements WalletSendAmountView {
    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void showSuccessSend(String str) {
        ShowSuccessSendCommand showSuccessSendCommand = new ShowSuccessSendCommand(this, str);
        this.viewCommands.beforeApply(showSuccessSendCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSuccessSend(str);
        }
        this.viewCommands.afterApply(showSuccessSendCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void showNoEnoughMoneyErrorDialog(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
        ShowNoEnoughMoneyErrorDialogCommand showNoEnoughMoneyErrorDialogCommand = new ShowNoEnoughMoneyErrorDialogCommand(this, tokenBuyCoordinatorArgs);
        this.viewCommands.beforeApply(showNoEnoughMoneyErrorDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showNoEnoughMoneyErrorDialog(tokenBuyCoordinatorArgs);
        }
        this.viewCommands.afterApply(showNoEnoughMoneyErrorDialogCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void showRecipientNotFoundError() {
        ShowRecipientNotFoundErrorCommand showRecipientNotFoundErrorCommand = new ShowRecipientNotFoundErrorCommand(this);
        this.viewCommands.beforeApply(showRecipientNotFoundErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRecipientNotFoundError();
        }
        this.viewCommands.afterApply(showRecipientNotFoundErrorCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void showRecipientWalletNotActivatedError() {
        ShowRecipientWalletNotActivatedErrorCommand showRecipientWalletNotActivatedErrorCommand = new ShowRecipientWalletNotActivatedErrorCommand(this);
        this.viewCommands.beforeApply(showRecipientWalletNotActivatedErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRecipientWalletNotActivatedError();
        }
        this.viewCommands.afterApply(showRecipientWalletNotActivatedErrorCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
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

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void showChooseNetworkDialog(List<? extends NetworkType> list, NetworkType networkType, Callbacks$Callback1<NetworkType> callbacks$Callback1) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, list, networkType, callbacks$Callback1);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(list, networkType, callbacks$Callback1);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void onSuccessValidation(DialogModel dialogModel, boolean z) {
        OnSuccessValidationCommand onSuccessValidationCommand = new OnSuccessValidationCommand(this, dialogModel, z);
        this.viewCommands.beforeApply(onSuccessValidationCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessValidation(dialogModel, z);
        }
        this.viewCommands.afterApply(onSuccessValidationCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void resetScreen() {
        ResetScreenCommand resetScreenCommand = new ResetScreenCommand(this);
        this.viewCommands.beforeApply(resetScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.resetScreen();
        }
        this.viewCommands.afterApply(resetScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void setupScreenState(WalletSendAmountPresenter.SendScreenState sendScreenState) {
        SetupScreenStateCommand setupScreenStateCommand = new SetupScreenStateCommand(this, sendScreenState);
        this.viewCommands.beforeApply(setupScreenStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenState(sendScreenState);
        }
        this.viewCommands.afterApply(setupScreenStateCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void updateFeeView() {
        UpdateFeeViewCommand updateFeeViewCommand = new UpdateFeeViewCommand(this);
        this.viewCommands.beforeApply(updateFeeViewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateFeeView();
        }
        this.viewCommands.afterApply(updateFeeViewCommand);
    }

    @Override // com.smedialink.p031ui.wallet.actions.send.amount.WalletSendAmountView
    public void showBalance(TokenBalance tokenBalance) {
        ShowBalanceCommand showBalanceCommand = new ShowBalanceCommand(this, tokenBalance);
        this.viewCommands.beforeApply(showBalanceCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showBalance(tokenBalance);
        }
        this.viewCommands.afterApply(showBalanceCommand);
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

    @Override // com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay.replenish.WalletBinancePayReplenishView
    public void setupReplenishAddress() {
        SetupReplenishAddressCommand setupReplenishAddressCommand = new SetupReplenishAddressCommand(this);
        this.viewCommands.beforeApply(setupReplenishAddressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupReplenishAddress();
        }
        this.viewCommands.afterApply(setupReplenishAddressCommand);
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowSuccessSendCommand */
    /* loaded from: classes3.dex */
    public class ShowSuccessSendCommand extends ViewCommand<WalletSendAmountView> {
        public final String message;

        ShowSuccessSendCommand(WalletSendAmountView$$State walletSendAmountView$$State, String str) {
            super("showSuccessSend", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showSuccessSend(this.message);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowNoEnoughMoneyErrorDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowNoEnoughMoneyErrorDialogCommand extends ViewCommand<WalletSendAmountView> {
        public final TokenBuyCoordinatorArgs args;

        ShowNoEnoughMoneyErrorDialogCommand(WalletSendAmountView$$State walletSendAmountView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("showNoEnoughMoneyErrorDialog", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showNoEnoughMoneyErrorDialog(this.args);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowRecipientNotFoundErrorCommand */
    /* loaded from: classes3.dex */
    public class ShowRecipientNotFoundErrorCommand extends ViewCommand<WalletSendAmountView> {
        ShowRecipientNotFoundErrorCommand(WalletSendAmountView$$State walletSendAmountView$$State) {
            super("showRecipientNotFoundError", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showRecipientNotFoundError();
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowRecipientWalletNotActivatedErrorCommand */
    /* loaded from: classes3.dex */
    public class ShowRecipientWalletNotActivatedErrorCommand extends ViewCommand<WalletSendAmountView> {
        ShowRecipientWalletNotActivatedErrorCommand(WalletSendAmountView$$State walletSendAmountView$$State) {
            super("showRecipientWalletNotActivatedError", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showRecipientWalletNotActivatedError();
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowSelectTokenDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSelectTokenDialogCommand extends ViewCommand<WalletSendAmountView> {
        public final Callbacks$Callback1<SelectableToken> action;
        public final NetworkType networkType;
        public final boolean onlyPositiveBalance;
        public final List<? extends SelectableToken> tokens;
        public final SelectableType type;

        ShowSelectTokenDialogCommand(WalletSendAmountView$$State walletSendAmountView$$State, SelectableType selectableType, List<? extends SelectableToken> list, NetworkType networkType, boolean z, Callbacks$Callback1<SelectableToken> callbacks$Callback1) {
            super("showSelectTokenDialog", OneExecutionStateStrategy.class);
            this.type = selectableType;
            this.tokens = list;
            this.networkType = networkType;
            this.onlyPositiveBalance = z;
            this.action = callbacks$Callback1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showSelectTokenDialog(this.type, this.tokens, this.networkType, this.onlyPositiveBalance, this.action);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletSendAmountView> {
        public final Callbacks$Callback1<NetworkType> action;
        public final List<? extends NetworkType> availableNetworks;
        public final NetworkType networkType;

        ShowChooseNetworkDialogCommand(WalletSendAmountView$$State walletSendAmountView$$State, List<? extends NetworkType> list, NetworkType networkType, Callbacks$Callback1<NetworkType> callbacks$Callback1) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.availableNetworks = list;
            this.networkType = networkType;
            this.action = callbacks$Callback1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showChooseNetworkDialog(this.availableNetworks, this.networkType, this.action);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$OnSuccessValidationCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessValidationCommand extends ViewCommand<WalletSendAmountView> {
        public final DialogModel amount;
        public final boolean isAllowSendInfoToChat;

        OnSuccessValidationCommand(WalletSendAmountView$$State walletSendAmountView$$State, DialogModel dialogModel, boolean z) {
            super("onSuccessValidation", AddToEndSingleStrategy.class);
            this.amount = dialogModel;
            this.isAllowSendInfoToChat = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.onSuccessValidation(this.amount, this.isAllowSendInfoToChat);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ResetScreenCommand */
    /* loaded from: classes3.dex */
    public class ResetScreenCommand extends ViewCommand<WalletSendAmountView> {
        ResetScreenCommand(WalletSendAmountView$$State walletSendAmountView$$State) {
            super("resetScreen", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.resetScreen();
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$SetupScreenStateCommand */
    /* loaded from: classes3.dex */
    public class SetupScreenStateCommand extends ViewCommand<WalletSendAmountView> {
        public final WalletSendAmountPresenter.SendScreenState currentScreenState;

        SetupScreenStateCommand(WalletSendAmountView$$State walletSendAmountView$$State, WalletSendAmountPresenter.SendScreenState sendScreenState) {
            super("setupScreenState", AddToEndSingleStrategy.class);
            this.currentScreenState = sendScreenState;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.setupScreenState(this.currentScreenState);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$UpdateFeeViewCommand */
    /* loaded from: classes3.dex */
    public class UpdateFeeViewCommand extends ViewCommand<WalletSendAmountView> {
        UpdateFeeViewCommand(WalletSendAmountView$$State walletSendAmountView$$State) {
            super("updateFeeView", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.updateFeeView();
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowBalanceCommand */
    /* loaded from: classes3.dex */
    public class ShowBalanceCommand extends ViewCommand<WalletSendAmountView> {
        public final TokenBalance balance;

        ShowBalanceCommand(WalletSendAmountView$$State walletSendAmountView$$State, TokenBalance tokenBalance) {
            super("showBalance", AddToEndSingleStrategy.class);
            this.balance = tokenBalance;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showBalance(this.balance);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletSendAmountView> {
        public final String text;

        ShowToastCommand(WalletSendAmountView$$State walletSendAmountView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showToast(this.text);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSendAmountView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSendAmountView$$State walletSendAmountView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSendAmountView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountView$$State$SetupReplenishAddressCommand */
    /* loaded from: classes3.dex */
    public class SetupReplenishAddressCommand extends ViewCommand<WalletSendAmountView> {
        SetupReplenishAddressCommand(WalletSendAmountView$$State walletSendAmountView$$State) {
            super("setupReplenishAddress", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendAmountView walletSendAmountView) {
            walletSendAmountView.setupReplenishAddress();
        }
    }
}
