.class public final Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;
.super Ljava/lang/Object;
.source "StakingTotalStats.kt"


# instance fields
.field private final totalProfitUsd:F

.field private final totalStakedUsd:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    .line 5
    iput p2, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;FFILjava/lang/Object;)Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->copy(FF)Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    return v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    return v0
.end method

.method public final copy(FF)Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;

    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getTotalProfitUsd()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    return v0
.end method

.method public final getTotalStakedUsd()F
    .locals 1

    .line 4
    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingTotalStats(totalStakedUsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalStakedUsd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", totalProfitUsd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingTotalStats;->totalProfitUsd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
