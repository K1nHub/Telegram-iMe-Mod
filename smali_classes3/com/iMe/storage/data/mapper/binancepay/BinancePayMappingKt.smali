.class public final Lcom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt;
.super Ljava/lang/Object;
.source "BinancePayMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBinancePayMapping.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinancePayMapping.kt\ncom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1549#2:135\n1620#2,3:136\n1549#2:139\n1620#2,3:140\n1549#2:143\n1620#2,3:144\n*S KotlinDebug\n*F\n+ 1 BinancePayMapping.kt\ncom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt\n*L\n36#1:135\n36#1:136,3\n91#1:139\n91#1:140,3\n120#1:143\n120#1:144,3\n*E\n"
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;)Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;

    .line 11
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->getRefreshToken()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->getExpiresIn()J

    move-result-wide v4

    .line 14
    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAuthTokensResponse;->getTokenType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    move-result-object v6

    move-object v1, v0

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayCreateCollectionResponse;)Lcom/iMe/storage/domain/model/binancepay/BinanceCollectionOrder;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceCollectionOrder;

    .line 132
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayCreateCollectionResponse;->getMessageId()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-direct {v0, p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceCollectionOrder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;
    .locals 16

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->getTotal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->getFree()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->getLocked()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->getFreeze()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->getWithdrawing()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->getBtcValuation()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;->getFiatValuation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    move-object v1, v0

    .line 108
    invoke-direct/range {v1 .. v15}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;-><init>(DDDDDDD)V

    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;
    .locals 40

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v2

    sget-object v3, Lcom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getOrderId()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getTransactionId()Ljava/lang/String;

    move-result-object v6

    .line 81
    sget-object v2, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v9

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v8

    .line 83
    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v7

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v10

    .line 78
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 58
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getOrderId()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getPayerUserId()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v5

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getAmount()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getAssetCode()Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getAssetName()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v10

    .line 66
    sget-object v11, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getStatus()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v13

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v12

    .line 68
    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getDirection()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v11

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v14

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getInputAmount()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v15, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17

    goto :goto_0

    :cond_2
    move-wide/from16 v17, v15

    .line 71
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getOutputAmount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v15

    :cond_3
    move-wide/from16 v19, v15

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getInputAssetCode()Ljava/lang/String;

    move-result-object v0

    const-string v15, ""

    if-nez v0, :cond_4

    move-object v0, v15

    .line 73
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getOutputAssetCode()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_5

    move-object/from16 v21, v15

    goto :goto_1

    :cond_5
    move-object/from16 v21, v16

    .line 74
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getInputAssetShortName()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_6

    move-object/from16 v22, v15

    goto :goto_2

    :cond_6
    move-object/from16 v22, v16

    .line 75
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getOutputAssetShortName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object/from16 v23, v15

    goto :goto_3

    :cond_7
    move-object/from16 v23, v1

    .line 57
    :goto_3
    new-instance v24, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;

    move-object/from16 v1, v24

    move-wide/from16 v15, v17

    move-wide/from16 v17, v19

    move-object/from16 v19, v0

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    invoke-direct/range {v1 .. v22}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Convert;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    goto :goto_4

    .line 42
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getOrderId()Ljava/lang/String;

    move-result-object v26

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getTransactionId()Ljava/lang/String;

    move-result-object v27

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getClientTradeNo()Ljava/lang/String;

    move-result-object v39

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getPayerUserId()Ljava/lang/String;

    move-result-object v28

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getInitiatorUserId()Ljava/lang/String;

    move-result-object v29

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v30

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getAssetCode()Ljava/lang/String;

    move-result-object v32

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getAssetName()Ljava/lang/String;

    move-result-object v33

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v34

    .line 51
    sget-object v2, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v37

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v36

    .line 53
    sget-object v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v35

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v38

    .line 41
    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v39}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Pay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-object v0
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;)Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;->getId()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;->getEmail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 26
    :cond_0
    sget-object v2, Lcom/iMe/storage/domain/model/binancepay/BinanceVerificationStatus;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceVerificationStatus$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;->getVerificationDetails()Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse$VerificationDetails;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse$VerificationDetails;->getCertificateStatus()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceVerificationStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceVerificationStatus;

    move-result-object p0

    .line 27
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceVerificationStatus;->isVerified()Z

    move-result p0

    .line 23
    new-instance v2, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    invoke-direct {v2, v1, v0, p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method

.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse;",
            ")",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse;->getTransactionsData()Ljava/util/List;

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
    check-cast v1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;

    .line 36
    invoke-static {v1}, Lcom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetTransactionHistoryResponse$HistoryItem;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    move-result-object v1

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final mapToDomain(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    check-cast v1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;

    .line 121
    new-instance v2, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;

    .line 122
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;->getAssetName()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;->getAssetShortName()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinancePayGetAvailablePaymentTokensResponse;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final mapToDomainBinanceTokenBalanceResponse(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    check-cast v1, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;

    .line 92
    new-instance v13, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 93
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getAssetName()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getAssetShortName()Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getLogoUrl()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getSpot()Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v7

    .line 98
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getMargin()Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v8

    .line 99
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getCombined()Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/storage/data/mapper/binancepay/BinancePayMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse$Balance;)Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v9

    .line 100
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getReplenishNetworks()Ljava/util/List;

    move-result-object v10

    .line 101
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getConvertible()Z

    move-result v11

    .line 102
    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/binance/pay/BinanceTokenBalanceResponse;->getReceivable()Z

    move-result v12

    move-object v2, v13

    .line 92
    invoke-direct/range {v2 .. v12}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;Ljava/util/List;ZZ)V

    .line 1621
    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final mapToPrefs(Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;)Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceAuthTokensMetadata;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceAuthTokens;J)V

    return-object v0
.end method

.method public static final mapToPrefs(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;)Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;)V

    return-object v0
.end method
