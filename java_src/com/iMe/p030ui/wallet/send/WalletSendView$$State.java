package com.iMe.p030ui.wallet.send;

import android.os.Bundle;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.model.wallet.select.SelectTokenScreenType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.wallet.send.WalletSendPresenter;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State */
/* loaded from: classes4.dex */
public class WalletSendView$$State extends MvpViewState<WalletSendView> implements WalletSendView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void openSelectTokenScreen(SelectTokenScreenType selectTokenScreenType, String str) {
        OpenSelectTokenScreenCommand openSelectTokenScreenCommand = new OpenSelectTokenScreenCommand(this, selectTokenScreenType, str);
        this.viewCommands.beforeApply(openSelectTokenScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSelectTokenScreen(selectTokenScreenType, str);
        }
        this.viewCommands.afterApply(openSelectTokenScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
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

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
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

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void openBuyScreen(TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
        OpenBuyScreenCommand openBuyScreenCommand = new OpenBuyScreenCommand(this, tokenBuyCoordinatorArgs);
        this.viewCommands.beforeApply(openBuyScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBuyScreen(tokenBuyCoordinatorArgs);
        }
        this.viewCommands.afterApply(openBuyScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
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

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
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

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void openChooseContact(Bundle bundle) {
        OpenChooseContactCommand openChooseContactCommand = new OpenChooseContactCommand(this, bundle);
        this.viewCommands.beforeApply(openChooseContactCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openChooseContact(bundle);
        }
        this.viewCommands.afterApply(openChooseContactCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void showChooseNetworkDialog(List<? extends NetworkItem> list, NetworkItem networkItem) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, list, networkItem);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(list, networkItem);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupNetwork(NetworkItem networkItem) {
        SetupNetworkCommand setupNetworkCommand = new SetupNetworkCommand(this, networkItem);
        this.viewCommands.beforeApply(setupNetworkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupNetwork(networkItem);
        }
        this.viewCommands.afterApply(setupNetworkCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void updateStateButtonSend(WalletSendPresenter.SendScreenState sendScreenState) {
        UpdateStateButtonSendCommand updateStateButtonSendCommand = new UpdateStateButtonSendCommand(this, sendScreenState);
        this.viewCommands.beforeApply(updateStateButtonSendCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateStateButtonSend(sendScreenState);
        }
        this.viewCommands.afterApply(updateStateButtonSendCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void renderSelectedToken(String str, String str2, int i, String str3, String str4) {
        RenderSelectedTokenCommand renderSelectedTokenCommand = new RenderSelectedTokenCommand(this, str, str2, i, str3, str4);
        this.viewCommands.beforeApply(renderSelectedTokenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderSelectedToken(str, str2, i, str3, str4);
        }
        this.viewCommands.afterApply(renderSelectedTokenCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void renderInsertedAmountInFiat(String str) {
        RenderInsertedAmountInFiatCommand renderInsertedAmountInFiatCommand = new RenderInsertedAmountInFiatCommand(this, str);
        this.viewCommands.beforeApply(renderInsertedAmountInFiatCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderInsertedAmountInFiat(str);
        }
        this.viewCommands.afterApply(renderInsertedAmountInFiatCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
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

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
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

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void updateFeeView(FeeType feeType) {
        UpdateFeeViewCommand updateFeeViewCommand = new UpdateFeeViewCommand(this, feeType);
        this.viewCommands.beforeApply(updateFeeViewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateFeeView(feeType);
        }
        this.viewCommands.afterApply(updateFeeViewCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupReplenishAddress(String str) {
        SetupReplenishAddressCommand setupReplenishAddressCommand = new SetupReplenishAddressCommand(this, str);
        this.viewCommands.beforeApply(setupReplenishAddressCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupReplenishAddress(str);
        }
        this.viewCommands.afterApply(setupReplenishAddressCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupAvatarRecipient(TLRPC$User tLRPC$User) {
        SetupAvatarRecipientCommand setupAvatarRecipientCommand = new SetupAvatarRecipientCommand(this, tLRPC$User);
        this.viewCommands.beforeApply(setupAvatarRecipientCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupAvatarRecipient(tLRPC$User);
        }
        this.viewCommands.afterApply(setupAvatarRecipientCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void hideFeeView() {
        HideFeeViewCommand hideFeeViewCommand = new HideFeeViewCommand(this);
        this.viewCommands.beforeApply(hideFeeViewCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.hideFeeView();
        }
        this.viewCommands.afterApply(hideFeeViewCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupAmount(String str) {
        SetupAmountCommand setupAmountCommand = new SetupAmountCommand(this, str);
        this.viewCommands.beforeApply(setupAmountCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupAmount(str);
        }
        this.viewCommands.afterApply(setupAmountCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupRecipientInputErrorState(boolean z) {
        SetupRecipientInputErrorStateCommand setupRecipientInputErrorStateCommand = new SetupRecipientInputErrorStateCommand(this, z);
        this.viewCommands.beforeApply(setupRecipientInputErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupRecipientInputErrorState(z);
        }
        this.viewCommands.afterApply(setupRecipientInputErrorStateCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupTokenInputErrorState(boolean z) {
        SetupTokenInputErrorStateCommand setupTokenInputErrorStateCommand = new SetupTokenInputErrorStateCommand(this, z);
        this.viewCommands.beforeApply(setupTokenInputErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupTokenInputErrorState(z);
        }
        this.viewCommands.afterApply(setupTokenInputErrorStateCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupAmountInputErrorState(boolean z, String str) {
        SetupAmountInputErrorStateCommand setupAmountInputErrorStateCommand = new SetupAmountInputErrorStateCommand(this, z, str);
        this.viewCommands.beforeApply(setupAmountInputErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupAmountInputErrorState(z, str);
        }
        this.viewCommands.afterApply(setupAmountInputErrorStateCommand);
    }

    @Override // com.iMe.p030ui.wallet.send.WalletSendView
    public void setupCommentVisibility(boolean z) {
        SetupCommentVisibilityCommand setupCommentVisibilityCommand = new SetupCommentVisibilityCommand(this, z);
        this.viewCommands.beforeApply(setupCommentVisibilityCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupCommentVisibility(z);
        }
        this.viewCommands.afterApply(setupCommentVisibilityCommand);
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

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$OpenSelectTokenScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSelectTokenScreenCommand extends ViewCommand<WalletSendView> {
        public final String networkId;
        public final SelectTokenScreenType selectTokensScreenType;

        OpenSelectTokenScreenCommand(WalletSendView$$State walletSendView$$State, SelectTokenScreenType selectTokenScreenType, String str) {
            super("openSelectTokenScreen", OneExecutionStateStrategy.class);
            this.selectTokensScreenType = selectTokenScreenType;
            this.networkId = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.openSelectTokenScreen(this.selectTokensScreenType, this.networkId);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowSuccessSendCommand */
    /* loaded from: classes4.dex */
    public class ShowSuccessSendCommand extends ViewCommand<WalletSendView> {
        public final String message;

        ShowSuccessSendCommand(WalletSendView$$State walletSendView$$State, String str) {
            super("showSuccessSend", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showSuccessSend(this.message);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowNoEnoughMoneyErrorDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowNoEnoughMoneyErrorDialogCommand extends ViewCommand<WalletSendView> {
        public final TokenBuyCoordinatorArgs args;

        ShowNoEnoughMoneyErrorDialogCommand(WalletSendView$$State walletSendView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("showNoEnoughMoneyErrorDialog", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showNoEnoughMoneyErrorDialog(this.args);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$OpenBuyScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBuyScreenCommand extends ViewCommand<WalletSendView> {
        public final TokenBuyCoordinatorArgs args;

        OpenBuyScreenCommand(WalletSendView$$State walletSendView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("openBuyScreen", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.openBuyScreen(this.args);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowRecipientNotFoundErrorCommand */
    /* loaded from: classes4.dex */
    public class ShowRecipientNotFoundErrorCommand extends ViewCommand<WalletSendView> {
        ShowRecipientNotFoundErrorCommand(WalletSendView$$State walletSendView$$State) {
            super("showRecipientNotFoundError", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showRecipientNotFoundError();
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowRecipientWalletNotActivatedErrorCommand */
    /* loaded from: classes4.dex */
    public class ShowRecipientWalletNotActivatedErrorCommand extends ViewCommand<WalletSendView> {
        ShowRecipientWalletNotActivatedErrorCommand(WalletSendView$$State walletSendView$$State) {
            super("showRecipientWalletNotActivatedError", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showRecipientWalletNotActivatedError();
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$OpenChooseContactCommand */
    /* loaded from: classes4.dex */
    public class OpenChooseContactCommand extends ViewCommand<WalletSendView> {
        public final Bundle args;

        OpenChooseContactCommand(WalletSendView$$State walletSendView$$State, Bundle bundle) {
            super("openChooseContact", OneExecutionStateStrategy.class);
            this.args = bundle;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.openChooseContact(this.args);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<WalletSendView> {
        public final List<? extends NetworkItem> availableNetworks;
        public final NetworkItem network;

        ShowChooseNetworkDialogCommand(WalletSendView$$State walletSendView$$State, List<? extends NetworkItem> list, NetworkItem networkItem) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.availableNetworks = list;
            this.network = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showChooseNetworkDialog(this.availableNetworks, this.network);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupNetworkCommand */
    /* loaded from: classes4.dex */
    public class SetupNetworkCommand extends ViewCommand<WalletSendView> {
        public final NetworkItem networkItem;

        SetupNetworkCommand(WalletSendView$$State walletSendView$$State, NetworkItem networkItem) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.networkItem = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupNetwork(this.networkItem);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$UpdateStateButtonSendCommand */
    /* loaded from: classes4.dex */
    public class UpdateStateButtonSendCommand extends ViewCommand<WalletSendView> {
        public final WalletSendPresenter.SendScreenState state;

        UpdateStateButtonSendCommand(WalletSendView$$State walletSendView$$State, WalletSendPresenter.SendScreenState sendScreenState) {
            super("updateStateButtonSend", AddToEndSingleStrategy.class);
            this.state = sendScreenState;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.updateStateButtonSend(this.state);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$RenderSelectedTokenCommand */
    /* loaded from: classes4.dex */
    public class RenderSelectedTokenCommand extends ViewCommand<WalletSendView> {
        public final int decimals;
        public final String insertedAmountInDollarsText;
        public final String tokenBalanceText;
        public final String tokenLogoUrl;
        public final String tokenText;

        RenderSelectedTokenCommand(WalletSendView$$State walletSendView$$State, String str, String str2, int i, String str3, String str4) {
            super("renderSelectedToken", AddToEndSingleStrategy.class);
            this.tokenText = str;
            this.tokenLogoUrl = str2;
            this.decimals = i;
            this.tokenBalanceText = str3;
            this.insertedAmountInDollarsText = str4;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.renderSelectedToken(this.tokenText, this.tokenLogoUrl, this.decimals, this.tokenBalanceText, this.insertedAmountInDollarsText);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$RenderInsertedAmountInFiatCommand */
    /* loaded from: classes4.dex */
    public class RenderInsertedAmountInFiatCommand extends ViewCommand<WalletSendView> {
        public final String insertedAmountInFiat;

        RenderInsertedAmountInFiatCommand(WalletSendView$$State walletSendView$$State, String str) {
            super("renderInsertedAmountInFiat", AddToEndSingleStrategy.class);
            this.insertedAmountInFiat = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.renderInsertedAmountInFiat(this.insertedAmountInFiat);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$OnSuccessValidationCommand */
    /* loaded from: classes4.dex */
    public class OnSuccessValidationCommand extends ViewCommand<WalletSendView> {
        public final boolean isAllowSendInfoToChat;
        public final DialogModel model;

        OnSuccessValidationCommand(WalletSendView$$State walletSendView$$State, DialogModel dialogModel, boolean z) {
            super("onSuccessValidation", AddToEndSingleStrategy.class);
            this.model = dialogModel;
            this.isAllowSendInfoToChat = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.onSuccessValidation(this.model, this.isAllowSendInfoToChat);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ResetScreenCommand */
    /* loaded from: classes4.dex */
    public class ResetScreenCommand extends ViewCommand<WalletSendView> {
        ResetScreenCommand(WalletSendView$$State walletSendView$$State) {
            super("resetScreen", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.resetScreen();
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$UpdateFeeViewCommand */
    /* loaded from: classes4.dex */
    public class UpdateFeeViewCommand extends ViewCommand<WalletSendView> {
        public final FeeType feeType;

        UpdateFeeViewCommand(WalletSendView$$State walletSendView$$State, FeeType feeType) {
            super("updateFeeView", AddToEndSingleStrategy.class);
            this.feeType = feeType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.updateFeeView(this.feeType);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupReplenishAddressCommand */
    /* loaded from: classes4.dex */
    public class SetupReplenishAddressCommand extends ViewCommand<WalletSendView> {
        public final String address;

        SetupReplenishAddressCommand(WalletSendView$$State walletSendView$$State, String str) {
            super("setupReplenishAddress", AddToEndSingleStrategy.class);
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupReplenishAddress(this.address);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupAvatarRecipientCommand */
    /* loaded from: classes4.dex */
    public class SetupAvatarRecipientCommand extends ViewCommand<WalletSendView> {
        public final TLRPC$User user;

        SetupAvatarRecipientCommand(WalletSendView$$State walletSendView$$State, TLRPC$User tLRPC$User) {
            super("setupAvatarRecipient", AddToEndSingleStrategy.class);
            this.user = tLRPC$User;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupAvatarRecipient(this.user);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$HideFeeViewCommand */
    /* loaded from: classes4.dex */
    public class HideFeeViewCommand extends ViewCommand<WalletSendView> {
        HideFeeViewCommand(WalletSendView$$State walletSendView$$State) {
            super("hideFeeView", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.hideFeeView();
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupAmountCommand */
    /* loaded from: classes4.dex */
    public class SetupAmountCommand extends ViewCommand<WalletSendView> {
        public final String amount;

        SetupAmountCommand(WalletSendView$$State walletSendView$$State, String str) {
            super("setupAmount", AddToEndSingleStrategy.class);
            this.amount = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupAmount(this.amount);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupRecipientInputErrorStateCommand */
    /* loaded from: classes4.dex */
    public class SetupRecipientInputErrorStateCommand extends ViewCommand<WalletSendView> {
        public final boolean isError;

        SetupRecipientInputErrorStateCommand(WalletSendView$$State walletSendView$$State, boolean z) {
            super("setupRecipientInputErrorState", AddToEndSingleStrategy.class);
            this.isError = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupRecipientInputErrorState(this.isError);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupTokenInputErrorStateCommand */
    /* loaded from: classes4.dex */
    public class SetupTokenInputErrorStateCommand extends ViewCommand<WalletSendView> {
        public final boolean isError;

        SetupTokenInputErrorStateCommand(WalletSendView$$State walletSendView$$State, boolean z) {
            super("setupTokenInputErrorState", AddToEndSingleStrategy.class);
            this.isError = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupTokenInputErrorState(this.isError);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupAmountInputErrorStateCommand */
    /* loaded from: classes4.dex */
    public class SetupAmountInputErrorStateCommand extends ViewCommand<WalletSendView> {
        public final String clickableText;
        public final boolean isError;

        SetupAmountInputErrorStateCommand(WalletSendView$$State walletSendView$$State, boolean z, String str) {
            super("setupAmountInputErrorState", AddToEndSingleStrategy.class);
            this.isError = z;
            this.clickableText = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupAmountInputErrorState(this.isError, this.clickableText);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$SetupCommentVisibilityCommand */
    /* loaded from: classes4.dex */
    public class SetupCommentVisibilityCommand extends ViewCommand<WalletSendView> {
        public final boolean isVisible;

        SetupCommentVisibilityCommand(WalletSendView$$State walletSendView$$State, boolean z) {
            super("setupCommentVisibility", AddToEndSingleStrategy.class);
            this.isVisible = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.setupCommentVisibility(this.isVisible);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletSendView> {
        public final String text;

        ShowToastCommand(WalletSendView$$State walletSendView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showToast(this.text);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSendView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSendView$$State walletSendView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletSendView$$State.java */
    /* renamed from: com.iMe.ui.wallet.send.WalletSendView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletSendView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletSendView$$State walletSendView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSendView walletSendView) {
            walletSendView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
