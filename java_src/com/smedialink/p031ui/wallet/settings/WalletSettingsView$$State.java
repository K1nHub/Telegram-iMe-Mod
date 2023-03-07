package com.smedialink.p031ui.wallet.settings;

import com.smedialink.model.wallet.settings.SettingUiItem;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsView$$State */
/* loaded from: classes3.dex */
public class WalletSettingsView$$State extends MvpViewState<WalletSettingsView> implements WalletSettingsView {
    @Override // com.smedialink.p031ui.wallet.settings.WalletSettingsView
    public void setupSettingsItems(List<SettingUiItem> list) {
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

    /* compiled from: WalletSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsView$$State$SetupSettingsItemsCommand */
    /* loaded from: classes3.dex */
    public class SetupSettingsItemsCommand extends ViewCommand<WalletSettingsView> {
        public final List<SettingUiItem> items;

        SetupSettingsItemsCommand(WalletSettingsView$$State walletSettingsView$$State, List<SettingUiItem> list) {
            super("setupSettingsItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSettingsView walletSettingsView) {
            walletSettingsView.setupSettingsItems(this.items);
        }
    }

    /* compiled from: WalletSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<WalletSettingsView> {
        public final String text;

        ShowToastCommand(WalletSettingsView$$State walletSettingsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSettingsView walletSettingsView) {
            walletSettingsView.showToast(this.text);
        }
    }

    /* compiled from: WalletSettingsView$$State.java */
    /* renamed from: com.smedialink.ui.wallet.settings.WalletSettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletSettingsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletSettingsView$$State walletSettingsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletSettingsView walletSettingsView) {
            walletSettingsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }
}
