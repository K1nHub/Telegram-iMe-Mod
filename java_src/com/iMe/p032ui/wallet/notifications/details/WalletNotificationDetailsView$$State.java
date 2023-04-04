package com.iMe.p032ui.wallet.notifications.details;

import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenCode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView$$State */
/* loaded from: classes4.dex */
public class WalletNotificationDetailsView$$State extends MvpViewState<WalletNotificationDetailsView> implements WalletNotificationDetailsView {
    @Override // com.iMe.p032ui.wallet.notifications.details.WalletNotificationDetailsView
    public void setupScreenWithData(String str, String str2) {
        SetupScreenWithDataCommand setupScreenWithDataCommand = new SetupScreenWithDataCommand(this, str, str2);
        this.viewCommands.beforeApply(setupScreenWithDataCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupScreenWithData(str, str2);
        }
        this.viewCommands.afterApply(setupScreenWithDataCommand);
    }

    @Override // com.iMe.manager.wallet.WalletLinkClickableView
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

    @Override // com.iMe.manager.wallet.WalletLinkClickableView
    public void actionOpenProfileScreen(long j) {
        ActionOpenProfileScreenCommand actionOpenProfileScreenCommand = new ActionOpenProfileScreenCommand(this, j);
        this.viewCommands.beforeApply(actionOpenProfileScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.actionOpenProfileScreen(j);
        }
        this.viewCommands.afterApply(actionOpenProfileScreenCommand);
    }

    @Override // com.iMe.manager.wallet.WalletLinkClickableView
    public void actionMakeTransfer(TokenCode tokenCode, String str, boolean z, String str2, NetworkType networkType) {
        ActionMakeTransferCommand actionMakeTransferCommand = new ActionMakeTransferCommand(this, tokenCode, str, z, str2, networkType);
        this.viewCommands.beforeApply(actionMakeTransferCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.actionMakeTransfer(tokenCode, str, z, str2, networkType);
        }
        this.viewCommands.afterApply(actionMakeTransferCommand);
    }

    @Override // com.iMe.manager.wallet.WalletLinkClickableView
    public void showClickableTextDialog(String[] strArr, Function1<? super Integer, Unit> function1) {
        ShowClickableTextDialogCommand showClickableTextDialogCommand = new ShowClickableTextDialogCommand(this, strArr, function1);
        this.viewCommands.beforeApply(showClickableTextDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showClickableTextDialog(strArr, function1);
        }
        this.viewCommands.afterApply(showClickableTextDialogCommand);
    }

    @Override // com.iMe.manager.wallet.WalletLinkClickableView
    public void setupMessageClickableLink(String str, String str2, Function0<Unit> function0) {
        SetupMessageClickableLinkCommand setupMessageClickableLinkCommand = new SetupMessageClickableLinkCommand(this, str, str2, function0);
        this.viewCommands.beforeApply(setupMessageClickableLinkCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupMessageClickableLink(str, str2, function0);
        }
        this.viewCommands.afterApply(setupMessageClickableLinkCommand);
    }

    /* compiled from: WalletNotificationDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView$$State$SetupScreenWithDataCommand */
    /* loaded from: classes4.dex */
    public class SetupScreenWithDataCommand extends ViewCommand<WalletNotificationDetailsView> {
        public final String category;
        public final String date;

        SetupScreenWithDataCommand(WalletNotificationDetailsView$$State walletNotificationDetailsView$$State, String str, String str2) {
            super("setupScreenWithData", AddToEndSingleStrategy.class);
            this.date = str;
            this.category = str2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationDetailsView walletNotificationDetailsView) {
            walletNotificationDetailsView.setupScreenWithData(this.date, this.category);
        }
    }

    /* compiled from: WalletNotificationDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView$$State$ActionCopyToClipboardCommand */
    /* loaded from: classes4.dex */
    public class ActionCopyToClipboardCommand extends ViewCommand<WalletNotificationDetailsView> {
        public final String data;

        ActionCopyToClipboardCommand(WalletNotificationDetailsView$$State walletNotificationDetailsView$$State, String str) {
            super("actionCopyToClipboard", OneExecutionStateStrategy.class);
            this.data = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationDetailsView walletNotificationDetailsView) {
            walletNotificationDetailsView.actionCopyToClipboard(this.data);
        }
    }

    /* compiled from: WalletNotificationDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView$$State$ActionOpenProfileScreenCommand */
    /* loaded from: classes4.dex */
    public class ActionOpenProfileScreenCommand extends ViewCommand<WalletNotificationDetailsView> {
        public final long userId;

        ActionOpenProfileScreenCommand(WalletNotificationDetailsView$$State walletNotificationDetailsView$$State, long j) {
            super("actionOpenProfileScreen", OneExecutionStateStrategy.class);
            this.userId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationDetailsView walletNotificationDetailsView) {
            walletNotificationDetailsView.actionOpenProfileScreen(this.userId);
        }
    }

    /* compiled from: WalletNotificationDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView$$State$ActionMakeTransferCommand */
    /* loaded from: classes4.dex */
    public class ActionMakeTransferCommand extends ViewCommand<WalletNotificationDetailsView> {
        public final String address;
        public final TokenCode code;
        public final boolean isContactSelected;
        public final NetworkType networkType;
        public final String userId;

        ActionMakeTransferCommand(WalletNotificationDetailsView$$State walletNotificationDetailsView$$State, TokenCode tokenCode, String str, boolean z, String str2, NetworkType networkType) {
            super("actionMakeTransfer", OneExecutionStateStrategy.class);
            this.code = tokenCode;
            this.userId = str;
            this.isContactSelected = z;
            this.address = str2;
            this.networkType = networkType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationDetailsView walletNotificationDetailsView) {
            walletNotificationDetailsView.actionMakeTransfer(this.code, this.userId, this.isContactSelected, this.address, this.networkType);
        }
    }

    /* compiled from: WalletNotificationDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView$$State$ShowClickableTextDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowClickableTextDialogCommand extends ViewCommand<WalletNotificationDetailsView> {
        public final Function1<? super Integer, Unit> action;
        public final String[] items;

        ShowClickableTextDialogCommand(WalletNotificationDetailsView$$State walletNotificationDetailsView$$State, String[] strArr, Function1<? super Integer, Unit> function1) {
            super("showClickableTextDialog", OneExecutionStateStrategy.class);
            this.items = strArr;
            this.action = function1;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationDetailsView walletNotificationDetailsView) {
            walletNotificationDetailsView.showClickableTextDialog(this.items, this.action);
        }
    }

    /* compiled from: WalletNotificationDetailsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.details.WalletNotificationDetailsView$$State$SetupMessageClickableLinkCommand */
    /* loaded from: classes4.dex */
    public class SetupMessageClickableLinkCommand extends ViewCommand<WalletNotificationDetailsView> {
        public final Function0<Unit> action;
        public final String clickableText;
        public final String message;

        SetupMessageClickableLinkCommand(WalletNotificationDetailsView$$State walletNotificationDetailsView$$State, String str, String str2, Function0<Unit> function0) {
            super("setupMessageClickableLink", AddToEndSingleStrategy.class);
            this.message = str;
            this.clickableText = str2;
            this.action = function0;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationDetailsView walletNotificationDetailsView) {
            walletNotificationDetailsView.setupMessageClickableLink(this.message, this.clickableText, this.action);
        }
    }
}
