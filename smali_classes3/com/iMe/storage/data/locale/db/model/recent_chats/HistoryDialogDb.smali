.class public final Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;
.super Ljava/lang/Object;
.source "HistoryDialogDb.kt"


# instance fields
.field private final creationDate:J

.field private final dialogId:J

.field private final isPinned:Z

.field private final userId:J


# direct methods
.method public constructor <init>(JJJZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->userId:J

    .line 8
    iput-wide p3, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->dialogId:J

    .line 9
    iput-wide p5, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->creationDate:J

    .line 10
    iput-boolean p7, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->isPinned:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;

    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->userId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->userId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->dialogId:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->dialogId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->creationDate:J

    iget-wide v5, p1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->creationDate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->isPinned:Z

    iget-boolean p1, p1, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->isPinned:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCreationDate()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->creationDate:J

    return-wide v0
.end method

.method public final getDialogId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->dialogId:J

    return-wide v0
.end method

.method public final getUserId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->userId:J

    invoke-static {v0, v1}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->dialogId:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->creationDate:J

    invoke-static {v1, v2}, Lcom/iMe/feature/profile/ProfileData$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->isPinned:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPinned()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->isPinned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryDialogDb(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->creationDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPinned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iMe/storage/data/locale/db/model/recent_chats/HistoryDialogDb;->isPinned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
