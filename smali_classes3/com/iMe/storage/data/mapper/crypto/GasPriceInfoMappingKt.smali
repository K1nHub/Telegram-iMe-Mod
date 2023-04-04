.class public final Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;
.super Ljava/lang/Object;
.source "GasPriceInfoMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 9
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getPrice()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getLimit()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getDuration()F

    move-result v1

    float-to-int v4, v1

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getFee()D

    move-result-wide v5

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getFeeInDollars()F

    move-result v7

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    return-object v0
.end method
