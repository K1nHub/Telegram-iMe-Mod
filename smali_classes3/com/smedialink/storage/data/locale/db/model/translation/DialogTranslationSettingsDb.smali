.class public final Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;
.super Ljava/lang/Object;
.source "DialogTranslationSettingsDb.kt"


# instance fields
.field private final dialogId:J

.field private final inTextTranslateTargetLangCode:Ljava/lang/String;

.field private final isInTextTranslateEnabled:Z

.field private final isOutTextTranslateEnabled:Z

.field private final outTextTranslateTargetLangCode:Ljava/lang/String;

.field private final userId:J


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;JJ)V
    .locals 1

    const-string v0, "outTextTranslateTargetLangCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled:Z

    .line 8
    iput-object p2, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->inTextTranslateTargetLangCode:Ljava/lang/String;

    .line 9
    iput-boolean p3, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled:Z

    .line 10
    iput-object p4, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->outTextTranslateTargetLangCode:Ljava/lang/String;

    .line 11
    iput-wide p5, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->dialogId:J

    .line 12
    iput-wide p7, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->userId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;

    iget-boolean v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->inTextTranslateTargetLangCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->inTextTranslateTargetLangCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->outTextTranslateTargetLangCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->outTextTranslateTargetLangCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->dialogId:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->dialogId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->userId:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->userId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDialogId()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->dialogId:J

    return-wide v0
.end method

.method public final getInTextTranslateTargetLangCode()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->inTextTranslateTargetLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutTextTranslateTargetLangCode()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->outTextTranslateTargetLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->inTextTranslateTargetLangCode:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->outTextTranslateTargetLangCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->dialogId:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->userId:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isInTextTranslateEnabled()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled:Z

    return v0
.end method

.method public final isOutTextTranslateEnabled()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogTranslationSettingsDb(isInTextTranslateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isInTextTranslateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inTextTranslateTargetLangCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->inTextTranslateTargetLangCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOutTextTranslateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->isOutTextTranslateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", outTextTranslateTargetLangCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->outTextTranslateTargetLangCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/translation/DialogTranslationSettingsDb;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
