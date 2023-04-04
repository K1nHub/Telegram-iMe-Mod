.class public final Lcom/iMe/storage/data/mapper/catalog/CampaignsCursoredMappingKt;
.super Ljava/lang/Object;
.source "CampaignsCursoredMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCampaignsCursoredMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignsCursoredMapping.kt\ncom/iMe/storage/data/mapper/catalog/CampaignsCursoredMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,10:1\n1549#2:11\n1620#2,3:12\n*S KotlinDebug\n*F\n+ 1 CampaignsCursoredMapping.kt\ncom/iMe/storage/data/mapper/catalog/CampaignsCursoredMappingKt\n*L\n8#1:11\n8#1:12,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CampaignsCursoredResponse;)Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CampaignsCursoredResponse;->getItems()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;

    .line 8
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/catalog/CampaignMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CampaignResponse;)Lcom/iMe/storage/domain/model/catalog/Campaign;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/catalog/CampaignsCursoredResponse;->getMeta()Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/catalog/CursorMetaMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/catalog/CursorMetaResponse;)Lcom/iMe/storage/domain/model/catalog/CursorMeta;

    move-result-object p0

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;

    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/catalog/CampaignsCursored;-><init>(Ljava/util/List;Lcom/iMe/storage/domain/model/catalog/CursorMeta;)V

    return-object v0
.end method
