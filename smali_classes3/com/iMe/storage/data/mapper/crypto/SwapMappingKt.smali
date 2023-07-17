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
    value = "SMAP\nSwapMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwapMapping.kt\ncom/iMe/storage/data/mapper/crypto/SwapMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1549#2:84\n1620#2,3:85\n1549#2:88\n1620#2,3:89\n*S KotlinDebug\n*F\n+ 1 SwapMapping.kt\ncom/iMe/storage/data/mapper/crypto/SwapMappingKt\n*L\n18#1:84\n18#1:85,3\n23#1:88\n23#1:89,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;)Lcom/iMe/storage/domain/model/common/CursoredData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;",
            ")",
            "Lcom/iMe/storage/domain/model/common/CursoredData<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->getTokens()Ljava/util/List;

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
    check-cast v2, Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    .line 18
    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/AvailableSwapTokensResponse;->getCursor()Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance v0, Lcom/iMe/storage/domain/model/common/CursoredData;

    invoke-direct {v0, v1, p0}, Lcom/iMe/storage/domain/model/common/CursoredData;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;)Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v2

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getQuoteId()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getOutputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v5

    .line 73
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getSwapMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v7

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getPath()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    move-object v11, v0

    new-instance v8, Ljava/math/BigDecimal;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getAmountIn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/math/BigDecimal;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getAmountOut()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/math/BigInteger;

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getAmountBound()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getExecutionPrice()Ljava/math/BigDecimal;

    move-result-object v12

    .line 79
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getDefiProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v13

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 82
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/GetQuoteToSwapResponse;->getCallData()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    move-object v15, v1

    .line 67
    new-instance v17, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    const-string v1, "value?.toBigIntegerOrNull() ?: BigInteger.ZERO"

    .line 81
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v17

    move-object/from16 v16, v0

    .line 67
    invoke-direct/range {v1 .. v16}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;-><init>(Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/swap/SwapMethod;Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigInteger;Ljava/util/List;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v17
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;->getApprovalInfo()Ljava/util/List;

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

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;

    .line 24
    sget-object v3, Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;

    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v7

    sget-object v3, Lcom/iMe/storage/data/mapper/crypto/SwapMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 55
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 57
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v10

    .line 59
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v9

    .line 60
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    .line 54
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;

    move-object v5, v2

    invoke-direct/range {v5 .. v11}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$NotAllowed;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto :goto_2

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 46
    :cond_1
    new-instance v3, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;

    .line 47
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 49
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-direct {v3, v4, v7, v2}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$InProgress;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 37
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 38
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;->getSpenderContractAddress()Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getTransactionParams()Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/iMe/storage/data/mapper/crypto/CryptoWalletMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/TransactionParamsResponse$EVM;)Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    move-result-object v9

    .line 40
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, ""

    :cond_3
    move-object v12, v2

    .line 41
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    .line 34
    new-instance v2, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$NeedApprove$Error;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_4
    new-instance v3, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;

    .line 27
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v4

    .line 29
    invoke-virtual {v2}, Lcom/iMe/storage/data/network/model/response/crypto/swap/TokensApprovalInfoResponse$ApprovalInfoResponse;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-direct {v3, v4, v7, v2}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoTokenApproveMetadata$Allowed;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TokenApproveStatus;Ljava/lang/String;)V

    :goto_1
    move-object v2, v3

    .line 1621
    :goto_2
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    return-object v1
.end method
