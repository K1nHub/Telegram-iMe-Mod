package com.iMe.p030ui.wallet.home.tabs.crypto.settings;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.wallet.home.FoundTokenItem;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State */
/* loaded from: classes4.dex */
public class WalletHomeCryptoTokensSettingsView$$State extends MvpViewState<WalletHomeCryptoTokensSettingsView> implements WalletHomeCryptoTokensSettingsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void renderTokensSettings(List<? extends BaseNode> list) {
        RenderTokensSettingsCommand renderTokensSettingsCommand = new RenderTokensSettingsCommand(this, list);
        this.viewCommands.beforeApply(renderTokensSettingsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderTokensSettings(list);
        }
        this.viewCommands.afterApply(renderTokensSettingsCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void renderSearchResultItems(List<BaseNode> list) {
        RenderSearchResultItemsCommand renderSearchResultItemsCommand = new RenderSearchResultItemsCommand(this, list);
        this.viewCommands.beforeApply(renderSearchResultItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderSearchResultItems(list);
        }
        this.viewCommands.afterApply(renderSearchResultItemsCommand);
    }

    @Override // com.iMe.p030ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView
    public void showTokenFamilyDialog(List<FoundTokenItem> list) {
        ShowTokenFamilyDialogCommand showTokenFamilyDialogCommand = new ShowTokenFamilyDialogCommand(this, list);
        this.viewCommands.beforeApply(showTokenFamilyDialogCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showTokenFamilyDialog(list);
        }
        this.viewCommands.afterApply(showTokenFamilyDialogCommand);
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

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<BaseNode> list) {
        OnLoadMoreItemsCommand onLoadMoreItemsCommand = new OnLoadMoreItemsCommand(this, list);
        this.viewCommands.beforeApply(onLoadMoreItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadMoreItems(list);
        }
        this.viewCommands.afterApply(onLoadMoreItemsCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreComplete() {
        OnLoadMoreCompleteCommand onLoadMoreCompleteCommand = new OnLoadMoreCompleteCommand(this);
        this.viewCommands.beforeApply(onLoadMoreCompleteCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadMoreComplete();
        }
        this.viewCommands.afterApply(onLoadMoreCompleteCommand);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreError() {
        OnLoadMoreErrorCommand onLoadMoreErrorCommand = new OnLoadMoreErrorCommand(this);
        this.viewCommands.beforeApply(onLoadMoreErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadMoreError();
        }
        this.viewCommands.afterApply(onLoadMoreErrorCommand);
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$RenderTokensSettingsCommand */
    /* loaded from: classes4.dex */
    public class RenderTokensSettingsCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final List<? extends BaseNode> items;

        RenderTokensSettingsCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, List<? extends BaseNode> list) {
            super("renderTokensSettings", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.renderTokensSettings(this.items);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$RenderSearchResultItemsCommand */
    /* loaded from: classes4.dex */
    public class RenderSearchResultItemsCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final List<BaseNode> items;

        RenderSearchResultItemsCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, List<BaseNode> list) {
            super("renderSearchResultItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.renderSearchResultItems(this.items);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowTokenFamilyDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowTokenFamilyDialogCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final List<FoundTokenItem> foundTokens;

        ShowTokenFamilyDialogCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, List<FoundTokenItem> list) {
            super("showTokenFamilyDialog", OneExecutionStateStrategy.class);
            this.foundTokens = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.showTokenFamilyDialog(this.foundTokens);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowToastCommand */
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
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowLoadingDialogCommand */
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
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$ShowErrorToastCommand */
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

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        public final List<BaseNode> items;

        OnLoadMoreItemsCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State, List<BaseNode> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        OnLoadMoreCompleteCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.onLoadMoreComplete();
        }
    }

    /* compiled from: WalletHomeCryptoTokensSettingsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<WalletHomeCryptoTokensSettingsView> {
        OnLoadMoreErrorCommand(WalletHomeCryptoTokensSettingsView$$State walletHomeCryptoTokensSettingsView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletHomeCryptoTokensSettingsView walletHomeCryptoTokensSettingsView) {
            walletHomeCryptoTokensSettingsView.onLoadMoreError();
        }
    }
}
