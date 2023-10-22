package com.iMe.p030ui.wallet.notifications;

import com.iMe.model.wallet.notification.NotificationItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import io.reactivex.disposables.Disposable;
import java.util.List;
import moxy.viewstate.MvpViewState;
import moxy.viewstate.ViewCommand;
import moxy.viewstate.strategy.AddToEndSingleStrategy;
import moxy.viewstate.strategy.OneExecutionStateStrategy;
/* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State */
/* loaded from: classes4.dex */
public class WalletNotificationsView$$State extends MvpViewState<WalletNotificationsView> implements WalletNotificationsView {
    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void finishScreen() {
        BaseView.CC.$default$finishScreen(this);
    }

    @Override // com.iMe.p030ui.base.mvp.base.BaseView
    public /* synthetic */ void removeSelfFromStackImmediately() {
        BaseView.CC.$default$removeSelfFromStackImmediately(this);
    }

    @Override // com.iMe.p030ui.wallet.notifications.WalletNotificationsView
    public void onLoadedNotifications(List<NotificationItem> list) {
        OnLoadedNotificationsCommand onLoadedNotificationsCommand = new OnLoadedNotificationsCommand(this, list);
        this.viewCommands.beforeApply(onLoadedNotificationsCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadedNotifications(list);
        }
        this.viewCommands.afterApply(onLoadedNotificationsCommand);
    }

    @Override // com.iMe.p030ui.wallet.notifications.WalletNotificationsView
    public void updateNotificationAsRead(int i, NotificationItem notificationItem) {
        UpdateNotificationAsReadCommand updateNotificationAsReadCommand = new UpdateNotificationAsReadCommand(this, i, notificationItem);
        this.viewCommands.beforeApply(updateNotificationAsReadCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.updateNotificationAsRead(i, notificationItem);
        }
        this.viewCommands.afterApply(updateNotificationAsReadCommand);
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

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
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

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
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

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
    public void onLoadingState() {
        OnLoadingStateCommand onLoadingStateCommand = new OnLoadingStateCommand(this);
        this.viewCommands.beforeApply(onLoadingStateCommand);
        if (hasNotView().booleanValue()) {
            return;
        }
        for (View view : this.views) {
            view.onLoadingState();
        }
        this.viewCommands.afterApply(onLoadingStateCommand);
    }

    @Override // com.iMe.p030ui.custom.state.GlobalStateView
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

    @Override // com.iMe.p030ui.base.mvp.LoadMoreView
    public void onLoadMoreItems(List<NotificationItem> list) {
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

    @Override // com.iMe.p030ui.base.mvp.SwipeRefreshView
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

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnLoadedNotificationsCommand */
    /* loaded from: classes4.dex */
    public class OnLoadedNotificationsCommand extends ViewCommand<WalletNotificationsView> {
        public final List<NotificationItem> notifications;

        OnLoadedNotificationsCommand(WalletNotificationsView$$State walletNotificationsView$$State, List<NotificationItem> list) {
            super("onLoadedNotifications", AddToEndSingleStrategy.class);
            this.notifications = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onLoadedNotifications(this.notifications);
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$UpdateNotificationAsReadCommand */
    /* loaded from: classes4.dex */
    public class UpdateNotificationAsReadCommand extends ViewCommand<WalletNotificationsView> {
        public final NotificationItem notification;
        public final int position;

        UpdateNotificationAsReadCommand(WalletNotificationsView$$State walletNotificationsView$$State, int i, NotificationItem notificationItem) {
            super("updateNotificationAsRead", AddToEndSingleStrategy.class);
            this.position = i;
            this.notification = notificationItem;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.updateNotificationAsRead(this.position, this.notification);
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$ShowToastCommand */
    /* loaded from: classes4.dex */
    public class ShowToastCommand extends ViewCommand<WalletNotificationsView> {
        public final String text;

        ShowToastCommand(WalletNotificationsView$$State walletNotificationsView$$State, String str) {
            super("showToast", OneExecutionStateStrategy.class);
            this.text = str;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.showToast(this.text);
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$ShowLoadingDialogCommand */
    /* loaded from: classes4.dex */
    public class ShowLoadingDialogCommand extends ViewCommand<WalletNotificationsView> {
        public final Disposable actionToCancel;
        public final boolean cancellable;
        public final boolean show;

        ShowLoadingDialogCommand(WalletNotificationsView$$State walletNotificationsView$$State, boolean z, boolean z2, Disposable disposable) {
            super("showLoadingDialog", OneExecutionStateStrategy.class);
            this.show = z;
            this.cancellable = z2;
            this.actionToCancel = disposable;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.showLoadingDialog(this.show, this.cancellable, this.actionToCancel);
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$ShowErrorToastCommand */
    /* loaded from: classes4.dex */
    public class ShowErrorToastCommand<T> extends ViewCommand<WalletNotificationsView> {
        public final ResourceManager resourceManager;
        public final Result.Error<? extends T> result;

        ShowErrorToastCommand(WalletNotificationsView$$State walletNotificationsView$$State, Result.Error<? extends T> error, ResourceManager resourceManager) {
            super("showErrorToast", OneExecutionStateStrategy.class);
            this.result = error;
            this.resourceManager = resourceManager;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.showErrorToast(this.result, this.resourceManager);
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnNoInternetErrorStateCommand */
    /* loaded from: classes4.dex */
    public class OnNoInternetErrorStateCommand extends ViewCommand<WalletNotificationsView> {
        OnNoInternetErrorStateCommand(WalletNotificationsView$$State walletNotificationsView$$State) {
            super("onNoInternetErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onNoInternetErrorState();
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnUnexpectedErrorStateCommand */
    /* loaded from: classes4.dex */
    public class OnUnexpectedErrorStateCommand extends ViewCommand<WalletNotificationsView> {
        OnUnexpectedErrorStateCommand(WalletNotificationsView$$State walletNotificationsView$$State) {
            super("onUnexpectedErrorState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onUnexpectedErrorState();
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnLoadingStateCommand */
    /* loaded from: classes4.dex */
    public class OnLoadingStateCommand extends ViewCommand<WalletNotificationsView> {
        OnLoadingStateCommand(WalletNotificationsView$$State walletNotificationsView$$State) {
            super("onLoadingState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onLoadingState();
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnEmptyStateCommand */
    /* loaded from: classes4.dex */
    public class OnEmptyStateCommand extends ViewCommand<WalletNotificationsView> {
        OnEmptyStateCommand(WalletNotificationsView$$State walletNotificationsView$$State) {
            super("onEmptyState", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onEmptyState();
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnLoadMoreItemsCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreItemsCommand extends ViewCommand<WalletNotificationsView> {
        public final List<NotificationItem> items;

        OnLoadMoreItemsCommand(WalletNotificationsView$$State walletNotificationsView$$State, List<NotificationItem> list) {
            super("onLoadMoreItems", AddToEndSingleStrategy.class);
            this.items = list;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onLoadMoreItems(this.items);
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnLoadMoreCompleteCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreCompleteCommand extends ViewCommand<WalletNotificationsView> {
        OnLoadMoreCompleteCommand(WalletNotificationsView$$State walletNotificationsView$$State) {
            super("onLoadMoreComplete", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onLoadMoreComplete();
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$OnLoadMoreErrorCommand */
    /* loaded from: classes4.dex */
    public class OnLoadMoreErrorCommand extends ViewCommand<WalletNotificationsView> {
        OnLoadMoreErrorCommand(WalletNotificationsView$$State walletNotificationsView$$State) {
            super("onLoadMoreError", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.onLoadMoreError();
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$ResetLoadMoreCommand */
    /* loaded from: classes4.dex */
    public class ResetLoadMoreCommand extends ViewCommand<WalletNotificationsView> {
        ResetLoadMoreCommand(WalletNotificationsView$$State walletNotificationsView$$State) {
            super("resetLoadMore", AddToEndSingleStrategy.class);
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.resetLoadMore();
        }
    }

    /* compiled from: WalletNotificationsView$$State.java */
    /* renamed from: com.iMe.ui.wallet.notifications.WalletNotificationsView$$State$ShowRefreshingCommand */
    /* loaded from: classes4.dex */
    public class ShowRefreshingCommand extends ViewCommand<WalletNotificationsView> {
        public final boolean show;

        ShowRefreshingCommand(WalletNotificationsView$$State walletNotificationsView$$State, boolean z) {
            super("showRefreshing", AddToEndSingleStrategy.class);
            this.show = z;
        }

        @Override // moxy.viewstate.ViewCommand
        public void apply(WalletNotificationsView walletNotificationsView) {
            walletNotificationsView.showRefreshing(this.show);
        }
    }
}
