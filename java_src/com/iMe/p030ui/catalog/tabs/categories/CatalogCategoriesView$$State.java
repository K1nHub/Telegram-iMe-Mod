package com.iMe.p030ui.catalog.tabs.categories;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.catalog.CampaignItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.p030ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.ChatType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State */
/* loaded from: classes3.dex */
public class CatalogCategoriesView$$State extends MvpViewState<CatalogCategoriesView> implements CatalogCategoriesView {
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

    @Override // com.iMe.p030ui.catalog.tabs.categories.CatalogCategoriesView
    public void renderNodes(List<BaseNode> list) {
        RenderNodesCommand renderNodesCommand = new RenderNodesCommand(this, list);
        this.viewCommands.beforeApply(renderNodesCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.renderNodes(list);
        }
        this.viewCommands.afterApply(renderNodesCommand);
    }

    @Override // com.iMe.p030ui.catalog.tabs.categories.CatalogCategoriesView
    public void openCampaignDetailsScreen(CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat, ChatType chatType) {
        OpenCampaignDetailsScreenCommand openCampaignDetailsScreenCommand = new OpenCampaignDetailsScreenCommand(this, campaignItem, tLRPC$Chat, chatType);
        this.viewCommands.beforeApply(openCampaignDetailsScreenCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.openCampaignDetailsScreen(campaignItem, tLRPC$Chat, chatType);
        }
        this.viewCommands.afterApply(openCampaignDetailsScreenCommand);
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

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void resetLoadMore() {
        ResetLoadMoreCommand resetLoadMoreCommand = new ResetLoadMoreCommand(this);
        this.viewCommands.beforeApply(resetLoadMoreCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.resetLoadMore();
        }
        this.viewCommands.afterApply(resetLoadMoreCommand);
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$RenderNodesCommand */
    /* loaded from: classes3.dex */
    public class RenderNodesCommand extends ViewCommand<CatalogCategoriesView> {
        public final List<BaseNode> nodes;

        RenderNodesCommand(CatalogCategoriesView$$State catalogCategoriesView$$State, List<BaseNode> list) {
            super("renderNodes", AddToEndSingleStrategy.class);
            this.nodes = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.renderNodes(this.nodes);
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCampaignDetailsScreenCommand extends ViewCommand<CatalogCategoriesView> {
        public final CampaignItem campaign;
        public final TLRPC$Chat chat;
        public final ChatType chatType;

        OpenCampaignDetailsScreenCommand(CatalogCategoriesView$$State catalogCategoriesView$$State, CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat, ChatType chatType) {
            super("openCampaignDetailsScreen", OneExecutionStateStrategy.class);
            this.campaign = campaignItem;
            this.chat = tLRPC$Chat;
            this.chatType = chatType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.openCampaignDetailsScreen(this.campaign, this.chat, this.chatType);
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CatalogCategoriesView> {
        public final String text;

        ShowToastCommand(CatalogCategoriesView$$State catalogCategoriesView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.showToast(this.text);
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CatalogCategoriesView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CatalogCategoriesView$$State catalogCategoriesView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$ShowErrorToastCommand */
    /* loaded from: classes3.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<CatalogCategoriesView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(CatalogCategoriesView$$State catalogCategoriesView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<CatalogCategoriesView> {
        public final List<BaseNode> items;

        OnLoadMoreItemsCommand(CatalogCategoriesView$$State catalogCategoriesView$$State, List<BaseNode> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<CatalogCategoriesView> {
        OnLoadMoreCompleteCommand(CatalogCategoriesView$$State catalogCategoriesView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.onLoadMoreComplete();
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<CatalogCategoriesView> {
        OnLoadMoreErrorCommand(CatalogCategoriesView$$State catalogCategoriesView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.onLoadMoreError();
        }
    }

    /* compiled from: CatalogCategoriesView$$State.java */
    /* renamed from: com.iMe.ui.catalog.tabs.categories.CatalogCategoriesView$$State$ResetLoadMoreCommand */
    /* loaded from: classes3.dex */
    public class ResetLoadMoreCommand extends ViewCommand<CatalogCategoriesView> {
        ResetLoadMoreCommand(CatalogCategoriesView$$State catalogCategoriesView$$State) {
            super("resetLoadMore", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogCategoriesView catalogCategoriesView) {
            catalogCategoriesView.resetLoadMore();
        }
    }
}
