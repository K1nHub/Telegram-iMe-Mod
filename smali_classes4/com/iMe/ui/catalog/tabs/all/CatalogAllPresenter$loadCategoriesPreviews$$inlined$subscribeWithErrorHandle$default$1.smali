.class public final Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->loadCategoriesPreviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/catalog/CategoriesPreviewsCursored;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogAllPresenter.kt\ncom/iMe/ui/catalog/tabs/all/CatalogAllPresenter\n*L\n1#1,132:1\n57#2,31:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isInitialLoad$inlined:Z

.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/catalog/CategoriesPreviewsCursored;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/catalog/CategoriesPreviewsCursored;

    invoke-static {v0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->access$mapNewDataToUiItems(Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;Lcom/iMe/storage/domain/model/catalog/CategoriesPreviewsCursored;)Ljava/util/List;

    move-result-object p1

    .line 136
    iget-boolean v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    .line 138
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;->onCategoriesLoaded(Ljava/util/List;)V

    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreItems(Ljava/util/List;)V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-static {p1}, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;->access$getCategoriesCursor$p(Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 147
    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    goto :goto_1

    .line 151
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-eqz p1, :cond_6

    .line 152
    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_1

    .line 155
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_6

    .line 156
    iget-boolean v0, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->$isInitialLoad$inlined:Z

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_1

    .line 157
    :cond_4
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onNoInternetErrorState()V

    goto :goto_1

    .line 158
    :cond_5
    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter$loadCategoriesPreviews$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    :cond_6
    :goto_1
    return-void
.end method
