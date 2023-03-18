.class public final Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;
.super Ljava/lang/Object;
.source "CryptoWalletMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;)Lcom/smedialink/storage/domain/model/crypto/AccountInfo;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;

    .line 16
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    .line 17
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getEtherWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getEtherWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet()Z

    move-result v4

    .line 19
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getEtherWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getHasAccess()Z

    move-result v5

    .line 16
    invoke-direct {v1, v2, v4, v5}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;-><init>(Ljava/lang/String;ZZ)V

    .line 21
    new-instance v2, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    .line 22
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getTonWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getTonWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet()Z

    move-result v4

    .line 24
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getTonWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getHasAccess()Z

    move-result p0

    .line 21
    invoke-direct {v2, v3, v4, p0}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;-><init>(Ljava/lang/String;ZZ)V

    .line 15
    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;-><init>(Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams;
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getNonce()Ljava/math/BigInteger;

    move-result-object v5

    .line 42
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain;->Companion:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getChainId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;->getChainById(J)Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object v6

    .line 43
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getSafeLow()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 44
    new-instance v2, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 45
    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getPrice()Ljava/math/BigInteger;

    move-result-object v8

    .line 46
    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getLimit()Ljava/math/BigInteger;

    move-result-object v9

    .line 47
    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getDuration()F

    move-result v3

    float-to-int v10, v3

    .line 48
    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getFee()D

    move-result-wide v11

    .line 49
    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getFeeInDollars()F

    move-result v13

    move-object v7, v2

    .line 44
    invoke-direct/range {v7 .. v13}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 52
    :goto_0
    new-instance v3, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 53
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFast()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getPrice()Ljava/math/BigInteger;

    move-result-object v8

    .line 54
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFast()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getLimit()Ljava/math/BigInteger;

    move-result-object v9

    .line 55
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFast()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getDuration()F

    move-result v0

    float-to-int v10, v0

    .line 56
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFast()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getFee()D

    move-result-wide v11

    .line 57
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFast()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getFeeInDollars()F

    move-result v13

    move-object v7, v3

    .line 52
    invoke-direct/range {v7 .. v13}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    .line 59
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 60
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    .line 61
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getPrice()Ljava/math/BigInteger;

    move-result-object v8

    .line 62
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getLimit()Ljava/math/BigInteger;

    move-result-object v9

    .line 63
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getDuration()F

    move-result v1

    float-to-int v10, v1

    .line 64
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getFee()D

    move-result-wide v11

    .line 65
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getFeeInDollars()F

    move-result v13

    move-object v7, v0

    .line 60
    invoke-direct/range {v7 .. v13}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDF)V

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 40
    :goto_1
    new-instance p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;)Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    .line 30
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTo()Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getData()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams;

    move-result-object v6

    .line 35
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
