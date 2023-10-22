.class public final Lcom/iMe/storage/data/mapper/fragment/TonFragmentProductMappingKt;
.super Ljava/lang/Object;
.source "TonFragmentProductMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentProductMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentProductMapping.kt\ncom/iMe/storage/data/mapper/fragment/TonFragmentProductMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,16:1\n1549#2:17\n1620#2,3:18\n*S KotlinDebug\n*F\n+ 1 TonFragmentProductMapping.kt\ncom/iMe/storage/data/mapper/fragment/TonFragmentProductMappingKt\n*L\n8#1:17\n8#1:18,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductResponse;)Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductResponse;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductResponse;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductResponse;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductResponse;->getFiatPrice()Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentUsernamesResponse;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentUsernamesResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentUsernamesResponse;->getUsernames()Ljava/util/List;

    move-result-object p0

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
    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductResponse;

    .line 8
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/fragment/TonFragmentProductMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentProductResponse;)Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
