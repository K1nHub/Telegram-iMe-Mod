.class public final Lcom/iMe/storage/data/mapper/crypto/BoostMappingKt;
.super Ljava/lang/Object;
.source "BoostMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/mapper/crypto/BoostMappingKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;)Lcom/iMe/storage/domain/model/crypto/send/TransactionArgs;
    .locals 40

    move-object/from16 v0, p1

    const-string v1, "<this>"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "accessManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/EthereumMethods;->Companion:Lcom/iMe/storage/domain/model/crypto/EthereumMethods$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getEthereumMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iMe/storage/domain/model/crypto/EthereumMethods$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/EthereumMethods;

    move-result-object v1

    sget-object v3, Lcom/iMe/storage/data/mapper/crypto/BoostMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_c

    const/4 v3, 0x2

    const-string v5, ""

    const-string v6, "null cannot be cast to non-null type com.iMe.storage.domain.model.wallet.token.TokenInfo.Crypto.Ethereum"

    if-eq v1, v3, :cond_6

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_0

    .line 71
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported transaction"

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getCryptoTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v1

    check-cast v8, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 59
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v4

    :goto_0
    if-nez v0, :cond_3

    move-object v10, v5

    goto :goto_1

    :cond_3
    move-object v10, v0

    :goto_1
    new-instance v9, Ljava/math/BigInteger;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getChainId()J

    move-result-wide v11

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v13

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getPrice()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v4

    :goto_2
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getLimit()Ljava/math/BigInteger;

    move-result-object v4

    :cond_5
    invoke-static {v4}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getTokenContractAddress()Ljava/lang/String;

    move-result-object v16

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getApproveMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$ApproveMethodParamsResponse;->getSpenderAddress()Ljava/lang/String;

    move-result-object v17

    .line 67
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v18

    .line 68
    sget-object v19, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 57
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;

    move-object v7, v0

    invoke-direct/range {v7 .. v19}, Lcom/iMe/storage/domain/model/crypto/swap/ApproveArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Ljava/math/BigInteger;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    goto/16 :goto_6

    .line 22
    :cond_6
    new-instance v0, Ljava/math/BigDecimal;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getAmountIn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getAmountBound()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 37
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getInputCryptoTokenCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v23, v7

    check-cast v23, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getOutputCryptoTokenCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v24, v3

    check-cast v24, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getChainId()J

    move-result-wide v25

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v27

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getPrice()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v4

    :goto_3
    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getLimit()Ljava/math/BigInteger;

    move-result-object v4

    :cond_8
    invoke-static {v4}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v29

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getUniswapContractAddress()Ljava/lang/String;

    move-result-object v31

    .line 44
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getSwapMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v32

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getPath()Ljava/util/List;

    move-result-object v33

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getDeadlineMinutes()I

    move-result v34

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getQuoteId()Ljava/lang/String;

    move-result-object v37

    .line 48
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v38

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v39

    .line 50
    sget-object v21, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_a

    .line 52
    :cond_9
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 53
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getSwapMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$SwapMethodParamsResponse;->getCallData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    move-object/from16 v36, v5

    goto :goto_4

    :cond_b
    move-object/from16 v36, v2

    .line 34
    :goto_4
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;

    move-object/from16 v20, v2

    const-string v4, "oldTransactionData.swapM\u2026       ?: BigInteger.ZERO"

    .line 51
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v0

    move-object/from16 v30, v1

    move-object/from16 v35, v3

    .line 34
    invoke-direct/range {v20 .. v39}, Lcom/iMe/storage/domain/model/crypto/swap/SwapArgs$Dex;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/util/List;ILjava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    move-object v0, v2

    goto :goto_6

    .line 23
    :cond_c
    sget-object v8, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->WEI:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getTo()Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getChainId()J

    move-result-wide v10

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getNonce()Ljava/math/BigInteger;

    move-result-object v12

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getPrice()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_5

    :cond_d
    move-object v0, v4

    :goto_5
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;->getFastest()Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/wallet/GasPriceResponse;->getLimit()Ljava/math/BigInteger;

    move-result-object v4

    :cond_e
    invoke-static {v4}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse;->getOldTransactionData()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse;->getTransferMethodParams()Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/response/crypto/boost/GetBoostTransactionDataResponse$TransactionMethodParamsResponse$TransferMethodParamsResponse;->getContractAddress()Ljava/lang/String;

    move-result-object v15

    .line 22
    new-instance v0, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;

    move-object v5, v0

    invoke-direct/range {v5 .. v15}, Lcom/iMe/storage/domain/model/crypto/send/TransferArgs$EVM;-><init>(DLcom/iMe/storage/domain/utils/crypto/Convert$Unit;Ljava/lang/String;JLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    :goto_6
    return-object v0
.end method
