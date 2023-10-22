.class public final Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;
.super Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;
.source "BinanceTransaction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unsupported"
.end annotation


# instance fields
.field private final createdAt:Ljava/lang/String;

.field private final direction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

.field private final orderId:Ljava/lang/String;

.field private final status:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

.field private final transactionId:Ljava/lang/String;

.field private final type:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v11, p4

    move-object/from16 v10, p5

    move-object/from16 v9, p6

    const-string v0, "orderId"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, ""

    const-wide/16 v5, 0x0

    const-string v7, ""

    const-string v8, ""

    const-string v16, ""

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p6

    move-object/from16 v9, v16

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object v15, v14

    move-object/from16 v14, v17

    .line 27
    invoke-direct/range {v0 .. v14}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v15

    .line 21
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->orderId:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 22
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->transactionId:Ljava/lang/String;

    move-object/from16 v1, p3

    .line 23
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->direction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-object/from16 v1, p4

    .line 24
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->type:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-object/from16 v1, p5

    .line 25
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->status:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-object/from16 v1, p6

    .line 26
    iput-object v1, v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->createdAt:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getOrderId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getTransactionId()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object p5

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getCreatedAt()Ljava/lang/String;

    move-result-object p6

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getOrderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;
    .locals 8

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getCreatedAt()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->direction:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->status:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->type:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getDirection()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getType()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction$Unsupported;->getCreatedAt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
