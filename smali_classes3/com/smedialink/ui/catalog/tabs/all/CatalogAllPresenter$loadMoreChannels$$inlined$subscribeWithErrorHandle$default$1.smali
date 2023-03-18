.class public final Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->loadMoreChannels(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CatalogAllPresenter.kt\ncom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n146#2,3:112\n149#2,20:116\n1#3:115\n*E\n"
.end annotation


# instance fields
.field final synthetic $categoryId$inlined:J

.field final synthetic this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;J)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    iput-wide p2, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->$categoryId$inlined:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->access$getCategories$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->$categoryId$inlined:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;->getItems()Ljava/util/List;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_4

    .line 117
    iget-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onUnexpectedErrorState()V

    goto/16 :goto_3

    .line 120
    :cond_4
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/catalog/CampaignsCursored;->getMeta()Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/catalog/CursorMeta;->getNextCursor()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->$categoryId$inlined:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->access$getCategoriesChannelsCursors$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Ljava/util/Map;

    move-result-object v1

    if-nez p1, :cond_5

    const-string v3, ""

    goto :goto_2

    :cond_5
    move-object v3, p1

    :goto_2
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 124
    iget-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    iget-wide v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->$categoryId$inlined:J

    invoke-static {v2}, Lcom/smedialink/mapper/catalog/CatalogCampaignsUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->onNestedLoadMoreItems(JLjava/util/List;)V

    goto :goto_3

    .line 126
    :cond_6
    iget-object p1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    iget-wide v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->$categoryId$inlined:J

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->onNestedLoadMoreComplete(J)V

    goto :goto_3

    .line 129
    :cond_7
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_8

    .line 130
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    iget-wide v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->$categoryId$inlined:J

    invoke-interface {v0, v1, v2}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;->onNestedLoadMoreError(J)V

    .line 131
    iget-object v0, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter$loadMoreChannels$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/catalog/tabs/all/CatalogAllPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method
