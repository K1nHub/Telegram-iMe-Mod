package com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings;

import com.iMe.model.wallet.select.SelectableToken;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State */
/* loaded from: classes4.dex */
public class WalletHomeCryptoTokensSettingsView$$State extends MvpViewState<WalletHomeCryptoTokensSettingsView> implements WalletHomeCryptoTokensSettingsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.wallet.home.p032v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void showTokens(List<? extends SelectableToken> list) {
        ShowTokensCommand showTokensCommand = new ShowTokensCommand(this, list);
        this.viewCommands.beforeApply(showTokensCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTokens(list);
        }
        this.viewCommands.afterApply(showTokensCommand);
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

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand */
    /* loaded from: classes4.dex */
    public class ShowTokensCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final List<? extends SelectableToken> tokens;

        ShowTokensCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, List<? extends SelectableToken> list) {
            super("showTokens", AddToEndSingleStrategy.class);
            this.tokens = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.showTokens(this.tokens);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final String text;

        ShowToastCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.showToast(this.text);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.v2.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}