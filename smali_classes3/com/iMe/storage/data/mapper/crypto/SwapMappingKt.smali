.class public final Lcom/iMe/storage/data/mapper/crypto/SwapMappingKt;
.super Ljava/lang/Object;
.source "SwapMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/mapper/crypto/SwapMappingKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwapMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwapMapping.kt\ncom/iMe/storage/data/mapper/crypto/SwapMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,79:1\n1549#2:80\n1620#2,3:81\n1549#2:84\n1620#2,3:85\n*S KotlinDebug\n*F\n+ 1 SwapMapping.kt\ncom/iMe/storage/data/mapper/crypto/SwapMappingKt\n*L\n15#1:80\n15#1:81,3\n19#1:84\n19#1:85,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;)Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 17

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getQuoteId()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v3

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    if-nez v0, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 67
    :goto_0
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getInputCryptoTokenCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v5

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getOutputCryptoTokenCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v7

    .line 69
    sget-object v8, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getSwapMethod()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v8

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getPath()Ljava/util/List;

    move-result-object v11

    new-instance v9, Ljava/math/BigDecimal;

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getAmountIn()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/math/BigDecimal;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getAmountOut()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/math/BigInteger;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getAmountBound()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getExecutionPrice()Ljava/math/BigDecimal;

    move-result-object v13

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getValue()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-static {v14}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v14

    if-nez v14, :cond_2

    :cond_1
    sget-object v14, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 77
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getCallData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v15, v4

    goto :goto_1

    :cond_3
    move-object v15, v1

    .line 63
    :goto_1
    new-instance v16, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    const-string v1, "value?.toBigIntegerOrNull() ?: BigInteger.ZERO"

    .line 76
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v16

    move-object v4, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move-object v12, v13

    move-object v13, v0

    .line 63
    invoke-direct/range {v1 .. v15}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigInteger;Ljava/util/List;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v16
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->getCryptoTokenCodes()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Ljava/lang/String;

    .line 15
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse;->getCryptoTokens()Ljava/util/List;

    move-result-object p0

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;

    .line 20
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v6

    sget-object v2, Lcom/iMe/storage/data/mapper/crypto/SwapMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 49
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getCryptoTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v5

    .line 51
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getContractAddress()Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v8

    .line 55
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v11

    .line 48
    new-instance v1, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    goto :goto_2

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 41
    :cond_1
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    .line 42
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getCryptoTokenCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 44
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-direct {v2, v3, v6, v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_2
    sget-object v2, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getCryptoTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v5

    .line 32
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getContractAddress()Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v10

    .line 35
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v8

    .line 36
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    move-object v12, v3

    .line 37
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v11

    .line 29
    new-instance v1, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    goto :goto_2

    .line 22
    :cond_4
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;

    .line 23
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getCryptoTokenCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetApproveTokensInfoResponse$CryptoTokenApprovalQuote;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-direct {v2, v3, v6, v1}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V

    :goto_1
    move-object v1, v2

    .line 1621
    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v0
.end method
