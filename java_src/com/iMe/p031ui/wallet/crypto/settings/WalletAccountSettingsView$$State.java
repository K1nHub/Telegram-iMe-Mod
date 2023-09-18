package com.iMe.p031ui.wallet.crypto.settings;

import com.iMe.model.wallet.crypto.settings.WalletSettingsItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State */
/* loaded from: classes6.dex */
public class WalletAccountSettingsView$$State extends MvpViewState<WalletAccountSettingsView> implements WalletAccountSettingsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void renderSettingsItems(List<WalletSettingsItem> list) {
        RenderSettingsItemsCommand renderSettingsItemsCommand = new RenderSettingsItemsCommand(this, list);
        this.viewCommands.beforeApply(renderSettingsItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderSettingsItems(list);
        }
        this.viewCommands.afterApply(renderSettingsItemsCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
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

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
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

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
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

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
    public void openCustomTokensScreen() {
        OpenCustomTokensScreenCommand openCustomTokensScreenCommand = new OpenCustomTokensScreenCommand(this);
        this.viewCommands.beforeApply(openCustomTokensScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCustomTokensScreen();
        }
        this.viewCommands.afterApply(openCustomTokensScreenCommand);
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.WalletAccountSettingsView
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
    public void removeSelfFromStackImmediately() {
        RemoveSelfFromStackImmediatelyCommand removeSelfFromStackImmediatelyCommand = new RemoveSelfFromStackImmediatelyCommand(this);
        this.viewCommands.beforeApply(removeSelfFromStackImmediatelyCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.removeSelfFromStackImmediately();
        }
        this.viewCommands.afterApply(removeSelfFromStackImmediatelyCommand);
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$RenderSettingsItemsCommand */
    /* loaded from: classes6.dex */
    public class RenderSettingsItemsCommand extends ViewCommand<WalletAccountSettingsView> {
        public final List<WalletSettingsItem> items;

        RenderSettingsItemsCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State, List<WalletSettingsItem> list) {
            super("renderSettingsItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.renderSettingsItems(this.items);
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenBlockchainsScreenCommand */
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenPrivacySettingsScreenCommand */
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenWalletConnectScreenCommand */
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenCustomTokensScreenCommand */
    /* loaded from: classes6.dex */
    public class OpenCustomTokensScreenCommand extends ViewCommand<WalletAccountSettingsView> {
        OpenCustomTokensScreenCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State) {
            super("openCustomTokensScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.openCustomTokensScreen();
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$OpenPinCodeSettingsScreenCommand */
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$ShowToastCommand */
    /* loaded from: classes6.dex */
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
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes6.dex */
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

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$ShowErrorToastCommand */
    /* loaded from: classes6.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletAccountSettingsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletAccountSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.WalletAccountSettingsView$$State$RemoveSelfFromStackImmediatelyCommand */
    /* loaded from: classes6.dex */
    public class RemoveSelfFromStackImmediatelyCommand extends ViewCommand<WalletAccountSettingsView> {
        RemoveSelfFromStackImmediatelyCommand(WalletAccountSettingsView$$State walletAccountSettingsView$$State) {
            super("removeSelfFromStackImmediately", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletAccountSettingsView walletAccountSettingsView) {
            walletAccountSettingsView.removeSelfFromStackImmediately();
        }
    }
}
