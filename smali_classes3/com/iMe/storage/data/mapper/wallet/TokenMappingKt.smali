.class public final Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;
.super Ljava/lang/Object;
.source "TokenMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getAvatar()Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getDecimals()I

    move-result v6

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getTicker()Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->isCoin()Z

    move-result v8

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getName()Ljava/lang/String;

    move-result-object v9

    .line 26
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getWebsite()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, v2

    :cond_1
    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, p0

    .line 18
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;

    .line 31
    new-instance v10, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 32
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getAvatar()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getDecimals()I

    move-result v6

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getTicker()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->isCoin()Z

    move-result v8

    .line 38
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getName()Ljava/lang/String;

    move-result-object v9

    .line 39
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getWebsite()Ljava/lang/String;

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

    .line 31
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedWithRateResponse;->getRateToFiat()Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/wallet/FiatValueMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/FiatValueResponse;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object p0

    .line 30
    invoke-direct {v0, v10, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailedWithRate;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    return-object v0
.end method

.method public static final mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    .line 45
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/Token;->getNetworkId()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
