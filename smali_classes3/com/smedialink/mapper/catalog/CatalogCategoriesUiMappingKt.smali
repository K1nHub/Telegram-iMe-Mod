.class public final Lcom/smedialink/mapper/catalog/CatalogCategoriesUiMappingKt;
.super Ljava/lang/Object;
.source "CatalogCategoriesUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogCategoriesUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCategoriesUiMapping.kt\ncom/smedialink/mapper/catalog/CatalogCategoriesUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,14:1\n1547#2:15\n1618#2,3:16\n*S KotlinDebug\n*F\n+ 1 CatalogCategoriesUiMapping.kt\ncom/smedialink/mapper/catalog/CatalogCategoriesUiMappingKt\n*L\n6#1:15\n6#1:16,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToUi(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/common/FilterItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;

    .line 7
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CategoryWithCounter;->getCategory()Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/smedialink/model/common/FilterItem;

    .line 9
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getId()J

    move-result-wide v3

    .line 10
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 8
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/smedialink/model/common/FilterItem;-><init>(JLjava/lang/String;Z)V

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
