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
    .locals 20

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

    .line 209
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    goto/16 :goto_14

    .line 185
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 189
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 194
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 195
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 198
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 199
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/TradeType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTradeType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/swap/TradeType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    move-result-object v17

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v16

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v15

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputAmount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 203
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputAmount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v14, Ljava/math/BigDecimal;

    invoke-direct {v14, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object v14, v3

    .line 204
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    .line 188
    :cond_4
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    move-object v3, v2

    move-object/from16 p0, v2

    const-string v2, "inputAmount?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 202
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outputAmount?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 203
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v14

    move-object v14, v1

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    .line 188
    invoke-direct/range {v3 .. v19}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    move-object/from16 v2, p0

    goto/16 :goto_14

    .line 186
    :cond_5
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v2

    goto/16 :goto_14

    .line 171
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 176
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 177
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 180
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 170
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto/16 :goto_14

    .line 150
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 155
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 156
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 159
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    move-object/from16 v16, v2

    goto :goto_3

    :cond_6
    move-object/from16 v16, v0

    .line 161
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move-object v15, v2

    goto :goto_4

    :cond_7
    move-object v15, v0

    .line 162
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    move-object v14, v2

    goto :goto_5

    :cond_8
    move-object v14, v0

    .line 163
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSimplexOrderId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move-object/from16 v17, v2

    goto :goto_6

    :cond_9
    move-object/from16 v17, v0

    .line 164
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

    .line 165
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

    move-object/from16 v18, v15

    const/4 v15, 0x2

    move-object/from16 v19, v14

    const/4 v14, 0x0

    invoke-direct {v2, v1, v3, v15, v14}, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 149
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    move-object v3, v1

    const-string v14, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 164
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, v19

    move-object/from16 v15, v18

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    .line 149
    invoke-direct/range {v3 .. v19}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/FiatCode;)V

    move-object v2, v1

    goto/16 :goto_14

    .line 134
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 139
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 140
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 143
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object v14, v2

    goto :goto_8

    :cond_c
    move-object v14, v0

    .line 133
    :goto_8
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 94
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 101
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 102
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 105
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    move-object/from16 v16, v2

    goto :goto_9

    :cond_d
    move-object/from16 v16, v0

    .line 107
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    move-object v15, v2

    goto :goto_a

    :cond_e
    move-object v15, v0

    .line 108
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v14, v2

    goto :goto_b

    :cond_f
    move-object v14, v0

    .line 109
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getReceiverAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    move-object/from16 v18, v2

    goto :goto_c

    :cond_10
    move-object/from16 v18, v0

    .line 110
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSenderAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move-object/from16 v17, v2

    goto :goto_d

    :cond_11
    move-object/from16 v17, v0

    .line 95
    :goto_d
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    move-object v3, v0

    invoke-direct/range {v3 .. v18}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 114
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 119
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 120
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 123
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    move-object/from16 v16, v2

    goto :goto_e

    :cond_13
    move-object/from16 v16, v0

    .line 125
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object v15, v2

    goto :goto_f

    :cond_14
    move-object v15, v0

    .line 126
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v14, v2

    goto :goto_10

    :cond_15
    move-object v14, v0

    .line 127
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getPayloadMessage()Ljava/lang/String;

    move-result-object v17

    .line 113
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    move-object v3, v0

    invoke-direct/range {v3 .. v17}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object v2, v0

    goto/16 :goto_14

    .line 79
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 84
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 85
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 88
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getUserAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move-object v14, v2

    goto :goto_12

    :cond_16
    move-object v14, v0

    .line 78
    :goto_12
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 64
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 69
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 70
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 73
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 63
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto/16 :goto_14

    .line 49
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 54
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 55
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 58
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 48
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    goto/16 :goto_14

    .line 33
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 38
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 39
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 42
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getUserAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    move-object v14, v2

    goto :goto_13

    :cond_17
    move-object v14, v0

    .line 32
    :goto_13
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

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

    new-instance v12, Ljava/math/BigDecimal;

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v13

    .line 27
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 17
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;

    move-object v3, v2

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

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
    .locals 11

    .line 215
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v1

    .line 216
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v3

    new-instance v2, Ljava/math/BigDecimal;

    .line 217
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v6

    .line 219
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    .line 220
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v4

    .line 221
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v7

    new-instance v9, Ljava/math/BigDecimal;

    .line 222
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeToken()Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/TokenMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/wallet/TokenDetailedResponse;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v10

    .line 224
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v8

    .line 214
    new-instance p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object p0
.end method
