.class public Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;
.super Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Crypto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;
    }
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final id:Ljava/lang/String;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final status:Lcom/smedialink/storage/data/network/model/response/base/Status;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final txHash:Ljava/lang/String;

.field private final type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 17

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v9, p6

    move-object/from16 v8, p7

    move-object/from16 v7, p8

    move-object/from16 v6, p9

    move-object/from16 v5, p10

    move-object/from16 v4, p11

    move-object/from16 v3, p12

    const-string v0, "id"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tokenCode"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingType"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeTokenCode"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

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

    move-object/from16 v11, v16

    .line 130
    invoke-direct/range {v0 .. v11}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    iput-object v13, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->id:Ljava/lang/String;

    .line 119
    iput-object v14, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->amount:Ljava/math/BigDecimal;

    .line 120
    iput-object v15, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    move-object/from16 v0, p4

    .line 121
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    move-object/from16 v0, p5

    .line 122
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->createdAt:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 123
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v0, p7

    .line 124
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-object/from16 v0, p8

    .line 125
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-object/from16 v0, p9

    .line 126
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeAmount:Ljava/math/BigDecimal;

    move-object/from16 v0, p10

    .line 127
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-object/from16 v0, p11

    .line 128
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->txHash:Ljava/lang/String;

    move-object/from16 v0, p12

    .line 129
    iput-object v0, v12, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
