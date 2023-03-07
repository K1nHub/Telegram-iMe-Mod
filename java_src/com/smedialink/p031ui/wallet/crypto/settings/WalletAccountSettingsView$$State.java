package com.smedialink.p031ui.wallet.crypto.settings;

import com.smedialink.model.wallet.crypto.settings.WalletSettingsItem;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State */
/* loaded from: classes3.dex */
public class WalletAccountSettingsView$$State extends MvpViewState<WalletAccountSettingsView> implements WalletAccountSettingsView {
    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void setupSettingsItems(List<WalletSettingsItem> list) {
        SetupSettingsItemsCommand setupSettingsItemsCommand = new SetupSettingsItemsCommand(this, list);
        this.viewCommands.beforeApply(setupSettingsItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.setupSettingsItems(list);
        }
        this.viewCommands.afterApply(setupSettingsItemsCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openBlockchainsScreen() {
        OpenBlockchainsScreenCommand openBlockchainsScreenCommand = new OpenBlockchainsScreenCommand(this);
        this.viewCommands.beforeApply(openBlockchainsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openBlockchainsScreen();
        }
        this.viewCommands.afterApply(openBlockchainsScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openPrivacySettingsScreen() {
        OpenPrivacySettingsScreenCommand openPrivacySettingsScreenCommand = new OpenPrivacySettingsScreenCommand(this);
        this.viewCommands.beforeApply(openPrivacySettingsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openPrivacySettingsScreen();
        }
        this.viewCommands.afterApply(openPrivacySettingsScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openWalletConnectScreen() {
        OpenWalletConnectScreenCommand openWalletConnectScreenCommand = new OpenWalletConnectScreenCommand(this);
        this.viewCommands.beforeApply(openWalletConnectScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openWalletConnectScreen();
        }
        this.viewCommands.afterApply(openWalletConnectScreenCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openPinCodeSettingsScreen() {
        OpenPinCodeSettingsScreenCommand openPinCodeSettingsScreenCommand = new OpenPinCodeSettingsScreenCommand(this);
        this.viewCommands.beforeApply(openPinCodeSettingsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openPinCodeSettingsScreen();
        }
        this.viewCommands.afterApply(openPinCodeSettingsScreenCommand);
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

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$SetupSettingsItemsCommand */
    /* loaded from: classes3.dex */
    public class SetupSettingsItemsCommand extends ViewCommand<WalletAccountSettingsView> {
        public final List<WalletSettingsItem> items;

        SetupSettingsItemsCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State, List<WalletSettingsItem> list) {
            super("setupSettingsItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.setupSettingsItems(this.items);
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenBlockchainsScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenBlockchainsScreenCommand extends ViewCommand<WalletAccountSettingsView> {
        OpenBlockchainsScreenCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State) {
            super("openBlockchainsScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.openBlockchainsScreen();
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenPrivacySettingsScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenPrivacySettingsScreenCommand extends ViewCommand<WalletAccountSettingsView> {
        OpenPrivacySettingsScreenCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State) {
            super("openPrivacySettingsScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.openPrivacySettingsScreen();
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenWalletConnectScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenWalletConnectScreenCommand extends ViewCommand<WalletAccountSettingsView> {
        OpenWalletConnectScreenCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State) {
            super("openWalletConnectScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.openWalletConnectScreen();
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenPinCodeSettingsScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenPinCodeSettingsScreenCommand extends ViewCommand<WalletAccountSettingsView> {
        OpenPinCodeSettingsScreenCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State) {
            super("openPinCodeSettingsScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.openPinCodeSettingsScreen();
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletAccountSettingsView> {
        public final String text;

        ShowToastCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.showToast(this.text);
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletAccountSettingsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
