.class public final Lcom/iMe/storage/data/mapper/fragment/PremiumPlanMappingKt;
.super Ljava/lang/Object;
.source "PremiumPlanMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPremiumPlanMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PremiumPlanMapping.kt\ncom/iMe/storage/data/mapper/fragment/PremiumPlanMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,16:1\n1549#2:17\n1620#2,3:18\n*S KotlinDebug\n*F\n+ 1 PremiumPlanMapping.kt\ncom/iMe/storage/data/mapper/fragment/PremiumPlanMappingKt\n*L\n7#1:17\n7#1:18,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPricesResponse;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPricesResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPricesResponse;->getPrices()Ljava/util/List;

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
    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPriceDataResponse;

    .line 9
    new-instance v8, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;

    .line 10
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPriceDataResponse;->getMonths()I

    move-result v3

    .line 11
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPriceDataResponse;->getPriceTon()D

    move-result-wide v4

    .line 12
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPriceDataResponse;->getDiscount()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/fragment/TonFragmentPremiumPriceDataResponse;->getPriceUsd()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;-><init>(IDLjava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
