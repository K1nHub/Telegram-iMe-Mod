.class public final Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;
.super Ljava/lang/Object;
.source "CryptoWalletMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoWalletMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoWalletMapping.kt\ncom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,87:1\n1549#2:88\n1620#2,3:89\n1549#2:92\n1620#2,3:93\n*S KotlinDebug\n*F\n+ 1 CryptoWalletMapping.kt\ncom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt\n*L\n22#1:88\n22#1:89,3\n76#1:92\n76#1:93,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet()Z

    move-result v2

    .line 30
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->Companion:Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getPlatform()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/iMe/storage/domain/model/crypto/BlockchainType$Companion;->mapByBackendName(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object p0

    .line 27
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getWallets()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    .line 22
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getHasAccess()Z

    move-result p0

    .line 21
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;-><init>(Ljava/util/List;Z)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getSafeLow()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v4

    .line 74
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getFast()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    .line 75
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    .line 76
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getUtxos()Ljava/util/List;

    move-result-object v0

    .line 1549
    new-instance v5, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;

    .line 76
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/BitcoinUnspentOutputMapperKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;)Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    move-result-object v1

    .line 1621
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getChangeAddress()Ljava/lang/String;

    move-result-object v6

    .line 72
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v5

    .line 46
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getChainId()J

    move-result-wide v6

    .line 47
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getSafeLow()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    .line 48
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFast()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p0

    move-object v3, p0

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 44
    :goto_1
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;J)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estimateFees"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;

    .line 61
    new-instance v8, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 62
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const-string v1, "ZERO"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getDuration()F

    move-result v1

    float-to-int v4, v1

    .line 65
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getFee()D

    move-result-wide v5

    .line 66
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/ton/TonFeesResponse;->getFeeInDollars()D

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue(D)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v7

    move-object v1, v8

    move-object v2, v3

    .line 61
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;IDLcom/iMe/storage/domain/model/wallet/token/FiatValue;)V

    .line 68
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TON;->getWalletSeqno()I

    move-result p0

    .line 60
    invoke-direct {v0, v8, p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ton;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;I)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estimateFees"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    .line 54
    invoke-static {p1}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->getFeeLimit()Ljava/math/BigInteger;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1d

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->copy$default(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Ljava/math/BigInteger;IDLcom/iMe/storage/domain/model/wallet/token/FiatValue;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->getBlockHeader()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/TronBlockHeaderMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;)Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object v1

    .line 56
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->getContractAddress()Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-direct {v0, p1, v1, p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;)Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    .line 35
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTo()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getData()Ljava/lang/String;

    move-result-object v5

    .line 39
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v6

    .line 40
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v7

    move-object v1, v0

    .line 34
    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method
