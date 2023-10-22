package com.iMe.p030ui.wallet.settings.appearance;

import com.iMe.model.wallet.settings.InterfaceSettingItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView$$State */
/* loaded from: classes4.dex */
public class WalletAppearanceSettingsView$$State extends MvpViewState<WalletAppearanceSettingsView> implements WalletAppearanceSettingsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.settings.appearance.WalletAppearanceSettingsView
    public void setupSettingsItems(List<InterfaceSettingItem> list) {
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

    @Override // com.iMe.p030ui.wallet.settings.appearance.WalletAppearanceSettingsView
    public void openNetworksSettingsScreen() {
        OpenNetworksSettingsScreenCommand openNetworksSettingsScreenCommand = new OpenNetworksSettingsScreenCommand(this);
        this.viewCommands.beforeApply(openNetworksSettingsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openNetworksSettingsScreen();
        }
        this.viewCommands.afterApply(openNetworksSettingsScreenCommand);
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

    /* compiled from: WalletAppearanceSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView$$State$SetupSettingsItemsCommand */
    /* loaded from: classes4.dex */
    public class SetupSettingsItemsCommand extends ViewCommand<WalletAppearanceSettingsView> {
        public final List<InterfaceSettingItem> items;

        SetupSettingsItemsCommand(WalletAppearanceSettingsView$$State walletAppearanceSettingsView$$State, List<InterfaceSettingItem> list) {
            super("setupSettingsItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAppearanceSettingsView walletAppearanceSettingsView) {
            walletAppearanceSettingsView.setupSettingsItems(this.items);
        }
    }

    /* compiled from: WalletAppearanceSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView$$State$OpenNetworksSettingsScreenCommand */
    /* loaded from: classes4.dex */
    public class OpenNetworksSettingsScreenCommand extends ViewCommand<WalletAppearanceSettingsView> {
        OpenNetworksSettingsScreenCommand(WalletAppearanceSettingsView$$State walletAppearanceSettingsView$$State) {
            super("openNetworksSettingsScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAppearanceSettingsView walletAppearanceSettingsView) {
            walletAppearanceSettingsView.openNetworksSettingsScreen();
        }
    }

    /* compiled from: WalletAppearanceSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletAppearanceSettingsView> {
        public final String text;

        ShowToastCommand(WalletAppearanceSettingsView$$State walletAppearanceSettingsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAppearanceSettingsView walletAppearanceSettingsView) {
            walletAppearanceSettingsView.showToast(this.text);
        }
    }

    /* compiled from: WalletAppearanceSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletAppearanceSettingsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletAppearanceSettingsView$$State walletAppearanceSettingsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAppearanceSettingsView walletAppearanceSettingsView) {
            walletAppearanceSettingsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletAppearanceSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.WalletAppearanceSettingsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletAppearanceSettingsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletAppearanceSettingsView$$State walletAppearanceSettingsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAppearanceSettingsView walletAppearanceSettingsView) {
            walletAppearanceSettingsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
