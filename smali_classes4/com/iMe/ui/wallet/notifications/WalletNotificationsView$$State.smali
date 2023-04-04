.class public Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "WalletNotificationsView$$State.java"

# interfaces
.implements Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowRefreshingCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ResetLoadMoreCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreErrorCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreCompleteCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreItemsCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnEmptyStateCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadingStateCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnUnexpectedErrorStateCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnNoInternetErrorStateCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowToastCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;,
        Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadedNotificationsCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;",
        ">;",
        "Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public onEmptyState()V
    .locals 3

    .line 163
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnEmptyStateCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnEmptyStateCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V

    .line 164
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 166
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 171
    invoke-interface {v2}, Lcom/iMe/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 3

    .line 195
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreCompleteCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreCompleteCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V

    .line 196
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 198
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 203
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 3

    .line 211
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreErrorCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreErrorCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V

    .line 212
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 214
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 219
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadMoreItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation

    .line 179
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadMoreItemsCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;Ljava/util/List;)V

    .line 180
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 182
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 187
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadedNotifications(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/notification/NotificationItem;",
            ">;)V"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadedNotificationsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadedNotificationsCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;Ljava/util/List;)V

    .line 19
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 21
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 26
    invoke-interface {v2, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;->onLoadedNotifications(Ljava/util/List;)V

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadingState()V
    .locals 3

    .line 147
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadingStateCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnLoadingStateCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V

    .line 148
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 150
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 155
    invoke-interface {v2}, Lcom/iMe/ui/custom/state/GlobalStateView;->onLoadingState()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onNoInternetErrorState()V
    .locals 3

    .line 115
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnNoInternetErrorStateCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnNoInternetErrorStateCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V

    .line 116
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 118
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 123
    invoke-interface {v2}, Lcom/iMe/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_0

    .line 126
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onUnexpectedErrorState()V
    .locals 3

    .line 131
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnUnexpectedErrorStateCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$OnUnexpectedErrorStateCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V

    .line 132
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 134
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 139
    invoke-interface {v2}, Lcom/iMe/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public resetLoadMore()V
    .locals 3

    .line 227
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ResetLoadMoreCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ResetLoadMoreCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;)V

    .line 228
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 230
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 235
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    goto :goto_0

    .line 238
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 66
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 67
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 69
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 74
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showRefreshing(Z)V
    .locals 3

    .line 243
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowRefreshingCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowRefreshingCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;Z)V

    .line 244
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 246
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 251
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 50
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 53
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 58
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public updateNotificationAsRead(ILcom/iMe/model/wallet/notification/NotificationItem;)V
    .locals 3

    .line 34
    new-instance v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State$UpdateNotificationAsReadCommand;-><init>(Lcom/iMe/ui/wallet/notifications/WalletNotificationsView$$State;ILcom/iMe/model/wallet/notification/NotificationItem;)V

    .line 35
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 37
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->views:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    .line 42
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;->updateNotificationAsRead(ILcom/iMe/model/wallet/notification/NotificationItem;)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
