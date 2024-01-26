.class public final Lcom/iMe/storage/data/mapper/wallet/TokenListsMappingKt;
.super Ljava/lang/Object;
.source "TokenListsMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenListsMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenListsMapping.kt\ncom/iMe/storage/data/mapper/wallet/TokenListsMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,20:1\n1549#2:21\n1620#2,3:22\n*S KotlinDebug\n*F\n+ 1 TokenListsMapping.kt\ncom/iMe/storage/data/mapper/wallet/TokenListsMappingKt\n*L\n10#1:21\n10#1:22,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenListResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenListResponse;->isVerified()Z

    move-result v1

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenListResponse;->getName()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenListResponse;->getIcon()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenListResponse;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenListsResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenListsResponse;->getTokenLists()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/storage/data/network/model/response/wallet/TokenListResponse;

    .line 10
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenListsMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenListResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenListInfo;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenListsResponse;->getVerifiedSize()I

    move-result p0

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;

    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;-><init>(Ljava/util/List;I)V

    return-object v0
.end method
