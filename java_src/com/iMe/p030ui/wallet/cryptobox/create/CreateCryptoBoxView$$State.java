package com.iMe.p030ui.wallet.cryptobox.create;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.cryptobox.CryptoBoxCreationRulesItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.staking.TransactionStep;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.model.wallet.crypto.send.fee.FeeType;
import com.iMe.navigation.wallet.coordinator.args.TokenBuyCoordinatorArgs;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State */
/* loaded from: classes4.dex */
public class CreateCryptoBoxView$$State extends MvpViewState<CreateCryptoBoxView> implements CreateCryptoBoxView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showCreationSuccess() {
        ShowCreationSuccessCommand showCreationSuccessCommand = new ShowCreationSuccessCommand(this);
        this.viewCommands.beforeApply(showCreationSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showCreationSuccess();
        }
        this.viewCommands.afterApply(showCreationSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showActionError(String str) {
        ShowActionErrorCommand showActionErrorCommand = new ShowActionErrorCommand(this, str);
        this.viewCommands.beforeApply(showActionErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActionError(str);
        }
        this.viewCommands.afterApply(showActionErrorCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowConfirmDialogCommand showConfirmDialogCommand = new ShowConfirmDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showConfirmDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showConfirmDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void showCryptoBoxInfoDialog(String str) {
        ShowCryptoBoxInfoDialogCommand showCryptoBoxInfoDialogCommand = new ShowCryptoBoxInfoDialogCommand(this, str);
        this.viewCommands.beforeApply(showCryptoBoxInfoDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showCryptoBoxInfoDialog(str);
        }
        this.viewCommands.afterApply(showCryptoBoxInfoDialogCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void openSelectTokenScreen(String str) {
        OpenSelectTokenScreenCommand openSelectTokenScreenCommand = new OpenSelectTokenScreenCommand(this, str);
        this.viewCommands.beforeApply(openSelectTokenScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSelectTokenScreen(str);
        }
        this.viewCommands.afterApply(openSelectTokenScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void openSelectChatScreen(Long l) {
        OpenSelectChatScreenCommand openSelectChatScreenCommand = new OpenSelectChatScreenCommand(this, l);
        this.viewCommands.beforeApply(openSelectChatScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openSelectChatScreen(l);
        }
        this.viewCommands.afterApply(openSelectChatScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void openAddAdminScreen(long j, TLRPC$Chat tLRPC$Chat) {
        OpenAddAdminScreenCommand openAddAdminScreenCommand = new OpenAddAdminScreenCommand(this, j, tLRPC$Chat);
        this.viewCommands.beforeApply(openAddAdminScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openAddAdminScreen(j, tLRPC$Chat);
        }
        this.viewCommands.afterApply(openAddAdminScreenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
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

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderCryptoBoxCreationRules(CryptoBoxCreationRulesItem cryptoBoxCreationRulesItem, boolean z) {
        RenderCryptoBoxCreationRulesCommand renderCryptoBoxCreationRulesCommand = new RenderCryptoBoxCreationRulesCommand(this, cryptoBoxCreationRulesItem, z);
        this.viewCommands.beforeApply(renderCryptoBoxCreationRulesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderCryptoBoxCreationRules(cryptoBoxCreationRulesItem, z);
        }
        this.viewCommands.afterApply(renderCryptoBoxCreationRulesCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderSelectedChat(TLRPC$Chat tLRPC$Chat) {
        RenderSelectedChatCommand renderSelectedChatCommand = new RenderSelectedChatCommand(this, tLRPC$Chat);
        this.viewCommands.beforeApply(renderSelectedChatCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderSelectedChat(tLRPC$Chat);
        }
        this.viewCommands.afterApply(renderSelectedChatCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderSelectedToken(String str, String str2, int i, String str3) {
        RenderSelectedTokenCommand renderSelectedTokenCommand = new RenderSelectedTokenCommand(this, str, str2, i, str3);
        this.viewCommands.beforeApply(renderSelectedTokenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderSelectedToken(str, str2, i, str3);
        }
        this.viewCommands.afterApply(renderSelectedTokenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void resetSelectedToken() {
        ResetSelectedTokenCommand resetSelectedTokenCommand = new ResetSelectedTokenCommand(this);
        this.viewCommands.beforeApply(resetSelectedTokenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.resetSelectedToken();
        }
        this.viewCommands.afterApply(resetSelectedTokenCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void renderTransactionActionBlock(TransactionStep transactionStep, FeeType feeType) {
        RenderTransactionActionBlockCommand renderTransactionActionBlockCommand = new RenderTransactionActionBlockCommand(this, transactionStep, feeType);
        this.viewCommands.beforeApply(renderTransactionActionBlockCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderTransactionActionBlock(transactionStep, feeType);
        }
        this.viewCommands.afterApply(renderTransactionActionBlockCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void setupAmountInputErrorState(boolean z, String str, String str2) {
        SetupAmountInputErrorStateCommand setupAmountInputErrorStateCommand = new SetupAmountInputErrorStateCommand(this, z, str, str2);
        this.viewCommands.beforeApply(setupAmountInputErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupAmountInputErrorState(z, str, str2);
        }
        this.viewCommands.afterApply(setupAmountInputErrorStateCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.create.CreateCryptoBoxView
    public void setupCapacityInputErrorState(boolean z, String str) {
        SetupCapacityInputErrorStateCommand setupCapacityInputErrorStateCommand = new SetupCapacityInputErrorStateCommand(this, z, str);
        this.viewCommands.beforeApply(setupCapacityInputErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupCapacityInputErrorState(z, str);
        }
        this.viewCommands.afterApply(setupCapacityInputErrorStateCommand);
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

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
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

    @Override // com.iMe.p030ui.base.mvp.SwitchNetworkView
    public void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list) {
        ShowChooseNetworkDialogCommand showChooseNetworkDialogCommand = new ShowChooseNetworkDialogCommand(this, networkItem, list);
        this.viewCommands.beforeApply(showChooseNetworkDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showChooseNetworkDialog(networkItem, list);
        }
        this.viewCommands.afterApply(showChooseNetworkDialogCommand);
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowCreationSuccessCommand */
    /* loaded from: classes4.dex */
    public class ShowCreationSuccessCommand extends ViewCommand<CreateCryptoBoxView> {
        ShowCreationSuccessCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State) {
            super("showCreationSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showCreationSuccess();
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowActionErrorCommand */
    /* loaded from: classes4.dex */
    public class ShowActionErrorCommand extends ViewCommand<CreateCryptoBoxView> {
        public final String message;

        ShowActionErrorCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, String str) {
            super("showActionError", OneExecutionStateStrategy.class);
            this.message = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showActionError(this.message);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowConfirmDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowConfirmDialogCommand extends ViewCommand<CreateCryptoBoxView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowConfirmDialogCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showConfirmDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowCryptoBoxInfoDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowCryptoBoxInfoDialogCommand extends ViewCommand<CreateCryptoBoxView> {
        public final String description;

        ShowCryptoBoxInfoDialogCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, String str) {
            super("showCryptoBoxInfoDialog", OneExecutionStateStrategy.class);
            this.description = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showCryptoBoxInfoDialog(this.description);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$OpenSelectTokenScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSelectTokenScreenCommand extends ViewCommand<CreateCryptoBoxView> {
        public final String networkId;

        OpenSelectTokenScreenCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, String str) {
            super("openSelectTokenScreen", OneExecutionStateStrategy.class);
            this.networkId = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.openSelectTokenScreen(this.networkId);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$OpenSelectChatScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenSelectChatScreenCommand extends ViewCommand<CreateCryptoBoxView> {
        public final Long selectedChatId;

        OpenSelectChatScreenCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, Long l) {
            super("openSelectChatScreen", OneExecutionStateStrategy.class);
            this.selectedChatId = l;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.openSelectChatScreen(this.selectedChatId);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$OpenAddAdminScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenAddAdminScreenCommand extends ViewCommand<CreateCryptoBoxView> {
        public final TLRPC$Chat chat;
        public final long walletBotId;

        OpenAddAdminScreenCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, long j, TLRPC$Chat tLRPC$Chat) {
            super("openAddAdminScreen", OneExecutionStateStrategy.class);
            this.walletBotId = j;
            this.chat = tLRPC$Chat;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.openAddAdminScreen(this.walletBotId, this.chat);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$OpenBuyScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenBuyScreenCommand extends ViewCommand<CreateCryptoBoxView> {
        public final TokenBuyCoordinatorArgs args;

        OpenBuyScreenCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs) {
            super("openBuyScreen", OneExecutionStateStrategy.class);
            this.args = tokenBuyCoordinatorArgs;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.openBuyScreen(this.args);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$RenderCryptoBoxCreationRulesCommand */
    /* loaded from: classes4.dex */
    public class RenderCryptoBoxCreationRulesCommand extends ViewCommand<CreateCryptoBoxView> {
        public final boolean isInfoClickable;
        public final CryptoBoxCreationRulesItem item;

        RenderCryptoBoxCreationRulesCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, CryptoBoxCreationRulesItem cryptoBoxCreationRulesItem, boolean z) {
            super("renderCryptoBoxCreationRules", AddToEndSingleStrategy.class);
            this.item = cryptoBoxCreationRulesItem;
            this.isInfoClickable = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.renderCryptoBoxCreationRules(this.item, this.isInfoClickable);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$RenderSelectedChatCommand */
    /* loaded from: classes4.dex */
    public class RenderSelectedChatCommand extends ViewCommand<CreateCryptoBoxView> {
        public final TLRPC$Chat chat;

        RenderSelectedChatCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, TLRPC$Chat tLRPC$Chat) {
            super("renderSelectedChat", AddToEndSingleStrategy.class);
            this.chat = tLRPC$Chat;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.renderSelectedChat(this.chat);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$RenderSelectedTokenCommand */
    /* loaded from: classes4.dex */
    public class RenderSelectedTokenCommand extends ViewCommand<CreateCryptoBoxView> {
        public final int decimals;
        public final String tokenBalanceText;
        public final String tokenLogoUrl;
        public final String tokenText;

        RenderSelectedTokenCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, String str, String str2, int i, String str3) {
            super("renderSelectedToken", AddToEndSingleStrategy.class);
            this.tokenText = str;
            this.tokenLogoUrl = str2;
            this.decimals = i;
            this.tokenBalanceText = str3;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.renderSelectedToken(this.tokenText, this.tokenLogoUrl, this.decimals, this.tokenBalanceText);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ResetSelectedTokenCommand */
    /* loaded from: classes4.dex */
    public class ResetSelectedTokenCommand extends ViewCommand<CreateCryptoBoxView> {
        ResetSelectedTokenCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State) {
            super("resetSelectedToken", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.resetSelectedToken();
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$RenderTransactionActionBlockCommand */
    /* loaded from: classes4.dex */
    public class RenderTransactionActionBlockCommand extends ViewCommand<CreateCryptoBoxView> {
        public final FeeType feeType;
        public final TransactionStep transactionStep;

        RenderTransactionActionBlockCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, TransactionStep transactionStep, FeeType feeType) {
            super("renderTransactionActionBlock", AddToEndSingleStrategy.class);
            this.transactionStep = transactionStep;
            this.feeType = feeType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.renderTransactionActionBlock(this.transactionStep, this.feeType);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$SetupAmountInputErrorStateCommand */
    /* loaded from: classes4.dex */
    public class SetupAmountInputErrorStateCommand extends ViewCommand<CreateCryptoBoxView> {
        public final String clickableText;
        public final String errorText;
        public final boolean isError;

        SetupAmountInputErrorStateCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, boolean z, String str, String str2) {
            super("setupAmountInputErrorState", AddToEndSingleStrategy.class);
            this.isError = z;
            this.errorText = str;
            this.clickableText = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.setupAmountInputErrorState(this.isError, this.errorText, this.clickableText);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$SetupCapacityInputErrorStateCommand */
    /* loaded from: classes4.dex */
    public class SetupCapacityInputErrorStateCommand extends ViewCommand<CreateCryptoBoxView> {
        public final String errorText;
        public final boolean isError;

        SetupCapacityInputErrorStateCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, boolean z, String str) {
            super("setupCapacityInputErrorState", AddToEndSingleStrategy.class);
            this.isError = z;
            this.errorText = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.setupCapacityInputErrorState(this.isError, this.errorText);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<CreateCryptoBoxView> {
        public final String text;

        ShowToastCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showToast(this.text);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CreateCryptoBoxView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CreateCryptoBoxView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$SetupNetworkCommand */
    /* loaded from: classes4.dex */
    public class SetupNetworkCommand extends ViewCommand<CreateCryptoBoxView> {
        public final NetworkItem networkItem;

        SetupNetworkCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, NetworkItem networkItem) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.networkItem = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.setupNetwork(this.networkItem);
        }
    }

    /* compiled from: CreateCryptoBoxView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<CreateCryptoBoxView> {
        public final List<? extends NetworkItem> availableNetworks;
        public final NetworkItem network;

        ShowChooseNetworkDialogCommand(CreateCryptoBoxView$$State createCryptoBoxView$$State, NetworkItem networkItem, List<? extends NetworkItem> list) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = networkItem;
            this.availableNetworks = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CreateCryptoBoxView createCryptoBoxView) {
            createCryptoBoxView.showChooseNetworkDialog(this.network, this.availableNetworks);
        }
    }
}
