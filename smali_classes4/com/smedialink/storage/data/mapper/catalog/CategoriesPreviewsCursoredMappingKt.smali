.class public final Lcom/smedialink/storage/data/mapper/catalog/CategoriesPreviewsCursoredMappingKt;
.super Ljava/lang/Object;
.source "CategoriesPreviewsCursoredMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoriesPreviewsCursoredMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoriesPreviewsCursoredMapping.kt\ncom/smedialink/storage/data/mapper/catalog/CategoriesPreviewsCursoredMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,10:1\n1547#2:11\n1618#2,3:12\n*S KotlinDebug\n*F\n+ 1 CategoriesPreviewsCursoredMapping.kt\ncom/smedialink/storage/data/mapper/catalog/CategoriesPreviewsCursoredMappingKt\n*L\n8#1:11\n8#1:12,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/CategoriesPreviewsCursoredResponse;)Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CategoriesPreviewsCursoredResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/storage/data/network/model/response/catalog/CategoryPreviewResponse;

    .line 8
    invoke-static {v2}, Lcom/smedialink/storage/data/mapper/catalog/CategoryPreviewMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/CategoryPreviewResponse;)Lcom/smedialink/storage/domain/model/catalog/CategoryPreview;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CategoriesPreviewsCursoredResponse;->getMeta()Lcom/smedialink/storage/data/network/model/response/catalog/CursorMetaResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/smedialink/storage/data/mapper/catalog/CursorMetaMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/CursorMetaResponse;)Lcom/smedialink/storage/domain/model/catalog/CursorMeta;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;

    invoke-direct {v0, v1, p0}, Lcom/smedialink/storage/domain/model/catalog/CategoriesPreviewsCursored;-><init>(Ljava/util/List;Lcom/smedialink/storage/domain/model/catalog/CursorMeta;)V

    return-object v0
.end method
