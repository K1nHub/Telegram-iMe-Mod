.class public final Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;
.super Ljava/lang/Object;
.source "ValidateReceiptRequest.kt"


# instance fields
.field private final orderId:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final purchaseState:I

.field private final purchaseTime:J

.field private final purchaseToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 1

    const-string v0, "orderId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    .line 7
    iput-wide p4, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    .line 8
    iput p6, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    .line 9
    iput-object p7, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    :cond_3
    move-wide v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p6, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    :cond_4
    move v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-wide p6, v1

    move p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;
    .locals 9

    const-string v0, "orderId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;

    move-object v1, v0

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    iget v3, p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseState()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    return v0
.end method

.method public final getPurchaseTime()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ValidateReceiptRequest(orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/network/model/request/billing/ValidateReceiptRequest;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
