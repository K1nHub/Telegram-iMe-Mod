package com.iMe.p030ui.catalog.tabs.user_channels;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.p030ui.base.mvp.LoadMoreView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State */
/* loaded from: classes3.dex */
public class CatalogUserChannelsView$$State extends MvpViewState<CatalogUserChannelsView> implements CatalogUserChannelsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onEmptyState() {
        GlobalStateView.CC.$default$onEmptyState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onLoadingState() {
        GlobalStateView.CC.$default$onLoadingState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onNoInternetErrorState() {
        GlobalStateView.CC.$default$onNoInternetErrorState(this);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public /* synthetic */ void onUnexpectedErrorState() {
        GlobalStateView.CC.$default$onUnexpectedErrorState(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public /* synthetic */ void resetLoadMore() {
        LoadMoreView.CC.$default$resetLoadMore(this);
    }

    @Override // com.iMe.p030ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void showItems(List<BaseNode> list) {
        ShowItemsCommand showItemsCommand = new ShowItemsCommand(this, list);
        this.viewCommands.beforeApply(showItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showItems(list);
        }
        this.viewCommands.afterApply(showItemsCommand);
    }

    @Override // com.iMe.p030ui.catalog.tabs.user_channels.CatalogUserChannelsView
    public void openAddChannelScreen() {
        OpenAddChannelScreenCommand openAddChannelScreenCommand = new OpenAddChannelScreenCommand(this);
        this.viewCommands.beforeApply(openAddChannelScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openAddChannelScreen();
        }
        this.viewCommands.afterApply(openAddChannelScreenCommand);
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

    /* compiled from: CatalogUserChannelsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$ShowItemsCommand */
    /* loaded from: classes3.dex */
    public class ShowItemsCommand extends ViewCommand<CatalogUserChannelsView> {
        public final List<BaseNode> items;

        ShowItemsCommand(CatalogUserChannelsView$$State catalogUserChannelsView$$State, List<BaseNode> list) {
            super("showItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogUserChannelsView catalogUserChannelsView) {
            catalogUserChannelsView.showItems(this.items);
        }
    }

    /* compiled from: CatalogUserChannelsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$OpenAddChannelScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenAddChannelScreenCommand extends ViewCommand<CatalogUserChannelsView> {
        OpenAddChannelScreenCommand(CatalogUserChannelsView$$State catalogUserChannelsView$$State) {
            super("openAddChannelScreen", OneExecutionStateStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogUserChannelsView catalogUserChannelsView) {
            catalogUserChannelsView.openAddChannelScreen();
        }
    }

    /* compiled from: CatalogUserChannelsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CatalogUserChannelsView> {
        public final String text;

        ShowToastCommand(CatalogUserChannelsView$$State catalogUserChannelsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogUserChannelsView catalogUserChannelsView) {
            catalogUserChannelsView.showToast(this.text);
        }
    }

    /* compiled from: CatalogUserChannelsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CatalogUserChannelsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CatalogUserChannelsView$$State catalogUserChannelsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogUserChannelsView catalogUserChannelsView) {
            catalogUserChannelsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CatalogUserChannelsView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CatalogUserChannelsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CatalogUserChannelsView$$State catalogUserChannelsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogUserChannelsView catalogUserChannelsView) {
            catalogUserChannelsView.showErrorToast(this.result, this.resourceManager);
        }
    }
}
