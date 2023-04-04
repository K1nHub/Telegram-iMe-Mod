.class public abstract Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;
.super Ljava/lang/Object;
.source "Transaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Crypto;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Lottery;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Purchase;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Referral;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Refund;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Registration;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Transfer;,
        Lcom/iMe/storage/domain/model/wallet/transaction/Transaction$Unsupported;
    }
.end annotation


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

.field private final feeAmount:Ljava/math/BigDecimal;

.field private final feeTokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field private final id:Ljava/lang/String;

.field private final processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

.field private final status:Lcom/iMe/storage/data/network/model/response/base/Status;

.field private final tokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field private final type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->id:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->amount:Ljava/math/BigDecimal;

    .line 13
    iput-object p3, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    .line 14
    iput-object p4, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    .line 15
    iput-object p5, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->createdAt:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->tokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 17
    iput-object p7, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    .line 18
    iput-object p8, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    .line 19
    iput-object p9, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->feeAmount:Ljava/math/BigDecimal;

    .line 20
    iput-object p10, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->feeTokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;Ljava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/storage/data/network/model/response/base/Status;Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;)V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->direction:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionDirection;

    return-object v0
.end method

.method public getFeeAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->feeAmount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getFeeTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->feeTokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessingType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->processingType:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionProcessingType;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->status:Lcom/iMe/storage/data/network/model/response/base/Status;

    return-object v0
.end method

.method public getTokenCode()Lcom/iMe/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->tokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->type:Lcom/iMe/storage/domain/model/wallet/transaction/TransactionType;

    return-object v0
.end method
