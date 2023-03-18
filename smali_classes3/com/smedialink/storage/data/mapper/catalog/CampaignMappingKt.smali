.class public final Lcom/smedialink/storage/data/mapper/catalog/CampaignMappingKt;
.super Ljava/lang/Object;
.source "CampaignMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCampaignMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignMapping.kt\ncom/smedialink/storage/data/mapper/catalog/CampaignMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,18:1\n1549#2:19\n1620#2,3:20\n1549#2:23\n1620#2,3:24\n*S KotlinDebug\n*F\n+ 1 CampaignMapping.kt\ncom/smedialink/storage/data/mapper/catalog/CampaignMappingKt\n*L\n11#1:19\n11#1:20,3\n17#1:23\n17#1:24,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;)Lcom/smedialink/storage/domain/model/catalog/Campaign;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getCategory()Lcom/smedialink/storage/data/network/model/response/catalog/CatalogCategoryResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/catalog/ChannelCategoryMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/CatalogCategoryResponse;)Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getChannel()Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/catalog/ChannelMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/ChannelResponse;)Lcom/smedialink/storage/domain/model/catalog/Channel;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getCountries()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v4, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1621
    check-cast v5, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;

    .line 11
    invoke-static {v5}, Lcom/smedialink/storage/data/mapper/catalog/ChannelCountryMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/ChannelCountryResponse;)Lcom/smedialink/storage/domain/model/catalog/ChannelCountry;

    move-result-object v5

    .line 1621
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getId()J

    move-result-wide v6

    .line 14
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getInvalidReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    move-object v8, v0

    .line 15
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getLanguage()Lcom/smedialink/storage/data/network/model/response/catalog/CatalogLanguageResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/catalog/ChannelLanguageMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/CatalogLanguageResponse;)Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;

    move-result-object v9

    .line 16
    sget-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->Companion:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus$Companion;->getByName(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    move-result-object v10

    .line 17
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/catalog/CampaignResponse;->getTags()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1621
    check-cast v0, Lcom/smedialink/storage/data/network/model/response/catalog/ChannelTagResponse;

    .line 17
    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/catalog/ChannelTagMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/catalog/ChannelTagResponse;)Lcom/smedialink/storage/domain/model/catalog/ChannelTag;

    move-result-object v0

    .line 1621
    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Lcom/smedialink/storage/domain/model/catalog/Campaign;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/smedialink/storage/domain/model/catalog/Campaign;-><init>(Lcom/smedialink/storage/domain/model/catalog/CatalogCategory;Lcom/smedialink/storage/domain/model/catalog/Channel;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lcom/smedialink/storage/domain/model/catalog/CatalogLanguage;Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;Ljava/util/List;)V

    return-object p0
.end method
