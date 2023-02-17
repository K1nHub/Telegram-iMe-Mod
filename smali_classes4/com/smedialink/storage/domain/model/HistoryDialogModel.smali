.class public final Lcom/smedialink/storage/domain/model/HistoryDialogModel;
.super Ljava/lang/Object;
.source "HistoryDialogModel.kt"


# instance fields
.field private creationDate:J

.field private final dialogId:J

.field private isPinned:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    .line 5
    iput-wide p3, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    .line 6
    iput-boolean p5, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/HistoryDialogModel;JJZILjava/lang/Object;)Lcom/smedialink/storage/domain/model/HistoryDialogModel;
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-wide p1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-wide p3, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-boolean p5, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    :cond_2
    move v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->copy(JJZ)Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    return v0
.end method

.method public final copy(JJZ)Lcom/smedialink/storage/domain/model/HistoryDialogModel;
    .locals 7

    new-instance v6, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/storage/domain/model/HistoryDialogModel;-><init>(JJZ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/HistoryDialogModel;

    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    iget-boolean p1, p1, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCreationDate()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    return-wide v0
.end method

.method public final getDialogId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPinned()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    return v0
.end method

.method public final setCreationDate(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    return-void
.end method

.method public final setPinned(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryDialogModel(dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->creationDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPinned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/HistoryDialogModel;->isPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
