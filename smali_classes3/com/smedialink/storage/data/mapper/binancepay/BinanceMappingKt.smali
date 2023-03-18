.class public final Lcom/smedialink/storage/data/mapper/binancepay/BinanceMappingKt;
.super Ljava/lang/Object;
.source "BinanceMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinanceMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinanceMapping.kt\ncom/smedialink/storage/data/mapper/binancepay/BinanceMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1549#2:44\n1620#2,3:45\n1549#2:48\n1620#2,3:49\n*S KotlinDebug\n*F\n+ 1 BinanceMapping.kt\ncom/smedialink/storage/data/mapper/binancepay/BinanceMappingKt\n*L\n11#1:44\n11#1:45,3\n24#1:48\n24#1:49,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;)Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;->getQuoteId()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;->getOutputAmount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 37
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;->getOutputAssetCode()Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;->getInputAmount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 39
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;->getInputAssetCode()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;->getInputAssetShortName()Ljava/lang/String;

    move-result-object v9

    .line 41
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertQuoteResponse;->getOutputAssetShortName()Ljava/lang/String;

    move-result-object v10

    .line 34
    new-instance p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/domain/model/binancepay/BinanceConvertQuote;-><init>(Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final mapToDomain(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertSupportTokensResponse;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;",
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
    check-cast v1, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertSupportTokensResponse;

    .line 25
    new-instance v2, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 26
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertSupportTokensResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v3

    .line 27
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertSupportTokensResponse;->getAssetName()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertSupportTokensResponse;->getAssetShortName()Ljava/lang/String;

    move-result-object v5

    .line 29
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertSupportTokensResponse;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final mapToDomainBinanceGetConvertOppositeSupportTokensResponse(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;",
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
    check-cast v1, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;

    .line 12
    new-instance v8, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;

    .line 13
    new-instance v3, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 14
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;->getAssetName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;->getAssetShortName()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;->getLogoUrl()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-direct {v3, v2, v4, v5, v6}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;->getMinimumLimit()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 20
    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/binance/BinanceGetConvertOppositeSupportTokensResponse;->getMaximumLimit()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    move-object v2, v8

    .line 12
    invoke-direct/range {v2 .. v7}, Lcom/smedialink/storage/domain/model/binancepay/OutputConvertToken;-><init>(Lcom/smedialink/storage/domain/model/binancepay/BinanceTokenInfo;DD)V

    .line 1621
    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
