.class public final Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;
.super Ljava/lang/Object;
.source "TokenMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getAvatar()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getDecimals()I

    move-result v6

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getTicker()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->isCoin()Z

    move-result v8

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getName()Ljava/lang/String;

    move-result-object v9

    .line 24
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

    .line 16
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToRequest(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/Token;->getNetworkId()Ljava/lang/String;

    move-result-object p0

    .line 27
    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/data/network/model/request/wallet/TokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
