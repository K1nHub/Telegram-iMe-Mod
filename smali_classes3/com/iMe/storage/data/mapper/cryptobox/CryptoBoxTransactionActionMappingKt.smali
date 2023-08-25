.class public final Lcom/iMe/storage/data/mapper/cryptobox/CryptoBoxTransactionActionMappingKt;
.super Ljava/lang/Object;
.source "CryptoBoxTransactionActionMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionActionResponse;)Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionActionResponse;->getTransaction()Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;

    move-result-object v0

    .line 13
    new-instance v10, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    .line 14
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->getChainId()J

    move-result-wide v2

    .line 15
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->getTo()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->getNonce()Ljava/math/BigInteger;

    move-result-object v5

    .line 17
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->getGasLimit()Ljava/math/BigInteger;

    move-result-object v6

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->getGasPrice()Ljava/math/BigInteger;

    move-result-object v7

    .line 19
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->getData()Ljava/lang/String;

    move-result-object v8

    .line 20
    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionArgsResponse;->getValue()Ljava/lang/String;

    move-result-object v9

    move-object v1, v10

    .line 13
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;-><init>(JLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionActionResponse;->getGas()Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;

    move-result-object p0

    .line 24
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->getValue()Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;->getAsToken()Ljava/math/BigDecimal;

    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->getValue()Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxValuesResponse;->getAsUsd()D

    move-result-wide v4

    .line 26
    invoke-direct {v2, v3, v4, v5}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;-><init>(Ljava/math/BigDecimal;D)V

    .line 30
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/cryptobox/CryptoBoxTransactionGasResponse;->getDuration()I

    move-result p0

    .line 24
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxValues;I)V

    .line 11
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    invoke-direct {p0, v10, v0}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;-><init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionGas;)V

    return-object p0
.end method
