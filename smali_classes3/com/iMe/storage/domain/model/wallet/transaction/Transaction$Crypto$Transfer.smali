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

.field private final processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final recipientAddress:Ljava/lang/String;

.field private final senderAddress:Ljava/lang/String;

.field private final status:Lcom/iMe/storage/data/network/model/response/base/Status;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final txHash:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingType"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderAddress"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recipientAddress"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    invoke-direct/range {p0 .. p11}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V

    .line 257
    iput-object p1, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->id:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->amount:Ljava/math/BigDecimal;

    .line 259
    iput-object p3, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    .line 260
    iput-object p4, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 261
    iput-object p5, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->createdAt:Ljava/lang/String;

    .line 262
    iput-object p6, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 263
    iput-object p7, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 264
    iput-object p8, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 265
    iput-object p9, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeAmount:Ljava/math/BigDecimal;

    .line 266
    iput-object p10, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 267
    iput-object p11, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->txHash:Ljava/lang/String;

    .line 268
    iput-object p12, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->senderAddress:Ljava/lang/String;

    .line 269
    iput-object p13, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->recipientAddress:Ljava/lang/String;

    .line 270
    iput-object p14, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->payloadMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadMessage()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->payloadMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->recipientAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->senderAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
