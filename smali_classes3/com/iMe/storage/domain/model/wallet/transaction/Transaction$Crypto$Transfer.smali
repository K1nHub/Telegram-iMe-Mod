.class public Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;
.super Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transfer"
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final id:Ljava/lang/String;

.field private final payloadMessage:Ljava/lang/String;

.field private final processingName:Ljava/lang/String;

.field private final processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final recipientAddress:Ljava/lang/String;

.field private final senderAddress:Ljava/lang/String;

.field private final status:Lcom/iMe/storage/data/network/model/response/base/Status;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final txHash:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    const-string v15, "id"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "amount"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "type"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "direction"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "createdAt"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "token"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "status"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "processingType"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "processingName"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "feeAmount"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "feeToken"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "txHash"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "senderAddress"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "recipientAddress"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-direct/range {p0 .. p12}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    .line 276
    iput-object v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->id:Ljava/lang/String;

    .line 277
    iput-object v2, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->amount:Ljava/math/BigDecimal;

    .line 278
    iput-object v3, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    .line 279
    iput-object v4, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 280
    iput-object v5, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->createdAt:Ljava/lang/String;

    .line 281
    iput-object v6, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 282
    iput-object v7, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 283
    iput-object v8, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 284
    iput-object v9, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingName:Ljava/lang/String;

    .line 285
    iput-object v10, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeAmount:Ljava/math/BigDecimal;

    .line 286
    iput-object v11, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 287
    iput-object v12, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->txHash:Ljava/lang/String;

    .line 288
    iput-object v13, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->senderAddress:Ljava/lang/String;

    .line 289
    iput-object v14, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->recipientAddress:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 290
    iput-object v1, v0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->payloadMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadMessage()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->payloadMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingName()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->senderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
