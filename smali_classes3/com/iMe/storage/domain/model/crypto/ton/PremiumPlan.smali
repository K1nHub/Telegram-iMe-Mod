.class public final Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;
.super Ljava/lang/Object;
.source "PremiumPlan.kt"


# instance fields
.field private final discount:Ljava/lang/String;

.field private final fiatPrice:Ljava/lang/String;

.field private final months:I

.field private final price:D


# direct methods
.method public constructor <init>(IDLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "discount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatPrice"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    .line 5
    iput-wide p2, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    .line 6
    iput-object p4, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;IDLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-wide p2, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p4, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    :cond_2
    move-object p7, p4

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-wide p4, v0

    move-object p6, p7

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->copy(IDLjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    return v0
.end method

.method public final component2()D
    .locals 2

    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(IDLjava/lang/String;Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;
    .locals 7

    const-string v0, "discount"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fiatPrice"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;

    move-object v1, v0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;-><init>(IDLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    iget v3, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    iget-wide v5, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDiscount()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    return-object v0
.end method

.method public final getFiatPrice()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    return-object v0
.end method

.method public final getMonths()I
    .locals 1

    .line 4
    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    return v0
.end method

.method public final getPrice()D
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    invoke-static {v1, v2}, Lcom/iMe/i_staking/response/StakingDetailedMetadataResponse$$ExternalSyntheticBackport0;->m(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PremiumPlan(months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->months:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", discount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->discount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fiatPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/storage/domain/model/crypto/ton/PremiumPlan;->fiatPrice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
