.class public final Lcom/smedialink/storage/domain/model/staking/StakingRules;
.super Ljava/lang/Object;
.source "StakingRules.kt"


# instance fields
.field private final canDeposit:Z

.field private final canWithdrawImmediately:Z

.field private final canWithdrawSafely:Z

.field private final immediateWithdrawalFeeTaken:Z

.field private final neededAllowanceForDeposit:Z

.field private final safeWithdrawalFeeTaken:Z


# direct methods
.method public constructor <init>(ZZZZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    .line 5
    iput-boolean p2, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    .line 6
    iput-boolean p3, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    .line 7
    iput-boolean p4, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    .line 8
    iput-boolean p5, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    .line 9
    iput-boolean p6, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/staking/StakingRules;ZZZZZZILjava/lang/Object;)Lcom/smedialink/storage/domain/model/staking/StakingRules;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-boolean p1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-boolean p6, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    :cond_5
    move v3, p6

    move-object p2, p0

    move p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/smedialink/storage/domain/model/staking/StakingRules;->copy(ZZZZZZ)Lcom/smedialink/storage/domain/model/staking/StakingRules;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    return v0
.end method

.method public final copy(ZZZZZZ)Lcom/smedialink/storage/domain/model/staking/StakingRules;
    .locals 8

    new-instance v7, Lcom/smedialink/storage/domain/model/staking/StakingRules;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/storage/domain/model/staking/StakingRules;-><init>(ZZZZZZ)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    iget-boolean p1, p1, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCanDeposit()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    return v0
.end method

.method public final getCanWithdrawImmediately()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    return v0
.end method

.method public final getCanWithdrawSafely()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    return v0
.end method

.method public final getImmediateWithdrawalFeeTaken()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    return v0
.end method

.method public final getNeededAllowanceForDeposit()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    return v0
.end method

.method public final getSafeWithdrawalFeeTaken()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingRules(canDeposit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canDeposit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canWithdrawImmediately="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawImmediately:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", canWithdrawSafely="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->canWithdrawSafely:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", immediateWithdrawalFeeTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->immediateWithdrawalFeeTaken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", safeWithdrawalFeeTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->safeWithdrawalFeeTaken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", neededAllowanceForDeposit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/staking/StakingRules;->neededAllowanceForDeposit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
