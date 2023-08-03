package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ActionItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State */
/* loaded from: classes4.dex */
public class WalletTransactionDetailsView$$State extends MvpViewState<WalletTransactionDetailsView> implements WalletTransactionDetailsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void setupScreenWithData(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z, boolean z2, String str10) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, i, str, str2, str3, str4, str5, str6, str7, str8, str9, z, z2, str10);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(i, str, str2, str3, str4, str5, str6, str7, str8, str9, z, z2, str10);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void setupTransactionActions(List<ActionItem> list, List<? extends Function0<Unit>> list2) {
        SetupTransactionActionsCommand setupTransactionActionsCommand = new SetupTransactionActionsCommand(this, list, list2);
        this.viewCommands.beforeApply(setupTransactionActionsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupTransactionActions(list, list2);
        }
        this.viewCommands.afterApply(setupTransactionActionsCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void actionCopyToClipboard(String str) {
        ActionCopyToClipboardCommand actionCopyToClipboardCommand = new ActionCopyToClipboardCommand(this, str);
        this.viewCommands.beforeApply(actionCopyToClipboardCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.actionCopyToClipboard(str);
        }
        this.viewCommands.afterApply(actionCopyToClipboardCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void openProfileScreen(long j) {
        OpenProfileScreenCommand openProfileScreenCommand = new OpenProfileScreenCommand(this, j);
        this.viewCommands.beforeApply(openProfileScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openProfileScreen(j);
        }
        this.viewCommands.afterApply(openProfileScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void openUrl(String str) {
        OpenUrlCommand openUrlCommand = new OpenUrlCommand(this, str);
        this.viewCommands.beforeApply(openUrlCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openUrl(str);
        }
        this.viewCommands.afterApply(openUrlCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void shareTransactionInfo(String str) {
        ShareTransactionInfoCommand shareTransactionInfoCommand = new ShareTransactionInfoCommand(this, str);
        this.viewCommands.beforeApply(shareTransactionInfoCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.shareTransactionInfo(str);
        }
        this.viewCommands.afterApply(shareTransactionInfoCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void showConfirmCancelDialog(DialogModel dialogModel, Function0<Unit> function0) {
        ShowConfirmCancelDialogCommand showConfirmCancelDialogCommand = new ShowConfirmCancelDialogCommand(this, dialogModel, function0);
        this.viewCommands.beforeApply(showConfirmCancelDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmCancelDialog(dialogModel, function0);
        }
        this.viewCommands.afterApply(showConfirmCancelDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void showConfirmBoostDialog(DialogModel dialogModel, Function0<Unit> function0) {
        ShowConfirmBoostDialogCommand showConfirmBoostDialogCommand = new ShowConfirmBoostDialogCommand(this, dialogModel, function0);
        this.viewCommands.beforeApply(showConfirmBoostDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showConfirmBoostDialog(dialogModel, function0);
        }
        this.viewCommands.afterApply(showConfirmBoostDialogCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void onSuccessCancelTransaction(String str) {
        OnSuccessCancelTransactionCommand onSuccessCancelTransactionCommand = new OnSuccessCancelTransactionCommand(this, str);
        this.viewCommands.beforeApply(onSuccessCancelTransactionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessCancelTransaction(str);
        }
        this.viewCommands.afterApply(onSuccessCancelTransactionCommand);
    }

    @Override // com.iMe.p031ui.wallet.transaction.details.WalletTransactionDetailsView
    public void onSuccessBoostTransaction(String str) {
        OnSuccessBoostTransactionCommand onSuccessBoostTransactionCommand = new OnSuccessBoostTransactionCommand(this, str);
        this.viewCommands.beforeApply(onSuccessBoostTransactionCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessBoostTransaction(str);
        }
        this.viewCommands.afterApply(onSuccessBoostTransactionCommand);
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

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes4.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final String amount;
        public final String category;
        public final String comment;
        public final String date;
        public final String fee;
        public final int iconResId;
        public final boolean isFeeEnabled;
        public final boolean isShareEnable;
        public final String processing;
        public final String recipient;
        public final String recipientTitle;
        public final String stakingIconUrl;
        public final String status;

        SetupScreenWithDataCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z, boolean z2, String str10) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.iconResId = i;
            this.category = str;
            this.amount = str2;
            this.recipientTitle = str3;
            this.recipient = str4;
            this.comment = str5;
            this.status = str6;
            this.date = str7;
            this.processing = str8;
            this.fee = str9;
            this.isFeeEnabled = z;
            this.isShareEnable = z2;
            this.stakingIconUrl = str10;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.setupScreenWithData(this.iconResId, this.category, this.amount, this.recipientTitle, this.recipient, this.comment, this.status, this.date, this.processing, this.fee, this.isFeeEnabled, this.isShareEnable, this.stakingIconUrl);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$SetupTransactionActionsCommand */
    /* loaded from: classes4.dex */
    public class SetupTransactionActionsCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final List<ActionItem> actionItems;
        public final List<? extends Function0<Unit>> actionsListeners;

        SetupTransactionActionsCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, List<ActionItem> list, List<? extends Function0<Unit>> list2) {
            super("setupTransactionActions", AddToEndSingleStrategy.class);
            this.actionItems = list;
            this.actionsListeners = list2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.setupTransactionActions(this.actionItems, this.actionsListeners);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$ActionCopyToClipboardCommand */
    /* loaded from: classes4.dex */
    public class ActionCopyToClipboardCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final String text;

        ActionCopyToClipboardCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, String str) {
            super("actionCopyToClipboard", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.actionCopyToClipboard(this.text);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$OpenProfileScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenProfileScreenCommand extends ViewCommand<WalletTransactionDetailsView> {

        /* renamed from: id */
        public final long f460id;

        OpenProfileScreenCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, long j) {
            super("openProfileScreen", OneExecutionStateStrategy.class);
            this.f460id = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.openProfileScreen(this.f460id);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$OpenUrlCommand */
    /* loaded from: classes4.dex */
    public class OpenUrlCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final String url;

        OpenUrlCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, String str) {
            super("openUrl", OneExecutionStateStrategy.class);
            this.url = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.openUrl(this.url);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$ShareTransactionInfoCommand */
    /* loaded from: classes4.dex */
    public class ShareTransactionInfoCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final String transactionInfo;

        ShareTransactionInfoCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, String str) {
            super("shareTransactionInfo", OneExecutionStateStrategy.class);
            this.transactionInfo = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.shareTransactionInfo(this.transactionInfo);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$ShowConfirmCancelDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowConfirmCancelDialogCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final Function0<Unit> action;
        public final DialogModel dialogModel;

        ShowConfirmCancelDialogCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, DialogModel dialogModel, Function0<Unit> function0) {
            super("showConfirmCancelDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = function0;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.showConfirmCancelDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$ShowConfirmBoostDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowConfirmBoostDialogCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final Function0<Unit> action;
        public final DialogModel dialogModel;

        ShowConfirmBoostDialogCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, DialogModel dialogModel, Function0<Unit> function0) {
            super("showConfirmBoostDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = function0;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.showConfirmBoostDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$OnSuccessCancelTransactionCommand */
    /* loaded from: classes4.dex */
    public class OnSuccessCancelTransactionCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final String txHash;

        OnSuccessCancelTransactionCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, String str) {
            super("onSuccessCancelTransaction", OneExecutionStateStrategy.class);
            this.txHash = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.onSuccessCancelTransaction(this.txHash);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$OnSuccessBoostTransactionCommand */
    /* loaded from: classes4.dex */
    public class OnSuccessBoostTransactionCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final String txHash;

        OnSuccessBoostTransactionCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, String str) {
            super("onSuccessBoostTransaction", OneExecutionStateStrategy.class);
            this.txHash = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.onSuccessBoostTransaction(this.txHash);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final String text;

        ShowToastCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.showToast(this.text);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletTransactionDetailsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletTransactionDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletTransactionDetailsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletTransactionDetailsView$$State walletTransactionDetailsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletTransactionDetailsView walletTransactionDetailsView) {
            walletTransactionDetailsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
