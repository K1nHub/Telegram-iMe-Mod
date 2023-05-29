.class public final Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;
.super Ljava/lang/Object;
.source "CryptoWalletMapping.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoWalletMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoWalletMapping.kt\ncom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1549#2:73\n1620#2,3:74\n*S KotlinDebug\n*F\n+ 1 CryptoWalletMapping.kt\ncom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt\n*L\n61#1:73\n61#1:74,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->isSet()Z

    move-result v2

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;->getHasAccess()Z

    move-result p0

    .line 24
    invoke-direct {v0, v1, v2, p0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/AccountInfo;

    .line 17
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getEtherWalletAddress()Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object v1

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getTonWalletAddress()Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getTronWalletAddress()Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object v3

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountInfoResponse;->getBitcoinWalletAddress()Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/AccountWalletAddressResponse;)Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;

    move-result-object p0

    .line 16
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/iMe/storage/domain/model/crypto/AccountInfo;-><init>(Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;Lcom/iMe/storage/domain/model/crypto/AccountInfo$Address;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getSafeLow()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v4

    .line 59
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getFast()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinGasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v3

    .line 61
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

    .line 61
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/BitcoinUnspentOutputMapperKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/BitcoinUnspentOutputResponse;)Lcom/iMe/storage/domain/model/crypto/send/BitcoinUnspentOutput;

    move-result-object v1

    .line 1621
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$BTC;->getChangeAddress()Ljava/lang/String;

    move-result-object v6

    .line 57
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Bitcoin;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v5

    .line 44
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/Chain;->Companion:Lcom/iMe/storage/domain/model/crypto/Chain$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getChainId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/model/crypto/Chain$Companion;->getChainById(J)Lcom/iMe/storage/domain/model/crypto/Chain;

    move-result-object v6

    .line 45
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

    .line 46
    :goto_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFast()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    .line 47
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/crypto/GasPriceInfoMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p0

    move-object v3, p0

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 42
    :goto_1
    new-instance p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Lcom/iMe/storage/domain/model/crypto/Chain;)V

    return-object p0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estimateFees"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;

    .line 52
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

    invoke-static/range {v1 .. v9}, Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;->copy$default(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Ljava/math/BigInteger;Ljava/math/BigInteger;IDFILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$TRON;->getBlockHeader()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;

    move-result-object p0

    invoke-static {p0}, Lcom/iMe/storage/data/mapper/crypto/TronBlockHeaderMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TronBlockHeaderResponse;)Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;

    move-result-object p0

    .line 51
    invoke-direct {v0, p1, p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/TronBlockHeader;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;)Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    .line 32
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFrom()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTo()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 35
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getData()Ljava/lang/String;

    move-result-object v5

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v6

    .line 37
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v7

    .line 38
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet_connect/ParamsForCryptoTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    .line 31
    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
