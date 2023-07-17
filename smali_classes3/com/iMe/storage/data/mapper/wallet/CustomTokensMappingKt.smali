.class public final Lcom/iMe/storage/data/mapper/wallet/CustomTokensMappingKt;
.super Ljava/lang/Object;
.source "CustomTokensMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomTokensMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTokensMapping.kt\ncom/iMe/storage/data/mapper/wallet/CustomTokensMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,11:1\n1549#2:12\n1620#2,3:13\n*S KotlinDebug\n*F\n+ 1 CustomTokensMapping.kt\ncom/iMe/storage/data/mapper/wallet/CustomTokensMappingKt\n*L\n9#1:12\n9#1:13,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/CustomTokensResponse;)Lcom/iMe/storage/domain/model/common/CursoredData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/wallet/CustomTokensResponse;",
            ")",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/CustomTokensResponse;->getTokens()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 9
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/CustomTokensResponse;->getCursor()Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/common/CursoredData;

    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/common/CursoredData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
