.class public final Lcom/iMe/storage/data/mapper/catalog/CategoryPreviewMappingKt;
.super Ljava/lang/Object;
.source "CategoryPreviewMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryPreviewMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryPreviewMapping.kt\ncom/iMe/storage/data/mapper/catalog/CategoryPreviewMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,12:1\n1549#2:13\n1620#2,3:14\n*S KotlinDebug\n*F\n+ 1 CategoryPreviewMapping.kt\ncom/iMe/storage/data/mapper/catalog/CategoryPreviewMappingKt\n*L\n9#1:13\n9#1:14,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;)Lcom/iMe/storage/domain/model/catalog/CategoryPreview;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->getCategory()Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/catalog/ChannelCategoryMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CatalogCategoryResponse;)Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->getItems()Ljava/util/List;

    move-result-object v1

    .line 1549
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;

    .line 9
    invoke-static {v3}, Lcom/iMe/storage/data/mapper/catalog/CampaignMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;)Lcom/iMe/storage/domain/model/catalog/Campaign;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->getTotal()I

    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CategoryPreviewResponse;->getMeta()Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/catalog/CursorMetaMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;)Lcom/iMe/storage/domain/model/catalog/CursorMeta;

    move-result-object p0

    .line 7
    new-instance v3, Lcom/iMe/storage/domain/model/catalog/CategoryPreview;

    invoke-direct {v3, v0, v1, p0, v2}, Lcom/iMe/storage/domain/model/catalog/CategoryPreview;-><init>(Lcom/iMe/storage/domain/model/catalog/CatalogCategory;Ljava/util/List;Lcom/iMe/storage/domain/model/catalog/CursorMeta;I)V

    return-object v3
.end method
