.class public final Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxActionMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxActionMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getId()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getBoxId()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getType()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;

    move-result-object v4

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    move-result-object v5

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v6

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getTxUrl()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getTokenAmount()Ljava/math/BigDecimal;

    move-result-object v10

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getFeeAmount()Ljava/math/BigDecimal;

    move-result-object v12

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getIssuedAt()Ljava/lang/String;

    move-result-object v13

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxActionResponse;->getSettledAt()Ljava/lang/String;

    move-result-object v14

    move-object v1, v0

    .line 9
    invoke-direct/range {v1 .. v14}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxAction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionType;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
