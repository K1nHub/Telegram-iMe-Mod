.class public final Lcom/iMe/storage/data/mapper/wallet/TokensSearchResponseMappingKt;
.super Ljava/lang/Object;
.source "TokensSearchResponseMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokensSearchResponseMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokensSearchResponseMapping.kt\ncom/iMe/storage/data/mapper/wallet/TokensSearchResponseMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1549#2:38\n1620#2,3:39\n1549#2:42\n1620#2,3:43\n*S KotlinDebug\n*F\n+ 1 TokensSearchResponseMapping.kt\ncom/iMe/storage/data/mapper/wallet/TokensSearchResponseMappingKt\n*L\n13#1:38\n13#1:39,3\n20#1:42\n20#1:43,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokensSearchResponse;)Lcom/iMe/storage/domain/model/common/CursoredData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/wallet/TokensSearchResponse;",
            ")",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/FoundTokenWithFamily;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokensSearchResponse;->getTokens()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenWithFamilyResponse;

    .line 13
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokensSearchResponseMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenWithFamilyResponse;)Lcom/iMe/storage/domain/model/wallet/token/FoundTokenWithFamily;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokensSearchResponse;->getCursor()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Lcom/iMe/storage/domain/model/common/CursoredData;

    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/common/CursoredData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;)Lcom/iMe/storage/domain/model/wallet/token/FoundToken;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;

    .line 25
    new-instance v10, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->getAvatar()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->getDecimals()I

    move-result v6

    .line 30
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->getTicker()Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->isCoin()Z

    move-result v8

    .line 32
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->getName()Ljava/lang/String;

    move-result-object v9

    .line 33
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->getWebsite()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v1

    :goto_1
    move-object v1, v10

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v11

    .line 25
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->isSwitchOn()Z

    move-result v1

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;->isCustom()Z

    move-result p0

    .line 24
    invoke-direct {v0, v10, v1, p0}, Lcom/iMe/storage/domain/model/wallet/token/FoundToken;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;ZZ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenWithFamilyResponse;)Lcom/iMe/storage/domain/model/wallet/token/FoundTokenWithFamily;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenWithFamilyResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokensSearchResponseMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;)Lcom/iMe/storage/domain/model/wallet/token/FoundToken;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenWithFamilyResponse;->getFamily()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;

    .line 20
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokensSearchResponseMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FoundTokenResponse;)Lcom/iMe/storage/domain/model/wallet/token/FoundToken;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lcom/iMe/storage/domain/model/wallet/token/FoundTokenWithFamily;

    invoke-direct {p0, v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/FoundTokenWithFamily;-><init>(Lcom/iMe/storage/domain/model/wallet/token/FoundToken;Ljava/util/List;)V

    return-object p0
.end method
