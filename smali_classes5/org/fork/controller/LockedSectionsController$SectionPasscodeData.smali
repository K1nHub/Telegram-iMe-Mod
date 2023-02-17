.class public final Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;
.super Ljava/lang/Object;
.source "LockedSectionsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/controller/LockedSectionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SectionPasscodeData"
.end annotation


# instance fields
.field private autoLockIn:Lorg/fork/enums/AutoLockTime;

.field private badPasscodeTries:I

.field private isSectionLocked:Z

.field private lastUptimeMillis:J

.field private passcodeHash:Ljava/lang/String;

.field private passcodeRetryInMs:J

.field private passcodeSalt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private passcodeType:Lorg/fork/enums/PasscodeType;

.field private useFingerprint:Z


# direct methods
.method public constructor <init>()V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/enums/AutoLockTime;",
            "ZI",
            "Lorg/fork/enums/PasscodeType;",
            "JJ",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "autoLockIn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passcodeType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passcodeSalt"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passcodeHash"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->autoLockIn:Lorg/fork/enums/AutoLockTime;

    .line 177
    iput-boolean p2, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    .line 178
    iput p3, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    .line 179
    iput-object p4, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:Lorg/fork/enums/PasscodeType;

    .line 180
    iput-wide p5, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    .line 181
    iput-wide p7, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    .line 182
    iput-object p9, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:Ljava/util/List;

    .line 183
    iput-object p10, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    .line 184
    iput-boolean p11, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->useFingerprint:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 176
    sget-object v1, Lorg/fork/enums/AutoLockTime;->Companion:Lorg/fork/enums/AutoLockTime$Companion;

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->autoLockInId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/fork/enums/AutoLockTime$Companion;->findById(I)Lorg/fork/enums/AutoLockTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 177
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->isSectionLocked()Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 178
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->badPasscodeTries()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 179
    sget-object v4, Lorg/fork/enums/PasscodeType;->Companion:Lorg/fork/enums/PasscodeType$Companion;

    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeType()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/fork/enums/PasscodeType$Companion;->findById(I)Lorg/fork/enums/PasscodeType;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 180
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->lastUptimeMillis()J

    move-result-wide v5

    goto :goto_4

    :cond_4
    move-wide/from16 v5, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 181
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeRetryInMs()J

    move-result-wide v7

    goto :goto_5

    :cond_5
    move-wide/from16 v7, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    .line 182
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeSaltString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    const-string v10, "decode(TelegramPreferenc\u2026String(), Base64.DEFAULT)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->toList([B)Ljava/util/List;

    move-result-object v9

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 183
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->passcodeHash()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_7
    move-object/from16 v10, p10

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 184
    invoke-static {}, Lcom/smedialink/common/TelegramPreferenceKeys$User$Default;->useFingerprint()Z

    move-result v0

    goto :goto_8

    :cond_8
    move/from16 v0, p11

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move p3, v2

    move p4, v3

    move-object/from16 p5, v4

    move-wide/from16 p6, v5

    move-wide/from16 p8, v7

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move/from16 p12, v0

    .line 175
    invoke-direct/range {p1 .. p12}, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(Lorg/fork/enums/AutoLockTime;ZILorg/fork/enums/PasscodeType;JJLjava/util/List;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->autoLockIn:Lorg/fork/enums/AutoLockTime;

    iget-object v3, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->autoLockIn:Lorg/fork/enums/AutoLockTime;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    iget-boolean v3, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    iget v3, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:Lorg/fork/enums/PasscodeType;

    iget-object v3, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:Lorg/fork/enums/PasscodeType;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    iget-wide v5, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    iget-wide v5, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:Ljava/util/List;

    iget-object v3, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    iget-object v3, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->useFingerprint:Z

    iget-boolean p1, p1, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->useFingerprint:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAutoLockIn()Lorg/fork/enums/AutoLockTime;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->autoLockIn:Lorg/fork/enums/AutoLockTime;

    return-object v0
.end method

.method public final getBadPasscodeTries()I
    .locals 1

    .line 178
    iget v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    return v0
.end method

.method public final getLastUptimeMillis()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    return-wide v0
.end method

.method public final getPasscodeHash()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getPasscodeRetryInMs()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    return-wide v0
.end method

.method public final getPasscodeSalt()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:Ljava/util/List;

    return-object v0
.end method

.method public final getPasscodeType()Lorg/fork/enums/PasscodeType;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:Lorg/fork/enums/PasscodeType;

    return-object v0
.end method

.method public final getUseFingerprint()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->useFingerprint:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->autoLockIn:Lorg/fork/enums/AutoLockTime;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:Lorg/fork/enums/PasscodeType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    invoke-static {v3, v4}, Lcom/iMe/i_staking/request/StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->useFingerprint:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSectionLocked()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    return v0
.end method

.method public final reducePasscodeRetryTime(J)V
    .locals 4

    .line 188
    iget-wide v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    iget-wide v2, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    sub-long/2addr p1, v2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    return-void
.end method

.method public final setAutoLockIn(Lorg/fork/enums/AutoLockTime;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iput-object p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->autoLockIn:Lorg/fork/enums/AutoLockTime;

    return-void
.end method

.method public final setBadPasscodeTries(I)V
    .locals 0

    .line 178
    iput p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    return-void
.end method

.method public final setLastUptimeMillis(J)V
    .locals 0

    .line 180
    iput-wide p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    return-void
.end method

.method public final setPasscodeHash(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    return-void
.end method

.method public final setPasscodeRetryInMs(J)V
    .locals 0

    .line 181
    iput-wide p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    return-void
.end method

.method public final setPasscodeSalt(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:Ljava/util/List;

    return-void
.end method

.method public final setPasscodeType(Lorg/fork/enums/PasscodeType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:Lorg/fork/enums/PasscodeType;

    return-void
.end method

.method public final setSectionLocked(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    return-void
.end method

.method public final setUseFingerprint(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->useFingerprint:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SectionPasscodeData(autoLockIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->autoLockIn:Lorg/fork/enums/AutoLockTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSectionLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", badPasscodeTries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", passcodeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:Lorg/fork/enums/PasscodeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastUptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", passcodeRetryInMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", passcodeSalt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", passcodeHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useFingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/fork/controller/LockedSectionsController$SectionPasscodeData;->useFingerprint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
