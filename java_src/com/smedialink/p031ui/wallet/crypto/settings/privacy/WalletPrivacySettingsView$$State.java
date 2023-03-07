package com.smedialink.p031ui.wallet.crypto.settings.privacy;

import com.smedialink.model.dialog.DialogModel;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.fork.utils.Callbacks$Callback;
/* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView$$State */
/* loaded from: classes3.dex */
public class WalletPrivacySettingsView$$State extends MvpViewState<WalletPrivacySettingsView> implements WalletPrivacySettingsView {
    @Override // com.smedialink.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView
    public void onSuccessLoadPrivacySettings(List<Long> list, int i, int i2) {
        OnSuccessLoadPrivacySettingsCommand onSuccessLoadPrivacySettingsCommand = new OnSuccessLoadPrivacySettingsCommand(this, list, i, i2);
        this.viewCommands.beforeApply(onSuccessLoadPrivacySettingsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessLoadPrivacySettings(list, i, i2);
        }
        this.viewCommands.afterApply(onSuccessLoadPrivacySettingsCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView
    public void onSuccessSaveCryptoSettings() {
        OnSuccessSaveCryptoSettingsCommand onSuccessSaveCryptoSettingsCommand = new OnSuccessSaveCryptoSettingsCommand(this);
        this.viewCommands.beforeApply(onSuccessSaveCryptoSettingsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onSuccessSaveCryptoSettings();
        }
        this.viewCommands.afterApply(onSuccessSaveCryptoSettingsCommand);
    }

    @Override // com.smedialink.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView
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

    /* compiled from: WalletPrivacySettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView$$State$OnSuccessLoadPrivacySettingsCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessLoadPrivacySettingsCommand extends ViewCommand<WalletPrivacySettingsView> {
        public final int accountRankAccessType;
        public final int walletAddressAccessType;
        public final List<Long> whitelistUsers;

        OnSuccessLoadPrivacySettingsCommand(WalletPrivacySettingsView$$State walletPrivacySettingsView$$State, List<Long> list, int i, int i2) {
            super("onSuccessLoadPrivacySettings", AddToEndSingleStrategy.class);
            this.whitelistUsers = list;
            this.walletAddressAccessType = i;
            this.accountRankAccessType = i2;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletPrivacySettingsView walletPrivacySettingsView) {
            walletPrivacySettingsView.onSuccessLoadPrivacySettings(this.whitelistUsers, this.walletAddressAccessType, this.accountRankAccessType);
        }
    }

    /* compiled from: WalletPrivacySettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView$$State$OnSuccessSaveCryptoSettingsCommand */
    /* loaded from: classes3.dex */
    public class OnSuccessSaveCryptoSettingsCommand extends ViewCommand<WalletPrivacySettingsView> {
        OnSuccessSaveCryptoSettingsCommand(WalletPrivacySettingsView$$State walletPrivacySettingsView$$State) {
            super("onSuccessSaveCryptoSettings", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletPrivacySettingsView walletPrivacySettingsView) {
            walletPrivacySettingsView.onSuccessSaveCryptoSettings();
        }
    }

    /* compiled from: WalletPrivacySettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView$$State$ShowConfirmDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowConfirmDialogCommand extends ViewCommand<WalletPrivacySettingsView> {
        public final Callbacks$Callback action;
        public final DialogModel dialogModel;

        ShowConfirmDialogCommand(WalletPrivacySettingsView$$State walletPrivacySettingsView$$State, DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
            super("showConfirmDialog", OneExecutionStateStrategy.class);
            this.dialogModel = dialogModel;
            this.action = callbacks$Callback;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletPrivacySettingsView walletPrivacySettingsView) {
            walletPrivacySettingsView.showConfirmDialog(this.dialogModel, this.action);
        }
    }

    /* compiled from: WalletPrivacySettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletPrivacySettingsView> {
        public final String text;

        ShowToastCommand(WalletPrivacySettingsView$$State walletPrivacySettingsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletPrivacySettingsView walletPrivacySettingsView) {
            walletPrivacySettingsView.showToast(this.text);
        }
    }

    /* compiled from: WalletPrivacySettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletPrivacySettingsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletPrivacySettingsView$$State walletPrivacySettingsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletPrivacySettingsView walletPrivacySettingsView) {
            walletPrivacySettingsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
