.class public final Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;
.super Ljava/lang/Object;
.source "TemplatesDb.kt"


# instance fields
.field private final creationDate:J

.field private final groupId:J

.field private final messageId:J

.field private final sent:Z

.field private final templateName:Ljava/lang/String;

.field private final usageRating:I

.field private final userId:J


# direct methods
.method public constructor <init>(JJJLjava/lang/String;JIZ)V
    .locals 1

    const-string v0, "templateName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->userId:J

    .line 8
    iput-wide p3, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->messageId:J

    .line 9
    iput-wide p5, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->groupId:J

    .line 10
    iput-object p7, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->templateName:Ljava/lang/String;

    .line 11
    iput-wide p8, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->creationDate:J

    .line 12
    iput p10, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->usageRating:I

    .line 13
    iput-boolean p11, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->sent:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;

    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->userId:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->userId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->messageId:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->messageId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->groupId:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->groupId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->templateName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->templateName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->creationDate:J

    iget-wide v5, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->creationDate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->usageRating:I

    iget v3, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->usageRating:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->sent:Z

    iget-boolean p1, p1, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->sent:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCreationDate()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->creationDate:J

    return-wide v0
.end method

.method public final getGroupId()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->groupId:J

    return-wide v0
.end method

.method public final getMessageId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->messageId:J

    return-wide v0
.end method

.method public final getSent()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->sent:Z

    return v0
.end method

.method public final getTemplateName()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUsageRating()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->usageRating:I

    return v0
.end method

.method public final getUserId()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->userId:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->messageId:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->groupId:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->templateName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->creationDate:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->usageRating:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->sent:Z

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

    const-string v1, "TemplatesDb(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", templateName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->creationDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", usageRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->usageRating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/data/locale/db/model/templates/TemplatesDb;->sent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
