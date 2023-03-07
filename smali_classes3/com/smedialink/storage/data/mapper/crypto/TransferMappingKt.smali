.class public final Lcom/smedialink/storage/data/mapper/crypto/TransferMappingKt;
.super Ljava/lang/Object;
.source "TransferMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;)Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 23
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->getWalletSeqno()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    const-string v1, "valueOf(this.toLong())"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v5, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 26
    sget-object v10, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-string v1, "ZERO"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getEstimateFees()Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getDuration()F

    move-result v1

    float-to-int v11, v1

    .line 29
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getEstimateFees()Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getFee()D

    move-result-wide v12

    .line 30
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getEstimateFees()Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonFeesResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getFeeInDollars()F

    move-result v14

    move-object v8, v5

    move-object v9, v10

    .line 25
    invoke-direct/range {v8 .. v14}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    .line 33
    new-instance v8, Lcom/smedialink/storage/domain/model/crypto/Chain$Unknown;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    invoke-direct {v8, v1, v2, v3, v9}, Lcom/smedialink/storage/domain/model/crypto/Chain$Unknown;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;)V

    .line 35
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->TON:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 37
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/ParamsForTonCryptoTransferResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/ton/TonTransactionParamsResponse;->getSendMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 21
    invoke-direct {v0, v1, v2, v9, p0}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/DataForCryptoTransferResponse;)Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;

    .line 14
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/DataForCryptoTransferResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/DataForCryptoTransferResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    .line 16
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/DataForCryptoTransferResponse;->getContractAddress()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const/4 v3, 0x0

    .line 13
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/smedialink/storage/domain/model/crypto/send/CryptoTransferMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method
