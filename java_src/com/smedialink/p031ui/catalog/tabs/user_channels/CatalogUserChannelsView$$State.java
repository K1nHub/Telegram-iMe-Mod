package com.smedialink.p031ui.catalog.tabs.user_channels;

import com.chad.library.adapter.base.entity.node.BaseNode;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State */
/* loaded from: classes3.dex */
public class CatalogUserChannelsView$$State extends MvpViewState<CatalogUserChannelsView> implements CatalogUserChannelsView {
    @Override // com.smedialink.p031ui.catalog.tabs.user_channels.CatalogUserChannelsView
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

    @Override // com.smedialink.p031ui.catalog.tabs.user_channels.CatalogUserChannelsView
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

    /* compiled from: CatalogUserChannelsView$$State.java */
    /* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$ShowItemsCommand */
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
    /* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$OpenAddChannelScreenCommand */
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
    /* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$ShowToastCommand */
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
    /* renamed from: com.smedialink.ui.catalog.tabs.user_channels.CatalogUserChannelsView$$State$ShowLoadingDialogCommand */
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
}
