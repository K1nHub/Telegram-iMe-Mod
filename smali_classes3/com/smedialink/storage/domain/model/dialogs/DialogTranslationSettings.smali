.class public final Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;
.super Ljava/lang/Object;
.source "DialogTranslationSettings.kt"


# instance fields
.field private dialogId:J

.field private inTextTranslateLangCode:Ljava/lang/String;

.field private final incomingTargetLanguageCode:Ljava/lang/String;

.field private final isEnabled:Z

.field private isInTextTranslateEnabled:Z

.field private isOutTextTranslateEnabled:Z

.field private outTextTranslateLangCode:Ljava/lang/String;

.field private final outgoingTargetLanguageCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;-><init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "outTextTranslateLangCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    .line 7
    iput-object p2, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    .line 9
    iput-object p4, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    .line 10
    iput-wide p5, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    .line 12
    iput-boolean p7, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    .line 13
    iput-object p8, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    .line 14
    iput-object p9, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const-string v6, "en"

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const-wide/16 v7, 0x0

    goto :goto_4

    :cond_4
    move-wide v7, p5

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v2, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v4

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v4, p9

    :goto_7
    move-object p1, p0

    move p2, v1

    move-object p3, v3

    move p4, v5

    move-object p5, v6

    move-wide/from16 p6, v7

    move/from16 p8, v2

    move-object/from16 p9, v9

    move-object/from16 p10, v4

    .line 5
    invoke-direct/range {p1 .. p10}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;-><init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    goto :goto_4

    :cond_4
    move-wide v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p9

    :goto_7
    move p1, v2

    move-object p2, v3

    move p3, v4

    move-object p4, v5

    move-wide p5, v6

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->copy(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;
    .locals 11

    const-string v0, "outTextTranslateLangCode"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;-><init>(ZLjava/lang/String;ZLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    iget-wide v5, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    iget-boolean v3, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDialogId()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    return-wide v0
.end method

.method public final getInTextTranslateLangCode()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getIncomingTargetLanguageCode()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutTextTranslateLangCode()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getOutgoingTargetLanguageCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    invoke-static {v4, v5}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    return v0
.end method

.method public final isInTextTranslateEnabled()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    return v0
.end method

.method public final isOutTextTranslateEnabled()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    return v0
.end method

.method public final setDialogId(J)V
    .locals 0

    .line 10
    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    return-void
.end method

.method public final setInTextTranslateEnabled(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    return-void
.end method

.method public final setInTextTranslateLangCode(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    return-void
.end method

.method public final setOutTextTranslateEnabled(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    return-void
.end method

.method public final setOutTextTranslateLangCode(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogTranslationSettings(isInTextTranslateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isInTextTranslateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", inTextTranslateLangCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->inTextTranslateLangCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isOutTextTranslateEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isOutTextTranslateEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", outTextTranslateLangCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outTextTranslateLangCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->dialogId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", incomingTargetLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->incomingTargetLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outgoingTargetLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/dialogs/DialogTranslationSettings;->outgoingTargetLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
