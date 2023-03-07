.class public final Lcom/smedialink/storage/data/mapper/crypto/BoostMappingKt;
.super Ljava/lang/Object;
.source "BoostMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/mapper/crypto/BoostMappingKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;)Lcom/smedialink/storage/domain/model/crypto/send/TransactionArgs;
    .locals 37

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accessManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;->Companion:Lcom/smedialink/storage/domain/model/crypto/EthereumMethods$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getEthereumMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smedialink/storage/domain/model/crypto/EthereumMethods$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/EthereumMethods;

    move-result-object v1

    sget-object v3, Lcom/smedialink/storage/data/mapper/crypto/BoostMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x2

    const-string v4, ""

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    .line 70
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported transaction"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getCryptoTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 58
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_3

    move-object v9, v4

    goto :goto_1

    :cond_3
    move-object v9, v5

    .line 59
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/math/BigInteger;

    invoke-direct {v8, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getChainId()J

    move-result-wide v10

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getNonce()Ljava/math/BigInteger;

    move-result-object v12

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getPrice()Ljava/math/BigInteger;

    move-result-object v13

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getLimit()Ljava/math/BigInteger;

    move-result-object v14

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v15

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getSpenderAddress()Ljava/lang/String;

    move-result-object v16

    .line 66
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v17

    .line 67
    sget-object v18, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 56
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/smedialink/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;)V

    goto/16 :goto_5

    .line 34
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getAmountIn()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {v8, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getAmountBound()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getInputCryptoTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getOutputCryptoTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getChainId()J

    move-result-wide v11

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getNonce()Ljava/math/BigInteger;

    move-result-object v13

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getPrice()Ljava/math/BigInteger;

    move-result-object v14

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getLimit()Ljava/math/BigInteger;

    move-result-object v15

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getUniswapContractAddress()Ljava/lang/String;

    move-result-object v17

    .line 43
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getSwapMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v18

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getPath()Ljava/util/List;

    move-result-object v19

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getDeadlineMinutes()I

    move-result v20

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getQuoteId()Ljava/lang/String;

    move-result-object v23

    .line 47
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v24

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v25

    .line 49
    sget-object v7, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v0}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    :goto_2
    if-nez v5, :cond_6

    .line 51
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_3

    :cond_6
    move-object v0, v5

    .line 52
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getCallData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move-object/from16 v22, v4

    goto :goto_4

    :cond_7
    move-object/from16 v22, v2

    .line 33
    :goto_4
    new-instance v2, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object v6, v2

    const-string v3, "oldTransactionData.swapM\u2026       ?: BigInteger.ZERO"

    .line 50
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v1

    move-object/from16 v21, v0

    .line 33
    invoke-direct/range {v6 .. v25}, Lcom/smedialink/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    move-object v0, v2

    goto :goto_5

    .line 22
    :cond_8
    sget-object v29, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->WEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getTo()Ljava/lang/String;

    move-result-object v30

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v27

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getChainId()J

    move-result-wide v31

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getNonce()Ljava/math/BigInteger;

    move-result-object v33

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getPrice()Ljava/math/BigInteger;

    move-result-object v34

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse;->getFastest()Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/wallet/GasPriceOneItem;->getLimit()Ljava/math/BigInteger;

    move-result-object v35

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getContractAddress()Ljava/lang/String;

    move-result-object v36

    .line 21
    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v36}, Lcom/smedialink/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DLcom/smedialink/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    :goto_5
    return-object v0
.end method
