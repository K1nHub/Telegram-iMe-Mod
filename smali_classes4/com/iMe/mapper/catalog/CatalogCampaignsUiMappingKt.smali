.class public final Lcom/iMe/mapper/catalog/CatalogCampaignsUiMappingKt;
.super Ljava/lang/Object;
.source "CatalogCampaignsUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogCampaignsUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogCampaignsUiMapping.kt\ncom/iMe/mapper/catalog/CatalogCampaignsUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,21:1\n1549#2:22\n1620#2,2:23\n1549#2:25\n1620#2,3:26\n1622#2:29\n*S KotlinDebug\n*F\n+ 1 CatalogCampaignsUiMapping.kt\ncom/iMe/mapper/catalog/CatalogCampaignsUiMappingKt\n*L\n6#1:22\n6#1:23,2\n17#1:25\n17#1:26,3\n6#1:29\n*E\n"
.end annotation


# direct methods
.method public static final mapToUi(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/catalog/Campaign;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/model/catalog/CampaignItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/catalog/Campaign;

    .line 9
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getCategory()Lcom/iMe/storage/domain/model/catalog/CatalogCategory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/CatalogCategory;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 10
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getChannel()Lcom/iMe/storage/domain/model/catalog/Channel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/Channel;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getChannel()Lcom/iMe/storage/domain/model/catalog/Channel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/Channel;->getTelegramId()J

    move-result-wide v8

    .line 12
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getChannel()Lcom/iMe/storage/domain/model/catalog/Channel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/Channel;->getVerified()Z

    move-result v10

    .line 13
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getLanguage()Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/CatalogLanguage;->getTitle()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getChannel()Lcom/iMe/storage/domain/model/catalog/Channel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/Channel;->getMembersCount()J

    move-result-wide v12

    .line 15
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getChannel()Lcom/iMe/storage/domain/model/catalog/Channel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/Channel;->getPhoto()Ljava/lang/String;

    move-result-object v14

    .line 16
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getChannel()Lcom/iMe/storage/domain/model/catalog/Channel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/Channel;->getShortname()Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getTags()Ljava/util/List;

    move-result-object v4

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 p0, v0

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    check-cast v4, Lcom/iMe/storage/domain/model/catalog/ChannelTag;

    .line 17
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/catalog/ChannelTag;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 1621
    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/catalog/Campaign;->getChannel()Lcom/iMe/storage/domain/model/catalog/Channel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/catalog/Channel;->getTitle()Ljava/lang/String;

    move-result-object v17

    .line 8
    new-instance v0, Lcom/iMe/model/catalog/CampaignItem;

    move-object v3, v5

    move-object v5, v0

    move-object/from16 v16, v3

    invoke-direct/range {v5 .. v17}, Lcom/iMe/model/catalog/CampaignItem;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 21
    :cond_1
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
