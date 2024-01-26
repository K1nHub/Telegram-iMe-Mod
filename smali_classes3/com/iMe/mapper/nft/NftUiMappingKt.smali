.class public final Lcom/iMe/mapper/nft/NftUiMappingKt;
.super Ljava/lang/Object;
.source "NftUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNftUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NftUiMapping.kt\ncom/iMe/mapper/nft/NftUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,32:1\n1477#2:33\n1502#2,3:34\n1505#2,3:44\n1559#2:50\n1590#2,4:51\n361#3,7:37\n125#4:47\n152#4,2:48\n154#4:55\n*S KotlinDebug\n*F\n+ 1 NftUiMapping.kt\ncom/iMe/mapper/nft/NftUiMappingKt\n*L\n14#1:33\n14#1:34,3\n14#1:44,3\n22#1:50\n22#1:51,4\n14#1:37,7\n14#1:47\n14#1:48,2\n14#1:55\n*E\n"
.end annotation


# direct methods
.method public static final mapToUi(Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/nft/NftToken;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/nft/NftCollectionItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1503
    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    .line 14
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    move-result-object v2

    .line 361
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1504
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_0
    check-cast v3, Ljava/util/List;

    .line 1505
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "e1c53c6e-688f-44bf-9bdd-a34dd1317106"

    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/iMe/model/wallet/home/nft/NftType;->ANONYMOUS_NUMBER:Lcom/iMe/model/wallet/home/nft/NftType;

    :goto_2
    move-object v8, v2

    goto :goto_3

    :cond_2
    const-string v3, "4e3f131b-9e04-461b-bb72-b4ea03ffccd4"

    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/iMe/model/wallet/home/nft/NftType;->USERNAME:Lcom/iMe/model/wallet/home/nft/NftType;

    goto :goto_2

    .line 18
    :cond_3
    sget-object v2, Lcom/iMe/model/wallet/home/nft/NftType;->IMAGE:Lcom/iMe/model/wallet/home/nft/NftType;

    goto :goto_2

    .line 21
    :goto_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    .line 22
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 1559
    new-instance v5, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1591
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    move v3, v9

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    if-gez v3, :cond_4

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v6, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    .line 23
    new-instance v10, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-direct {v10, v6, v3, v8}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;-><init>(Lcom/iMe/storage/domain/model/crypto/nft/NftToken;ILcom/iMe/model/wallet/home/nft/NftType;)V

    .line 1592
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v7

    goto :goto_4

    .line 25
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v6

    .line 20
    new-instance v1, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    move-object v3, v1

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;-><init>(Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;Ljava/util/List;Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;ZLcom/iMe/model/wallet/home/nft/NftType;)V

    .line 30
    invoke-virtual {v1, v9}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 153
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    return-object p0
.end method
