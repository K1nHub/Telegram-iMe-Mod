.class public final Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;
.super Ljava/lang/Object;
.source "GasPriceInfoMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->getByteFee()Ljava/math/BigInteger;

    move-result-object v2

    .line 21
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-string v1, "ZERO"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->getDuration()F

    move-result v1

    float-to-int v4, v1

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->getFee()D

    move-result-wide v5

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;->getFeeInDollars()F

    move-result v7

    move-object v1, v0

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getDuration()F

    move-result v1

    float-to-int v4, v1

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getFee()D

    move-result-wide v5

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getFeeInDollars()F

    move-result v7

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    return-object v0
.end method
