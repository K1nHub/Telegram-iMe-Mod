.class public final Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;
.super Ljava/lang/Object;
.source "CryptoWalletMapping.kt"


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    .line 24
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet()Z

    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getHasAccess()Z

    move-result p0

    .line 23
    invoke-direct {v0, v1, v2, p0}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;)Lcom/smedialink/storage/domain/model/crypto/AccountInfo;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;

    .line 17
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getEtherWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getTonWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getTronWalletAddress()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object p0

    .line 16
    invoke-direct {v0, v1, v2, p0}, Lcom/smedialink/storage/domain/model/crypto/AccountInfo;-><init>(Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;Lcom/smedialink/storage/domain/model/crypto/AccountInfo$Address;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v5

    .line 43
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain;->Companion:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getChainId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;->getChainById(J)Lcom/smedialink/storage/domain/model/crypto/Chain;

    move-result-object v6

    .line 44
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getSafeLow()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFast()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/smedialink/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/smedialink/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p0

    move-object v3, p0

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 41
    :goto_1
    new-instance p0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/Chain;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Tron;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estimateFees"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Tron;

    .line 51
    invoke-static {p1}, Lcom/smedialink/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->getFeeLimit()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;->copy$default(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Ljava/math/BigInteger;IDFILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    .line 52
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->getBlockHeader()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/smedialink/storage/data/mapper/crypto/TronBlockHeaderMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;)Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;

    move-result-object p0

    .line 50
    invoke-direct {v0, p1, p0}, Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Tron;-><init>(Lcom/smedialink/storage/domain/model/crypto/send/GasPriceInfo;Lcom/smedialink/storage/domain/model/crypto/TronBlockHeader;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;)Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    .line 31
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTo()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getData()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v6

    .line 36
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    .line 30
    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
