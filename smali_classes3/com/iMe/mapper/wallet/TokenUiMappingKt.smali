.class public final Lcom/iMe/mapper/wallet/TokenUiMappingKt;
.super Ljava/lang/Object;
.source "TokenUiMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenUiMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenUiMapping.kt\ncom/iMe/mapper/wallet/TokenUiMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,16:1\n1549#2:17\n1620#2,3:18\n*S KotlinDebug\n*F\n+ 1 TokenUiMapping.kt\ncom/iMe/mapper/wallet/TokenUiMappingKt\n*L\n16#1:17\n16#1:18,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/model/wallet/crypto/TokenItem;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 8
    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getDecimals()I

    move-result v5

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getTicker()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->isCoin()Z

    move-result v7

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iMe/model/wallet/crypto/TokenItem;->getWebsite()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/iMe/model/wallet/crypto/TokenItem;

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v5

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->isCoin()Z

    move-result v7

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getWebsite()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    .line 12
    invoke-direct/range {v1 .. v9}, Lcom/iMe/model/wallet/crypto/TokenItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToUI(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/TokenItem;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 16
    invoke-static {v1}, Lcom/iMe/mapper/wallet/TokenUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/model/wallet/crypto/TokenItem;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
