package com.smedialink.p031ui.catalog.tabs.all;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.model.catalog.CampaignItem;
import com.smedialink.storage.domain.model.catalog.ChatType;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
import org.telegram.tgnet.TLRPC$Chat;
/* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State */
/* loaded from: classes3.dex */
public class CatalogAllView$$State extends MvpViewState<CatalogAllView> implements CatalogAllView {
    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onCategoriesLoaded(List<BaseNode> list) {
        OnCategoriesLoadedCommand onCategoriesLoadedCommand = new OnCategoriesLoadedCommand(this, list);
        this.viewCommands.beforeApply(onCategoriesLoadedCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onCategoriesLoaded(list);
        }
        this.viewCommands.afterApply(onCategoriesLoadedCommand);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreItems(long j, List<CampaignItem> list) {
        OnNestedLoadMoreItemsCommand onNestedLoadMoreItemsCommand = new OnNestedLoadMoreItemsCommand(this, j, list);
        this.viewCommands.beforeApply(onNestedLoadMoreItemsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onNestedLoadMoreItems(j, list);
        }
        this.viewCommands.afterApply(onNestedLoadMoreItemsCommand);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreComplete(long j) {
        OnNestedLoadMoreCompleteCommand onNestedLoadMoreCompleteCommand = new OnNestedLoadMoreCompleteCommand(this, j);
        this.viewCommands.beforeApply(onNestedLoadMoreCompleteCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onNestedLoadMoreComplete(j);
        }
        this.viewCommands.afterApply(onNestedLoadMoreCompleteCommand);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
    public void onNestedLoadMoreError(long j) {
        OnNestedLoadMoreErrorCommand onNestedLoadMoreErrorCommand = new OnNestedLoadMoreErrorCommand(this, j);
        this.viewCommands.beforeApply(onNestedLoadMoreErrorCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onNestedLoadMoreError(j);
        }
        this.viewCommands.afterApply(onNestedLoadMoreErrorCommand);
    }

    @Override // com.smedialink.p031ui.catalog.tabs.all.CatalogAllView
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

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onNoInternetErrorState() {
        OnNoInternetErrorStateCommand onNoInternetErrorStateCommand = new OnNoInternetErrorStateCommand(this);
        this.viewCommands.beforeApply(onNoInternetErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onNoInternetErrorState();
        }
        this.viewCommands.afterApply(onNoInternetErrorStateCommand);
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onUnexpectedErrorState() {
        OnUnexpectedErrorStateCommand onUnexpectedErrorStateCommand = new OnUnexpectedErrorStateCommand(this);
        this.viewCommands.beforeApply(onUnexpectedErrorStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onUnexpectedErrorState();
        }
        this.viewCommands.afterApply(onUnexpectedErrorStateCommand);
    }

    @Override // com.smedialink.p031ui.custom.state.GlobalStateView
    public void onEmptyState() {
        OnEmptyStateCommand onEmptyStateCommand = new OnEmptyStateCommand(this);
        this.viewCommands.beforeApply(onEmptyStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onEmptyState();
        }
        this.viewCommands.afterApply(onEmptyStateCommand);
    }

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
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

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
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

    @Override // com.smedialink.p031ui.base.mvp.LoadMoreView
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

    @Override // com.smedialink.p031ui.base.mvp.SwipeRefreshView
    public void showRefreshing(boolean z) {
        ShowRefreshingCommand showRefreshingCommand = new ShowRefreshingCommand(this, z);
        this.viewCommands.beforeApply(showRefreshingCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.showRefreshing(z);
        }
        this.viewCommands.afterApply(showRefreshingCommand);
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnCategoriesLoadedCommand */
    /* loaded from: classes3.dex */
    public class OnCategoriesLoadedCommand extends ViewCommand<CatalogAllView> {
        public final List<BaseNode> items;

        OnCategoriesLoadedCommand(CatalogAllView$$State catalogAllView$$State, List<BaseNode> list) {
            super("onCategoriesLoaded", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onCategoriesLoaded(this.items);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnNestedLoadMoreItemsCommand */
    /* loaded from: classes3.dex */
    public class OnNestedLoadMoreItemsCommand extends ViewCommand<CatalogAllView> {
        public final long categoryId;
        public final List<CampaignItem> items;

        OnNestedLoadMoreItemsCommand(CatalogAllView$$State catalogAllView$$State, long j, List<CampaignItem> list) {
            super("onNestedLoadMoreItems", AddToEndSingleStrategy.class);
            this.categoryId = j;
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onNestedLoadMoreItems(this.categoryId, this.items);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnNestedLoadMoreCompleteCommand */
    /* loaded from: classes3.dex */
    public class OnNestedLoadMoreCompleteCommand extends ViewCommand<CatalogAllView> {
        public final long categoryId;

        OnNestedLoadMoreCompleteCommand(CatalogAllView$$State catalogAllView$$State, long j) {
            super("onNestedLoadMoreComplete", AddToEndSingleStrategy.class);
            this.categoryId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onNestedLoadMoreComplete(this.categoryId);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnNestedLoadMoreErrorCommand */
    /* loaded from: classes3.dex */
    public class OnNestedLoadMoreErrorCommand extends ViewCommand<CatalogAllView> {
        public final long categoryId;

        OnNestedLoadMoreErrorCommand(CatalogAllView$$State catalogAllView$$State, long j) {
            super("onNestedLoadMoreError", AddToEndSingleStrategy.class);
            this.categoryId = j;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onNestedLoadMoreError(this.categoryId);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OpenCampaignDetailsScreenCommand */
    /* loaded from: classes3.dex */
    public class OpenCampaignDetailsScreenCommand extends ViewCommand<CatalogAllView> {
        public final CampaignItem campaign;
        public final TLRPC$Chat chat;
        public final ChatType chatType;

        OpenCampaignDetailsScreenCommand(CatalogAllView$$State catalogAllView$$State, CampaignItem campaignItem, TLRPC$Chat tLRPC$Chat, ChatType chatType) {
            super("openCampaignDetailsScreen", OneExecutionStateStrategy.class);
            this.campaign = campaignItem;
            this.chat = tLRPC$Chat;
            this.chatType = chatType;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.openCampaignDetailsScreen(this.campaign, this.chat, this.chatType);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$ShowToastCommand */
    /* loaded from: classes3.dex */
    public class ShowToastCommand extends ViewCommand<CatalogAllView> {
        public final String text;

        ShowToastCommand(CatalogAllView$$State catalogAllView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.showToast(this.text);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes3.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<CatalogAllView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(CatalogAllView$$State catalogAllView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnNoInternetErrorStateCommand */
    /* loaded from: classes3.dex */
    public class OnNoInternetErrorStateCommand extends ViewCommand<CatalogAllView> {
        OnNoInternetErrorStateCommand(CatalogAllView$$State catalogAllView$$State) {
            super("onNoInternetErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onNoInternetErrorState();
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnUnexpectedErrorStateCommand */
    /* loaded from: classes3.dex */
    public class OnUnexpectedErrorStateCommand extends ViewCommand<CatalogAllView> {
        OnUnexpectedErrorStateCommand(CatalogAllView$$State catalogAllView$$State) {
            super("onUnexpectedErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onUnexpectedErrorState();
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnEmptyStateCommand */
    /* loaded from: classes3.dex */
    public class OnEmptyStateCommand extends ViewCommand<CatalogAllView> {
        OnEmptyStateCommand(CatalogAllView$$State catalogAllView$$State) {
            super("onEmptyState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onEmptyState();
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<CatalogAllView> {
        public final List<BaseNode> items;

        OnLoadMoreItemsCommand(CatalogAllView$$State catalogAllView$$State, List<BaseNode> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<CatalogAllView> {
        OnLoadMoreCompleteCommand(CatalogAllView$$State catalogAllView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onLoadMoreComplete();
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes3.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<CatalogAllView> {
        OnLoadMoreErrorCommand(CatalogAllView$$State catalogAllView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.onLoadMoreError();
        }
    }

    /* compiled from: CatalogAllView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.all.CatalogAllView$$State$ShowRefreshingCommand */
    /* loaded from: classes3.dex */
    public class ShowRefreshingCommand extends ViewCommand<CatalogAllView> {
        public final boolean show;

        ShowRefreshingCommand(CatalogAllView$$State catalogAllView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(CatalogAllView catalogAllView) {
            catalogAllView.showRefreshing(this.show);
        }
    }
}
