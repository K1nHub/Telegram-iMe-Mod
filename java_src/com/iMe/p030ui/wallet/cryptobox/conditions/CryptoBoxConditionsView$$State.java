package com.iMe.p030ui.wallet.cryptobox.conditions;

import android.content.DialogInterface;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.cryptobox.CryptoBoxActionButtonType;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State */
/* loaded from: classes3.dex */
public class CryptoBoxConditionsView$$State extends MvpViewState<CryptoBoxConditionsView> implements CryptoBoxConditionsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void startActivationFlow() {
        StartActivationFlowCommand startActivationFlowCommand = new StartActivationFlowCommand(this);
        this.viewCommands.beforeApply(startActivationFlowCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.startActivationFlow();
        }
        this.viewCommands.afterApply(startActivationFlowCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void openAddressScan(String str) {
        OpenAddressScanCommand openAddressScanCommand = new OpenAddressScanCommand(this, str);
        this.viewCommands.beforeApply(openAddressScanCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openAddressScan(str);
        }
        this.viewCommands.afterApply(openAddressScanCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void copyNameToClipboard(String str) {
        CopyNameToClipboardCommand copyNameToClipboardCommand = new CopyNameToClipboardCommand(this, str);
        this.viewCommands.beforeApply(copyNameToClipboardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.copyNameToClipboard(str);
        }
        this.viewCommands.afterApply(copyNameToClipboardCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void showParticipationSuccess() {
        ShowParticipationSuccessCommand showParticipationSuccessCommand = new ShowParticipationSuccessCommand(this);
        this.viewCommands.beforeApply(showParticipationSuccessCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showParticipationSuccess();
        }
        this.viewCommands.afterApply(showParticipationSuccessCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void renderScreenData(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Network.Explorer explorer) {
        RenderScreenDataCommand renderScreenDataCommand = new RenderScreenDataCommand(this, str, str2, str3, str4, str5, str6, str7, str8, explorer);
        this.viewCommands.beforeApply(renderScreenDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderScreenData(str, str2, str3, str4, str5, str6, str7, str8, explorer);
        }
        this.viewCommands.afterApply(renderScreenDataCommand);
    }

    @Override // com.iMe.p030ui.wallet.cryptobox.conditions.CryptoBoxConditionsView
    public void renderButton(CryptoBoxActionButtonType cryptoBoxActionButtonType) {
        RenderButtonCommand renderButtonCommand = new RenderButtonCommand(this, cryptoBoxActionButtonType);
        this.viewCommands.beforeApply(renderButtonCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderButton(cryptoBoxActionButtonType);
        }
        this.viewCommands.afterApply(renderButtonCommand);
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

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
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

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        ShowActivationConfirmationDialogCommand showActivationConfirmationDialogCommand = new ShowActivationConfirmationDialogCommand(this, dialogModel, callbacks$Callback);
        this.viewCommands.beforeApply(showActivationConfirmationDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showActivationConfirmationDialog(dialogModel, callbacks$Callback);
        }
        this.viewCommands.afterApply(showActivationConfirmationDialogCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void openCreateWalletIntroScreen(String str, WalletCreationType.Initial initial) {
        OpenCreateWalletIntroScreenCommand openCreateWalletIntroScreenCommand = new OpenCreateWalletIntroScreenCommand(this, str, initial);
        this.viewCommands.beforeApply(openCreateWalletIntroScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCreateWalletIntroScreen(str, initial);
        }
        this.viewCommands.afterApply(openCreateWalletIntroScreenCommand);
    }

    @Override // com.iMe.manager.wallet.create.WalletCreateManagerView
    public void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
        ShowSelectOptionsDialogCommand showSelectOptionsDialogCommand = new ShowSelectOptionsDialogCommand(this, str, strArr, onClickListener);
        this.viewCommands.beforeApply(showSelectOptionsDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showSelectOptionsDialog(str, strArr, onClickListener);
        }
        this.viewCommands.afterApply(showSelectOptionsDialogCommand);
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$StartActivationFlowCommand */
    /* loaded from: classes3.dex */
    public class StartActivationFlowCommand extends ViewCommand<CryptoBoxConditionsView> {
        StartActivationFlowCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State) {
            super("startActivationFlow", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.startActivationFlow();
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$OpenAddressScanCommand */
    /* loaded from: classes3.dex */
    public class OpenAddressScanCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final String url;

        OpenAddressScanCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, String str) {
            super("openAddressScan", OneExecutionStateStrategy.class);
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.openAddressScan(this.url);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$CopyNameToClipboardCommand */
    /* loaded from: classes3.dex */
    public class CopyNameToClipboardCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final String name;

        CopyNameToClipboardCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, String str) {
            super("copyNameToClipboard", OneExecutionStateStrategy.class);
            this.name = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.copyNameToClipboard(this.name);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$ShowParticipationSuccessCommand */
    /* loaded from: classes3.dex */
    public class ShowParticipationSuccessCommand extends ViewCommand<CryptoBoxConditionsView> {
        ShowParticipationSuccessCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State) {
            super("showParticipationSuccess", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.showParticipationSuccess();
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$RenderScreenDataCommand */
    /* loaded from: classes3.dex */
    public class RenderScreenDataCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final String balanceText;
        public final String description;
        public final Network.Explorer explorer;
        public final String membersText;
        public final String name;
        public final String networkIconUrl;
        public final String rewardPerUserText;
        public final String startDate;
        public final String tokenLogoUrl;

        RenderScreenDataCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Network.Explorer explorer) {
            super("renderScreenData", AddToEndSingleStrategy.class);
            this.tokenLogoUrl = str;
            this.networkIconUrl = str2;
            this.name = str3;
            this.description = str4;
            this.rewardPerUserText = str5;
            this.membersText = str6;
            this.balanceText = str7;
            this.startDate = str8;
            this.explorer = explorer;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.renderScreenData(this.tokenLogoUrl, this.networkIconUrl, this.name, this.description, this.rewardPerUserText, this.membersText, this.balanceText, this.startDate, this.explorer);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$RenderButtonCommand */
    /* loaded from: classes3.dex */
    public class RenderButtonCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final CryptoBoxActionButtonType buttonType;

        RenderButtonCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, CryptoBoxActionButtonType cryptoBoxActionButtonType) {
            super("renderButton", AddToEndSingleStrategy.class);
            this.buttonType = cryptoBoxActionButtonType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.renderButton(this.buttonType);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final String text;

        ShowToastCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.showToast(this.text);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CryptoBoxConditionsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$FinishScreenCommand */
    /* loaded from: classes3.dex */
    public class FinishScreenCommand extends ViewCommand<CryptoBoxConditionsView> {
        FinishScreenCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State) {
            super("finishScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.finishScreen();
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$ShowActivationConfirmationDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowActivationConfirmationDialogCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowActivationConfirmationDialogCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showActivationConfirmationDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.showActivationConfirmationDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$OpenCreateWalletIntroScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCreateWalletIntroScreenCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final String linkedWalletAddress;
        public final WalletCreationType.Initial walletCreationType;

        OpenCreateWalletIntroScreenCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, String str, WalletCreationType.Initial initial) {
            super("openCreateWalletIntroScreen", OneExecutionStateStrategy.class);
            this.linkedWalletAddress = str;
            this.walletCreationType = initial;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.openCreateWalletIntroScreen(this.linkedWalletAddress, this.walletCreationType);
        }
    }

    /* compiled from: CryptoBoxConditionsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView$$State$ShowSelectOptionsDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowSelectOptionsDialogCommand extends ViewCommand<CryptoBoxConditionsView> {
        public final String[] items;
        public final DialogInterface.OnClickListener listener;
        public final String title;

        ShowSelectOptionsDialogCommand(CryptoBoxConditionsView$$State cryptoBoxConditionsView$$State, String str, String[] strArr, DialogInterface.OnClickListener onClickListener) {
            super("showSelectOptionsDialog", OneExecutionStateStrategy.class);
            this.title = str;
            this.items = strArr;
            this.listener = onClickListener;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CryptoBoxConditionsView cryptoBoxConditionsView) {
            cryptoBoxConditionsView.showSelectOptionsDialog(this.title, this.items, this.listener);
        }
    }
}
