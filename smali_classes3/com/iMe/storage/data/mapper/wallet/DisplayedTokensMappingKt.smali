.class public final Lcom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt;
.super Ljava/lang/Object;
.source "DisplayedTokensMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayedTokensMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayedTokensMapping.kt\ncom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,26:1\n1179#2,2:27\n1253#2,4:29\n1655#2,8:33\n1054#2:41\n1559#2:42\n1590#2,4:43\n*S KotlinDebug\n*F\n+ 1 DisplayedTokensMapping.kt\ncom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt\n*L\n9#1:27,2\n9#1:29,4\n15#1:33,8\n16#1:41\n17#1:42\n17#1:43,4\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;",
            ")",
            "Ljava/util/Map<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;->getDisplayedTokens()Ljava/util/List;

    move-result-object p0

    const/16 v0, 0xa

    .line 1179
    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1180
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1254
    check-cast v0, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;

    .line 10
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;->isVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final mapToTokensSettings(Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokensResponse;->getDisplayedTokens()Ljava/util/List;

    move-result-object p0

    .line 1655
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1657
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1658
    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;

    .line 15
    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1659
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1660
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    :cond_1
    new-instance p0, Lcom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt$mapToTokensSettings$$inlined$sortedByDescending$1;

    invoke-direct {p0}, Lcom/iMe/storage/data/mapper/wallet/DisplayedTokensMappingKt$mapToTokensSettings$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    .line 1559
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1591
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_2

    .line 1592
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v2, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;

    .line 20
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getAddress()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v4, ""

    .line 22
    :cond_3
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/wallet/DisplayedTokenResponse;->isVisible()Z

    move-result v2

    .line 19
    new-instance v5, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;

    invoke-direct {v5, v1, v2, v4}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Crypto;-><init>(IZLjava/lang/String;)V

    .line 1592
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_1

    .line 26
    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
