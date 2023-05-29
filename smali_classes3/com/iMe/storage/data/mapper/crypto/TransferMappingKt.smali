.class public final Lcom/iMe/storage/data/mapper/crypto/TransferMappingKt;
.super Ljava/lang/Object;
.source "TransferMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;)Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->getWalletSeqno()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-string v1, "valueOf(this.toLong())"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v4, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 39
    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-string v1, "ZERO"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getEstimateFees()Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getDuration()F

    move-result v1

    float-to-int v11, v1

    .line 42
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getEstimateFees()Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getFee()D

    move-result-wide v12

    .line 43
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getEstimateFees()Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getFeeInDollars()F

    move-result v14

    move-object v8, v4

    move-object v9, v10

    .line 38
    invoke-direct/range {v8 .. v14}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    .line 46
    new-instance v8, Lcom/iMe/storage/domain/model/crypto/Chain$Unknown;

    const-wide/16 v1, 0x0

    const/4 p0, 0x1

    const/4 v9, 0x0

    invoke-direct {v8, v1, v2, p0, v9}, Lcom/iMe/storage/domain/model/crypto/Chain$Unknown;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;)V

    .line 48
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 34
    invoke-direct {v0, p0, v1, v9}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$BTC;)Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$BTC;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    move-result-object p0

    .line 29
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->BTC:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v2, 0x0

    .line 27
    invoke-direct {v0, p0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 14
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$EVM;->getContractAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 13
    :cond_0
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;)Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 21
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getEstimateFees()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    move-result-object v1

    .line 22
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->TRX:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoTransferDataResponse$TRON;->getContractAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 20
    :cond_0
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    return-object v0
.end method
