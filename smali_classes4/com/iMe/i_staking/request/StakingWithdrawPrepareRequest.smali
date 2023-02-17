.class public final Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;
.super Ljava/lang/Object;
.source "StakingWithdrawPrepareRequest.kt"


# instance fields
.field private final amount:Ljava/math/BigDecimal;

.field private final safe:Z

.field private final stakingId:J


# direct methods
.method public constructor <init>(JLjava/math/BigDecimal;Z)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    .line 7
    iput-object p3, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    .line 8
    iput-boolean p4, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;JLjava/math/BigDecimal;ZILjava/lang/Object;)Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-boolean p4, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->copy(JLjava/math/BigDecimal;Z)Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    return-wide v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    return v0
.end method

.method public final copy(JLjava/math/BigDecimal;Z)Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;
    .locals 1

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;-><init>(JLjava/math/BigDecimal;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;

    iget-wide v3, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    iget-wide v5, p1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    iget-boolean p1, p1, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAmount()Ljava/math/BigDecimal;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getSafe()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    return v0
.end method

.method public final getStakingId()J
    .locals 2

    .line 6
    iget-wide v0, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingWithdrawPrepareRequest(stakingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->stakingId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->amount:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", safe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/i_staking/request/StakingWithdrawPrepareRequest;->safe:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
