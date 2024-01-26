.class public final Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;
.super Ljava/lang/Object;
.source "WalletTransactionMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
    .locals 21

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v6

    sget-object v0, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    goto/16 :goto_14

    .line 195
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 199
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 204
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 205
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 208
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 210
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/TradeType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTradeType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/swap/TradeType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    move-result-object v18

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v17

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v16

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputAmount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 214
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputAmount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v15, Ljava/math/BigDecimal;

    invoke-direct {v15, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object v15, v3

    .line 215
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    .line 198
    :cond_4
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    move-object v3, v2

    move-object/from16 p0, v2

    const-string v2, "inputAmount?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 213
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outputAmount?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 214
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v15

    move-object v15, v1

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .line 198
    invoke-direct/range {v3 .. v20}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    move-object/from16 v2, p0

    goto/16 :goto_14

    .line 196
    :cond_5
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    goto/16 :goto_14

    .line 180
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 185
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 186
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 189
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 179
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto/16 :goto_14

    .line 158
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 163
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 164
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 167
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object/from16 v17, v2

    goto :goto_3

    :cond_6
    move-object/from16 v17, v0

    .line 170
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move-object/from16 v16, v2

    goto :goto_4

    :cond_7
    move-object/from16 v16, v0

    .line 171
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v15, v2

    goto :goto_5

    :cond_8
    move-object v15, v0

    .line 172
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSimplexOrderId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move-object/from16 v18, v2

    goto :goto_6

    :cond_9
    move-object/from16 v18, v0

    .line 173
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmountToSpent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_7

    :cond_a
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 174
    :goto_7
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSpentCurrency()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_b
    const/4 v3, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x2

    move-object/from16 v20, v14

    const/4 v14, 0x0

    invoke-direct {v2, v1, v3, v15, v14}, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 157
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    move-object v3, v1

    const-string v14, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 173
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, v20

    move-object/from16 v15, v19

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .line 157
    invoke-direct/range {v3 .. v20}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/FiatCode;)V

    move-object v2, v1

    goto/16 :goto_14

    .line 141
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 146
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 147
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 150
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v15, v2

    goto :goto_8

    :cond_c
    move-object v15, v0

    .line 140
    :goto_8
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    move-object v3, v2

    invoke-direct/range {v3 .. v15}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 99
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 106
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 107
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 110
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move-object/from16 v17, v2

    goto :goto_9

    :cond_d
    move-object/from16 v17, v0

    .line 112
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move-object/from16 v16, v2

    goto :goto_a

    :cond_e
    move-object/from16 v16, v0

    .line 113
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v15, v2

    goto :goto_b

    :cond_f
    move-object v15, v0

    .line 114
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getReceiverAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move-object/from16 v19, v2

    goto :goto_c

    :cond_10
    move-object/from16 v19, v0

    .line 115
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSenderAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move-object/from16 v18, v2

    goto :goto_d

    :cond_11
    move-object/from16 v18, v0

    .line 100
    :goto_d
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    move-object v3, v0

    invoke-direct/range {v3 .. v19}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 120
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 125
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 126
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 129
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move-object/from16 v17, v2

    goto :goto_e

    :cond_13
    move-object/from16 v17, v0

    .line 132
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object/from16 v16, v2

    goto :goto_f

    :cond_14
    move-object/from16 v16, v0

    .line 133
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v15, v2

    goto :goto_10

    :cond_15
    move-object v15, v0

    .line 134
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getPayloadMessage()Ljava/lang/String;

    move-result-object v18

    .line 119
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    move-object v3, v0

    invoke-direct/range {v3 .. v18}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object v2, v0

    goto/16 :goto_14

    .line 83
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 88
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 89
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 92
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getUserAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move-object v15, v2

    goto :goto_12

    :cond_16
    move-object v15, v0

    .line 82
    :goto_12
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    move-object v3, v2

    invoke-direct/range {v3 .. v15}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 67
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 72
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 73
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 76
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 66
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto/16 :goto_14

    .line 51
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 56
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 57
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 60
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 50
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto/16 :goto_14

    .line 34
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 39
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 40
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 43
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getUserAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    move-object v15, v2

    goto :goto_13

    :cond_17
    move-object v15, v0

    .line 33
    :goto_13
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    move-object v3, v2

    invoke-direct/range {v3 .. v15}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    goto :goto_14

    .line 18
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 23
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 24
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v13, Ljava/math/BigDecimal;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v14

    .line 27
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v12

    .line 17
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    :goto_14
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
    .locals 12

    .line 228
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v1

    .line 229
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v3

    new-instance v2, Ljava/math/BigDecimal;

    .line 230
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 232
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    .line 233
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v4

    .line 234
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v7

    new-instance v10, Ljava/math/BigDecimal;

    .line 235
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v11

    .line 237
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v8

    .line 238
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessingName()Ljava/lang/String;

    move-result-object v9

    .line 227
    new-instance p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object p0
.end method
