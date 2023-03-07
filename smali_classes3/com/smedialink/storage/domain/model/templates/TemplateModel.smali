.class public final Lcom/smedialink/storage/domain/model/templates/TemplateModel;
.super Ljava/lang/Object;
.source "TemplateModel.kt"


# instance fields
.field private final creationDate:J

.field private final groupId:J

.field private final messageId:J

.field private final name:Ljava/lang/String;

.field private final sent:Z

.field private final usageRating:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;JIZ)V
    .locals 1

    const-string v0, "name"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    .line 5
    iput-wide p3, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    .line 6
    iput-object p5, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    .line 8
    iput p8, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    .line 9
    iput-boolean p9, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/templates/TemplateModel;JJLjava/lang/String;JIZILjava/lang/Object;)Lcom/smedialink/storage/domain/model/templates/TemplateModel;
    .locals 10

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p10, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p10, 0x4

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v5, p5

    :goto_2
    and-int/lit8 v6, p10, 0x8

    if-eqz v6, :cond_3

    iget-wide v6, v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p6

    :goto_3
    and-int/lit8 v8, p10, 0x10

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    goto :goto_4

    :cond_4
    move/from16 v8, p8

    :goto_4
    and-int/lit8 v9, p10, 0x20

    if-eqz v9, :cond_5

    iget-boolean v9, v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

    goto :goto_5

    :cond_5
    move/from16 v9, p9

    :goto_5
    move-wide p1, v1

    move-wide p3, v3

    move-object p5, v5

    move-wide/from16 p6, v6

    move/from16 p8, v8

    move/from16 p9, v9

    invoke-virtual/range {p0 .. p9}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->copy(JJLjava/lang/String;JIZ)Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    return-wide v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

    return v0
.end method

.method public final copy(JJLjava/lang/String;JIZ)Lcom/smedialink/storage/domain/model/templates/TemplateModel;
    .locals 11

    const-string v0, "name"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/domain/model/templates/TemplateModel;-><init>(JJLjava/lang/String;JIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;

    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    iget v3, p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

    iget-boolean p1, p1, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCreationDate()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    return-wide v0
.end method

.method public final getGroupId()J
    .locals 2

    .line 5
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    return-wide v0
.end method

.method public final getMessageId()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSent()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

    return v0
.end method

.method public final getUsageRating()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    invoke-static {v0, v1}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    invoke-static {v1, v2}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

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

    const-string v1, "TemplateModel(messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->creationDate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", usageRating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->usageRating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/templates/TemplateModel;->sent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
