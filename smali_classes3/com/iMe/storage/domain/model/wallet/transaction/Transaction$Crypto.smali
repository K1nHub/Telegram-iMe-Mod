.class public Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;
.super Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Crypto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Approve;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Donation;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$SimplexPurchase;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Swap;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto$Transfer;
    }
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final id:Ljava/lang/String;

.field private final processingName:Ljava/lang/String;

.field private final processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final status:Lcom/iMe/storage/data/network/model/response/base/Status;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final txHash:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

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

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingType"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "processingName"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeAmount"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feeToken"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "txHash"

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

    move-object/from16 v11, p11

    move-object/from16 v12, v16

    .line 223
    invoke-direct/range {v0 .. v12}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 211
    iput-object v14, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->id:Ljava/lang/String;

    .line 212
    iput-object v15, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->amount:Ljava/math/BigDecimal;

    move-object/from16 v0, p3

    .line 213
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    move-object/from16 v0, p4

    .line 214
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    move-object/from16 v0, p5

    .line 215
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->createdAt:Ljava/lang/String;

    move-object/from16 v0, p6

    .line 216
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-object/from16 v0, p7

    .line 217
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    move-object/from16 v0, p8

    .line 218
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    move-object/from16 v0, p9

    .line 219
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->processingName:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 220
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeAmount:Ljava/math/BigDecimal;

    move-object/from16 v0, p11

    .line 221
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-object/from16 v0, p12

    .line 222
    iput-object v0, v13, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->txHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->feeToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method public getProcessingName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->processingName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method

.method public getTxHash()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->txHash:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
