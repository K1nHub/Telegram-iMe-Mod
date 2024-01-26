.class public Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;
.super Lmoxy/viewstate/MvpViewState;
.source "CatalogCategoriesView$$State.java"

# interfaces
.implements Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreErrorCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreCompleteCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreItemsCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowErrorToastCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowLoadingDialogCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowToastCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;,
        Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/MvpViewState<",
        "Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;",
        ">;",
        "Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lmoxy/viewstate/MvpViewState;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic finishScreen()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$finishScreen(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public synthetic onEmptyState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onEmptyState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 3

    .line 232
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreCompleteCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreCompleteCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;)V

    .line 233
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 235
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 239
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 240
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public onLoadMoreError()V
    .locals 3

    .line 248
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreErrorCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreErrorCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;)V

    .line 249
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 251
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 255
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 256
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_0

    .line 259
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

    .line 216
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreItemsCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OnLoadMoreItemsCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Ljava/util/List;)V

    .line 217
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 219
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 223
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 224
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public synthetic onLoadingState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onLoadingState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public synthetic onNoInternetErrorState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onNoInternetErrorState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public synthetic onUnexpectedErrorState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onUnexpectedErrorState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public openCampaignDetailsScreen(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 3

    .line 39
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$OpenCampaignDetailsScreenCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    .line 40
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 42
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 46
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 47
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->openCampaignDetailsScreen(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public synthetic removeSelfFromStackImmediately()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$removeSelfFromStackImmediately(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 23
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$RenderNodesCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Ljava/util/List;)V

    .line 24
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 26
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 30
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 31
    invoke-interface {v2, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;->renderNodes(Ljava/util/List;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public resetLoadMore()V
    .locals 3

    .line 264
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ResetLoadMoreCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;)V

    .line 265
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 267
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 271
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 272
    invoke-interface {v2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowErrorToastCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowErrorToastCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    .line 88
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 90
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 94
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 95
    invoke-interface {v2, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 3

    .line 71
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowLoadingDialogCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowLoadingDialogCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;ZZLio/reactivex/disposables/Disposable;)V

    .line 72
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 74
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 78
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 79
    invoke-interface {v2, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/BaseView;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 55
    new-instance v0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowToastCommand;

    invoke-direct {v0, p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State$ShowToastCommand;-><init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView$$State;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {v1, v0}, Lmoxy/viewstate/ViewCommands;->beforeApply(Lmoxy/viewstate/ViewCommand;)V

    .line 58
    invoke-virtual {p0}, Lmoxy/viewstate/MvpViewState;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 62
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

    check-cast v2, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesView;

    .line 63
    invoke-interface {v2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lmoxy/viewstate/MvpViewState;->viewCommands:Lmoxy/viewstate/ViewCommands;

    invoke-virtual {p1, v0}, Lmoxy/viewstate/ViewCommands;->afterApply(Lmoxy/viewstate/ViewCommand;)V

    return-void
.end method
