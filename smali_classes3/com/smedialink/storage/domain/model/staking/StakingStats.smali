.class public final Lcom/smedialink/storage/domain/model/staking/StakingStats;
.super Ljava/lang/Object;
.source "StakingStats.kt"


# instance fields
.field private final debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

.field private final isParticipated:Z


# direct methods
.method public constructor <init>(ZLcom/smedialink/storage/domain/model/staking/StakingValues;)V
    .locals 1

    const-string v0, "debt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    .line 5
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/staking/StakingStats;ZLcom/smedialink/storage/domain/model/staking/StakingValues;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/staking/StakingStats;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/storage/domain/model/staking/StakingStats;->copy(ZLcom/smedialink/storage/domain/model/staking/StakingValues;)Lcom/smedialink/storage/domain/model/staking/StakingStats;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    return v0
.end method

.method public final component2()Lcom/smedialink/storage/domain/model/staking/StakingValues;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    return-object v0
.end method

.method public final copy(ZLcom/smedialink/storage/domain/model/staking/StakingValues;)Lcom/smedialink/storage/domain/model/staking/StakingStats;
    .locals 1

    const-string v0, "debt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/staking/StakingStats;

    invoke-direct {v0, p1, p2}, Lcom/smedialink/storage/domain/model/staking/StakingStats;-><init>(ZLcom/smedialink/storage/domain/model/staking/StakingValues;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/staking/StakingStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingStats;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDebt()Lcom/smedialink/storage/domain/model/staking/StakingValues;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/staking/StakingValues;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isParticipated()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingStats(isParticipated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->isParticipated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", debt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingStats;->debt:Lcom/smedialink/storage/domain/model/staking/StakingValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
