.class public Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;
.super Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transfer"
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final id:Ljava/lang/String;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final payloadMessage:Ljava/lang/String;

.field private final processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final recipientAddress:Ljava/lang/String;

.field private final senderAddress:Ljava/lang/String;

.field private final status:Lcom/smedialink/storage/data/network/model/response/base/Status;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final txHash:Ljava/lang/String;

.field private final type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v15, "tokenCode"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "status"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "processingType"

    invoke-static {v8, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "feeAmount"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "feeTokenCode"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "txHash"

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "networkType"

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "senderAddress"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "recipientAddress"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct/range {p0 .. p12}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 152
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->id:Ljava/lang/String;

    .line 153
    iput-object v2, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->amount:Ljava/math/BigDecimal;

    .line 154
    iput-object v3, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 155
    iput-object v4, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 156
    iput-object v5, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->createdAt:Ljava/lang/String;

    .line 157
    iput-object v6, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 158
    iput-object v7, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    .line 159
    iput-object v8, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 160
    iput-object v9, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeAmount:Ljava/math/BigDecimal;

    .line 161
    iput-object v10, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 162
    iput-object v11, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->txHash:Ljava/lang/String;

    .line 163
    iput-object v12, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 164
    iput-object v13, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->senderAddress:Ljava/lang/String;

    .line 165
    iput-object v14, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->recipientAddress:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 166
    iput-object v1, v0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->payloadMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public getPayloadMessage()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->payloadMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->senderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
