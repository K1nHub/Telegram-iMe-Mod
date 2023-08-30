package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.TokenListInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State */
/* loaded from: classes4.dex */
public class TokenManagementView$$State extends MvpViewState<TokenManagementView> implements TokenManagementView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void copyAddressToClipboard(String str) {
        CopyAddressToClipboardCommand copyAddressToClipboardCommand = new CopyAddressToClipboardCommand(this, str);
        this.viewCommands.beforeApply(copyAddressToClipboardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.copyAddressToClipboard(str);
        }
        this.viewCommands.afterApply(copyAddressToClipboardCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void openBrowserUrl(String str) {
        OpenBrowserUrlCommand openBrowserUrlCommand = new OpenBrowserUrlCommand(this, str);
        this.viewCommands.beforeApply(openBrowserUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBrowserUrl(str);
        }
        this.viewCommands.afterApply(openBrowserUrlCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void showEnableConfirmationDialog(DialogModel dialogModel) {
        ShowEnableConfirmationDialogCommand showEnableConfirmationDialogCommand = new ShowEnableConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showEnableConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showEnableConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showEnableConfirmationDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void showDeleteConfirmationDialog(DialogModel dialogModel) {
        ShowDeleteConfirmationDialogCommand showDeleteConfirmationDialogCommand = new ShowDeleteConfirmationDialogCommand(this, dialogModel);
        this.viewCommands.beforeApply(showDeleteConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showDeleteConfirmationDialog(dialogModel);
        }
        this.viewCommands.afterApply(showDeleteConfirmationDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void showTokensListsDialog(List<TokenListInfo> list) {
        ShowTokensListsDialogCommand showTokensListsDialogCommand = new ShowTokensListsDialogCommand(this, list);
        this.viewCommands.beforeApply(showTokensListsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTokensListsDialog(list);
        }
        this.viewCommands.afterApply(showTokensListsDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void setScannedAddressText(String str) {
        SetScannedAddressTextCommand setScannedAddressTextCommand = new SetScannedAddressTextCommand(this, str);
        this.viewCommands.beforeApply(setScannedAddressTextCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setScannedAddressText(str);
        }
        this.viewCommands.afterApply(setScannedAddressTextCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void updateErrorTextVisibility(boolean z) {
        UpdateErrorTextVisibilityCommand updateErrorTextVisibilityCommand = new UpdateErrorTextVisibilityCommand(this, z);
        this.viewCommands.beforeApply(updateErrorTextVisibilityCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateErrorTextVisibility(z);
        }
        this.viewCommands.afterApply(updateErrorTextVisibilityCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void resetImportScreen() {
        ResetImportScreenCommand resetImportScreenCommand = new ResetImportScreenCommand(this);
        this.viewCommands.beforeApply(resetImportScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.resetImportScreen();
        }
        this.viewCommands.afterApply(resetImportScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void setupActionButtonState(boolean z, boolean z2) {
        SetupActionButtonStateCommand setupActionButtonStateCommand = new SetupActionButtonStateCommand(this, z, z2);
        this.viewCommands.beforeApply(setupActionButtonStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupActionButtonState(z, z2);
        }
        this.viewCommands.afterApply(setupActionButtonStateCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.token.TokenManagementView
    public void setupTokenData(String str, String str2, String str3, String str4, String str5, Network network, Integer num) {
        SetupTokenDataCommand setupTokenDataCommand = new SetupTokenDataCommand(this, str, str2, str3, str4, str5, network, num);
        this.viewCommands.beforeApply(setupTokenDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupTokenData(str, str2, str3, str4, str5, network, num);
        }
        this.viewCommands.afterApply(setupTokenDataCommand);
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

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public void finishScreen() {
        FinishScreenCommand finishScreenCommand = new FinishScreenCommand(this);
        this.viewCommands.beforeApply(finishScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.finishScreen();
        }
        this.viewCommands.afterApply(finishScreenCommand);
    }

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
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

    @Override // com.iMe.p031ui.base.mvp.SwitchNetworkView
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

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$CopyAddressToClipboardCommand */
    /* loaded from: classes4.dex */
    public class CopyAddressToClipboardCommand extends ViewCommand<TokenManagementView> {
        public final String address;

        CopyAddressToClipboardCommand(TokenManagementView$$State tokenManagementView$$State, String str) {
            super("copyAddressToClipboard", OneExecutionStateStrategy.class);
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.copyAddressToClipboard(this.address);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$OpenBrowserUrlCommand */
    /* loaded from: classes4.dex */
    public class OpenBrowserUrlCommand extends ViewCommand<TokenManagementView> {
        public final String url;

        OpenBrowserUrlCommand(TokenManagementView$$State tokenManagementView$$State, String str) {
            super("openBrowserUrl", OneExecutionStateStrategy.class);
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.openBrowserUrl(this.url);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ShowEnableConfirmationDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowEnableConfirmationDialogCommand extends ViewCommand<TokenManagementView> {
        public final DialogModel dialogModel;

        ShowEnableConfirmationDialogCommand(TokenManagementView$$State tokenManagementView$$State, DialogModel dialogModel) {
            super("showEnableConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.showEnableConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ShowDeleteConfirmationDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowDeleteConfirmationDialogCommand extends ViewCommand<TokenManagementView> {
        public final DialogModel dialogModel;

        ShowDeleteConfirmationDialogCommand(TokenManagementView$$State tokenManagementView$$State, DialogModel dialogModel) {
            super("showDeleteConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.showDeleteConfirmationDialog(this.dialogModel);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ShowTokensListsDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowTokensListsDialogCommand extends ViewCommand<TokenManagementView> {
        public final List<TokenListInfo> tokenLists;

        ShowTokensListsDialogCommand(TokenManagementView$$State tokenManagementView$$State, List<TokenListInfo> list) {
            super("showTokensListsDialog", OneExecutionStateStrategy.class);
            this.tokenLists = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.showTokensListsDialog(this.tokenLists);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$SetScannedAddressTextCommand */
    /* loaded from: classes4.dex */
    public class SetScannedAddressTextCommand extends ViewCommand<TokenManagementView> {
        public final String address;

        SetScannedAddressTextCommand(TokenManagementView$$State tokenManagementView$$State, String str) {
            super("setScannedAddressText", AddToEndSingleStrategy.class);
            this.address = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.setScannedAddressText(this.address);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$UpdateErrorTextVisibilityCommand */
    /* loaded from: classes4.dex */
    public class UpdateErrorTextVisibilityCommand extends ViewCommand<TokenManagementView> {
        public final boolean isVisible;

        UpdateErrorTextVisibilityCommand(TokenManagementView$$State tokenManagementView$$State, boolean z) {
            super("updateErrorTextVisibility", AddToEndSingleStrategy.class);
            this.isVisible = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.updateErrorTextVisibility(this.isVisible);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ResetImportScreenCommand */
    /* loaded from: classes4.dex */
    public class ResetImportScreenCommand extends ViewCommand<TokenManagementView> {
        ResetImportScreenCommand(TokenManagementView$$State tokenManagementView$$State) {
            super("resetImportScreen", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.resetImportScreen();
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$SetupActionButtonStateCommand */
    /* loaded from: classes4.dex */
    public class SetupActionButtonStateCommand extends ViewCommand<TokenManagementView> {
        public final boolean isButtonEnabled;
        public final boolean isCustomToken;

        SetupActionButtonStateCommand(TokenManagementView$$State tokenManagementView$$State, boolean z, boolean z2) {
            super("setupActionButtonState", AddToEndSingleStrategy.class);
            this.isCustomToken = z;
            this.isButtonEnabled = z2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.setupActionButtonState(this.isCustomToken, this.isButtonEnabled);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$SetupTokenDataCommand */
    /* loaded from: classes4.dex */
    public class SetupTokenDataCommand extends ViewCommand<TokenManagementView> {
        public final String address;
        public final String decimals;
        public final String logoUrl;
        public final String name;
        public final Network network;
        public final String ticker;
        public final Integer verifiedCount;

        SetupTokenDataCommand(TokenManagementView$$State tokenManagementView$$State, String str, String str2, String str3, String str4, String str5, Network network, Integer num) {
            super("setupTokenData", AddToEndSingleStrategy.class);
            this.logoUrl = str;
            this.address = str2;
            this.ticker = str3;
            this.name = str4;
            this.decimals = str5;
            this.network = network;
            this.verifiedCount = num;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.setupTokenData(this.logoUrl, this.address, this.ticker, this.name, this.decimals, this.network, this.verifiedCount);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<TokenManagementView> {
        public final String text;

        ShowToastCommand(TokenManagementView$$State tokenManagementView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.showToast(this.text);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<TokenManagementView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(TokenManagementView$$State tokenManagementView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<TokenManagementView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(TokenManagementView$$State tokenManagementView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$FinishScreenCommand */
    /* loaded from: classes4.dex */
    public class FinishScreenCommand extends ViewCommand<TokenManagementView> {
        FinishScreenCommand(TokenManagementView$$State tokenManagementView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.finishScreen();
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$SetupNetworkCommand */
    /* loaded from: classes4.dex */
    public class SetupNetworkCommand extends ViewCommand<TokenManagementView> {
        public final NetworkItem networkItem;

        SetupNetworkCommand(TokenManagementView$$State tokenManagementView$$State, NetworkItem networkItem) {
            super("setupNetwork", AddToEndSingleStrategy.class);
            this.networkItem = networkItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.setupNetwork(this.networkItem);
        }
    }

    /* compiled from: TokenManagementView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementView$$State$ShowChooseNetworkDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowChooseNetworkDialogCommand extends ViewCommand<TokenManagementView> {
        public final List<? extends NetworkItem> availableNetworks;
        public final NetworkItem network;

        ShowChooseNetworkDialogCommand(TokenManagementView$$State tokenManagementView$$State, NetworkItem networkItem, List<? extends NetworkItem> list) {
            super("showChooseNetworkDialog", OneExecutionStateStrategy.class);
            this.network = networkItem;
            this.availableNetworks = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(TokenManagementView tokenManagementView) {
            tokenManagementView.showChooseNetworkDialog(this.network, this.availableNetworks);
        }
    }
}
