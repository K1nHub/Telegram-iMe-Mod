.class public abstract Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Unsupported;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Transfer;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Referral;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Purchase;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Lottery;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Registration;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Refund;,
        Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction$Crypto;
    }
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final id:Ljava/lang/String;

.field private final processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final status:Lcom/smedialink/storage/data/network/model/response/base/Status;

.field private final tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field private final type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->amount:Ljava/math/BigDecimal;

    .line 13
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    .line 14
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 15
    iput-object p5, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->createdAt:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 17
    iput-object p7, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    .line 18
    iput-object p8, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 19
    iput-object p9, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->feeAmount:Ljava/math/BigDecimal;

    .line 20
    iput-object p10, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/data/network/model/response/base/Status;Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->direction:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->feeTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->processingType:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/data/network/model/response/base/Status;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->status:Lcom/smedialink/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getTokenCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->tokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;->type:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
