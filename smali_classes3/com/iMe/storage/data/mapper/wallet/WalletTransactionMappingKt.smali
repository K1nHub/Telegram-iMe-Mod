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

    .line 16
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

    .line 214
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v1

    goto/16 :goto_14

    .line 189
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputCryptoTokenCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v16

    if-nez v16, :cond_0

    .line 190
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputCryptoTokenCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v17

    if-nez v17, :cond_1

    .line 192
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    return-object v0

    .line 195
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 200
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 201
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 204
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 205
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/swap/TradeType;->Companion:Lcom/iMe/storage/domain/model/wallet/swap/TradeType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTradeType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/swap/TradeType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/swap/TradeType;

    move-result-object v18

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getInputAmount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 209
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getOutputAmount()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v14, v9

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object v14, v3

    .line 210
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object/from16 v19, v2

    goto :goto_2

    :cond_5
    move-object/from16 v19, v3

    .line 211
    :goto_2
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    invoke-virtual {v3, v2}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v15

    .line 194
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;

    move-object v3, v1

    const-string v2, "inputAmount?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 208
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outputAmount?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 209
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v9, v16

    move-object v2, v14

    move-object/from16 v14, v19

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .line 194
    invoke-direct/range {v3 .. v20}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/domain/model/wallet/swap/TradeType;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    goto/16 :goto_14

    .line 173
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    return-object v0

    .line 176
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 181
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 182
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 185
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 175
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    goto/16 :goto_14

    .line 150
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    if-nez v9, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    return-object v0

    .line 153
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 158
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 159
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 162
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    move-object/from16 v17, v2

    goto :goto_4

    :cond_9
    move-object/from16 v17, v0

    .line 164
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    move-object/from16 v16, v2

    goto :goto_5

    :cond_a
    move-object/from16 v16, v0

    .line 165
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v14, v2

    goto :goto_6

    :cond_b
    move-object v14, v0

    .line 166
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSimplexOrderId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    move-object/from16 v18, v2

    goto :goto_7

    :cond_c
    move-object/from16 v18, v0

    .line 167
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmountToSpent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_8

    :cond_d
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 168
    :goto_8
    new-instance v3, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSpentCurrency()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_e

    sget-object v15, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->USD:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v15}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v15

    :cond_e
    const/4 v1, 0x0

    move-object/from16 v19, v2

    const/4 v2, 0x2

    move-object/from16 v20, v14

    const/4 v14, 0x0

    invoke-direct {v3, v15, v1, v2, v14}, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    move-object/from16 v2, v19

    :cond_f
    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v15

    .line 152
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;

    move-object v2, v3

    move-object v3, v1

    const-string v14, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 167
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, v20

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    .line 152
    invoke-direct/range {v3 .. v20}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/FiatCode;)V

    goto/16 :goto_14

    :pswitch_3
    move-object/from16 v19, v2

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    if-nez v9, :cond_10

    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    return-object v0

    .line 135
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 140
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 141
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 144
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    move-object/from16 v14, v19

    goto :goto_9

    :cond_11
    move-object v14, v0

    .line 146
    :goto_9
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    move-object/from16 v2, v19

    goto :goto_a

    :cond_12
    move-object v2, v1

    :goto_a
    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v15

    .line 134
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    goto/16 :goto_14

    :pswitch_4
    move-object/from16 v19, v2

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    if-nez v9, :cond_13

    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/wallet/WalletTransactionMappingKt;->unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    return-object v0

    .line 92
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->isDonation()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 99
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 100
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 103
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    move-object/from16 v16, v19

    goto :goto_b

    :cond_14
    move-object/from16 v16, v0

    .line 105
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    move-object/from16 v15, v19

    goto :goto_c

    :cond_15
    move-object v15, v0

    .line 106
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    move-object/from16 v14, v19

    goto :goto_d

    :cond_16
    move-object v14, v0

    .line 107
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getReceiverAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    move-object/from16 v0, v19

    .line 108
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getSenderAccountId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    move-object/from16 v18, v19

    goto :goto_e

    :cond_18
    move-object/from16 v18, v1

    .line 109
    :goto_e
    sget-object v1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_19

    move-object/from16 v2, v19

    :cond_19
    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v17

    .line 93
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;

    move-object v3, v1

    move-object/from16 v19, v0

    invoke-direct/range {v3 .. v19}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 113
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 118
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 119
    sget-object v0, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 122
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxToCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b

    move-object/from16 v17, v19

    goto :goto_f

    :cond_1b
    move-object/from16 v17, v0

    .line 124
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxFromCryptoAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    move-object/from16 v16, v19

    goto :goto_10

    :cond_1c
    move-object/from16 v16, v0

    .line 125
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTxHash()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    move-object/from16 v14, v19

    goto :goto_11

    :cond_1d
    move-object v14, v0

    .line 126
    :goto_11
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    :cond_1e
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v15

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getPayloadMessage()Ljava/lang/String;

    move-result-object v18

    .line 112
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;

    move-object v3, v0

    invoke-direct/range {v3 .. v18}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_14

    :pswitch_5
    move-object/from16 v19, v2

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 81
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 82
    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 85
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getUserAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    move-object/from16 v14, v19

    goto :goto_12

    :cond_1f
    move-object v14, v0

    .line 75
    :goto_12
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 62
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 65
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 67
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 68
    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 71
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 61
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    goto/16 :goto_14

    .line 48
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 53
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 54
    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 57
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 47
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    goto/16 :goto_14

    :pswitch_8
    move-object/from16 v19, v2

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 38
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 39
    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 42
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getUserAccountId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    move-object/from16 v14, v19

    goto :goto_13

    :cond_20
    move-object v14, v0

    .line 32
    :goto_13
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;)V

    goto :goto_14

    .line 19
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/math/BigDecimal;

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v9

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 24
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v7

    .line 25
    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v10

    new-instance v12, Ljava/math/BigDecimal;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v13

    .line 28
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v11

    .line 18
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    :goto_14
    return-object v1

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

.method private static final parseSupportedTokenCode(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 219
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    .line 220
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static final unsupportedTransaction(Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;)Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
    .locals 11

    .line 226
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getId()Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    move-result-object v3

    new-instance v2, Ljava/math/BigDecimal;

    .line 228
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getAmount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 229
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v6

    .line 230
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    .line 231
    sget-object v4, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getDirection()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-result-object v4

    .line 232
    sget-object v7, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v7

    new-instance v9, Ljava/math/BigDecimal;

    .line 233
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeAmount()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getFeeTokenCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    move-result-object v10

    .line 235
    sget-object v0, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;->Companion:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/wallet/WalletTransactionsResponse$WalletTransactionResponse;->getProcessing()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-result-object v8

    .line 225
    new-instance p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    return-object p0
.end method
