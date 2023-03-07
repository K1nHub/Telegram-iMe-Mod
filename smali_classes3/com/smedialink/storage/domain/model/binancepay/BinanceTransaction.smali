.class public abstract Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;
.super Ljava/lang/Object;
.source "BinanceTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Unsupported;,
        Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Pay;,
        Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction$Convert;
    }
.end annotation


# instance fields
.field private final amount:D

.field private final asset:Ljava/lang/String;

.field private final assetLogo:Ljava/lang/String;

.field private final assetName:Ljava/lang/String;

.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

.field private final initiatorUserId:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final payerUserId:Ljava/lang/String;

.field private final status:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

.field private final transactionId:Ljava/lang/String;

.field private final type:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->orderId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->transactionId:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->payerUserId:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->initiatorUserId:Ljava/lang/String;

    .line 10
    iput-wide p5, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->amount:D

    .line 11
    iput-object p7, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->asset:Ljava/lang/String;

    .line 12
    iput-object p8, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->assetName:Ljava/lang/String;

    .line 13
    iput-object p9, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->assetLogo:Ljava/lang/String;

    .line 14
    iput-object p10, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->direction:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    .line 15
    iput-object p11, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->type:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    .line 16
    iput-object p12, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->status:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    .line 17
    iput-object p13, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAmount()D
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->amount:D

    return-wide v0
.end method

.method public getAsset()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->asset:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetLogo()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->assetLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->direction:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;

    return-object v0
.end method

.method public getInitiatorUserId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->initiatorUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayerUserId()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->payerUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->status:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransaction;->type:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionType;

    return-object v0
.end method
