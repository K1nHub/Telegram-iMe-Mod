.class public final Lcom/iMe/storage/data/mapper/crypto/TransferMappingKt;
.super Ljava/lang/Object;
.source "TransferMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;)Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 10
    instance-of v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    instance-of v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getEstimateFees()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_1
    instance-of v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TON;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TON;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;

    move-result-object v2

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TON;->getEstimateFees()Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_2
    instance-of v1, p0, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$BTC;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$BTC;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$BTC;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    move-result-object v1

    .line 15
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object p0

    .line 8
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0

    .line 13
    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
