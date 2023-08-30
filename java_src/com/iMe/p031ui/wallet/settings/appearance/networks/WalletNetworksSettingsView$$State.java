package com.iMe.p031ui.wallet.settings.appearance.networks;

import com.iMe.model.wallet.settings.NetworkSettingsItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsView$$State */
/* loaded from: classes4.dex */
public class WalletNetworksSettingsView$$State extends MvpViewState<WalletNetworksSettingsView> implements WalletNetworksSettingsView {
    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p031ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p031ui.wallet.settings.appearance.networks.WalletNetworksSettingsView
    public void renderItems(List<NetworkSettingsItem> list) {
        RenderItemsCommand renderItemsCommand = new RenderItemsCommand(this, list);
        this.viewCommands.beforeApply(renderItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderItems(list);
        }
        this.viewCommands.afterApply(renderItemsCommand);
    }

    @Override // com.iMe.p031ui.wallet.settings.appearance.networks.WalletNetworksSettingsView
    public void renderEmptySearchResults() {
        RenderEmptySearchResultsCommand renderEmptySearchResultsCommand = new RenderEmptySearchResultsCommand(this);
        this.viewCommands.beforeApply(renderEmptySearchResultsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderEmptySearchResults();
        }
        this.viewCommands.afterApply(renderEmptySearchResultsCommand);
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

    /* compiled from: WalletNetworksSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsView$$State$RenderItemsCommand */
    /* loaded from: classes4.dex */
    public class RenderItemsCommand extends ViewCommand<WalletNetworksSettingsView> {
        public final List<NetworkSettingsItem> items;

        RenderItemsCommand(WalletNetworksSettingsView$$State walletNetworksSettingsView$$State, List<NetworkSettingsItem> list) {
            super("renderItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNetworksSettingsView walletNetworksSettingsView) {
            walletNetworksSettingsView.renderItems(this.items);
        }
    }

    /* compiled from: WalletNetworksSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsView$$State$RenderEmptySearchResultsCommand */
    /* loaded from: classes4.dex */
    public class RenderEmptySearchResultsCommand extends ViewCommand<WalletNetworksSettingsView> {
        RenderEmptySearchResultsCommand(WalletNetworksSettingsView$$State walletNetworksSettingsView$$State) {
            super("renderEmptySearchResults", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNetworksSettingsView walletNetworksSettingsView) {
            walletNetworksSettingsView.renderEmptySearchResults();
        }
    }

    /* compiled from: WalletNetworksSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletNetworksSettingsView> {
        public final String text;

        ShowToastCommand(WalletNetworksSettingsView$$State walletNetworksSettingsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNetworksSettingsView walletNetworksSettingsView) {
            walletNetworksSettingsView.showToast(this.text);
        }
    }

    /* compiled from: WalletNetworksSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletNetworksSettingsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletNetworksSettingsView$$State walletNetworksSettingsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNetworksSettingsView walletNetworksSettingsView) {
            walletNetworksSettingsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletNetworksSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.settings.appearance.networks.WalletNetworksSettingsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletNetworksSettingsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletNetworksSettingsView$$State walletNetworksSettingsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNetworksSettingsView walletNetworksSettingsView) {
            walletNetworksSettingsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
