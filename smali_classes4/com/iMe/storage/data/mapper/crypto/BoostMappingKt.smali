.class public final Lcom/iMe/storage/data/mapper/crypto/BoostMappingKt;
.super Ljava/lang/Object;
.source "BoostMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;)Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;->getDecimals()I

    move-result v4

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getTo()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getChainId()J

    move-result-wide v6

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v8

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getPrice()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getLimit()Ljava/math/BigInteger;

    move-result-object v1

    :cond_1
    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/SpeedUpTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/TokenResponse;->getAddress()Ljava/lang/String;

    move-result-object v11

    .line 9
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DILjava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object p0
.end method
