.class public final Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->getCategoriesObservable(Lcom/iMe/storage/domain/model/Result;Z)Lio/reactivex/Observable;
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
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;",
        ">;>;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt$mapSuccess$1\n+ 2 CatalogCategoriesPresenter.kt\ncom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter\n*L\n1#1,101:1\n210#2,5:102\n*E\n"
.end annotation


# instance fields
.field final synthetic $channelsResult$inlined:Lcom/iMe/storage/domain/model/Result;

.field final synthetic this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;->this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    iput-object p2, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;->$channelsResult$inlined:Lcom/iMe/storage/domain/model/Result;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/catalog/CategoryWithCounter;",
            ">;>;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 102
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/iMe/mapper/catalog/CatalogCategoriesUiMappingKt;->mapToUi(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 103
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;->this$0:Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;

    invoke-static {p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->access$getCategoryAll(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;)Lcom/iMe/model/common/FilterItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;->access$setCategories$p(Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter;Ljava/util/List;)V

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;->$channelsResult$inlined:Lcom/iMe/storage/domain/model/Result;

    goto :goto_0

    .line 32
    :cond_3
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_4
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/tabs/categories/CatalogCategoriesPresenter$getCategoriesObservable$$inlined$mapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
