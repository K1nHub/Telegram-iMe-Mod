.class public Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "CatalogCategoriesView$$State.java"

# interfaces
.implements Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;,
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreErrorCommand;,
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreCompleteCommand;,
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreItemsCommand;,
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowLoadingDialogCommand;,
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowToastCommand;,
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;,
        Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;",
        ">;",
        "Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMoreComplete()V
    .locals 3

    .line 198
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreCompleteCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreCompleteCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;)V

    .line 199
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 201
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 205
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 206
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 209
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 3

    .line 214
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreErrorCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreErrorCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;)V

    .line 215
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 217
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 221
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 222
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 225
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
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 182
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreItemsCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Ljava/util/List;)V

    .line 183
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 185
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 189
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 190
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public openCampaignDetailsScreen(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V
    .locals 3

    .line 37
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    .line 38
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 40
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 44
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 45
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;->openCampaignDetailsScreen(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;)V

    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public renderNodes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Ljava/util/List;)V

    .line 22
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 24
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 28
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 29
    invoke-interface {v2, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public resetLoadMore()V
    .locals 3

    .line 230
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;)V

    .line 231
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 233
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 237
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 238
    invoke-interface {v2}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    goto :goto_0

    .line 241
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 69
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowLoadingDialogCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 70
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 72
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 76
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 77
    invoke-interface {v2, p1, p2, p3}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 53
    new-instance v0, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowToastCommand;-><init>(Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 56
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 60
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

    check-cast v2, Lcom/smedialink/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 61
    invoke-interface {v2, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
