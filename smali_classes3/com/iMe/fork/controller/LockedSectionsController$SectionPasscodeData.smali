.class public final Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;
.super Ljava/lang/Object;
.source "LockedSectionsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/controller/LockedSectionsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SectionPasscodeData"
.end annotation


# instance fields
.field private badPasscodeTries:I

.field private isSectionLocked:Z

.field private isUseFingerprint:Z

.field private lastAcceptedTime:I

.field private lastUptimeMillis:J

.field private passcodeHash:Ljava/lang/String;

.field private passcodeRetryInMs:J

.field private passcodeSalt:[B

.field private passcodeType:I

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 15

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3ff

    const/4 v14, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(ILjava/lang/String;[BZZIJJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BZZIJJII)V
    .locals 1

    const-string v0, "passcodeHash"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "passcodeSalt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:I

    .line 87
    iput-object p2, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    .line 88
    iput-object p3, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:[B

    .line 89
    iput-boolean p4, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint:Z

    .line 90
    iput-boolean p5, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    .line 91
    iput p6, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    .line 92
    iput-wide p7, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    .line 93
    iput-wide p9, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    .line 94
    iput p11, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->timeout:I

    .line 95
    iput p12, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->lastAcceptedTime:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;[BZZIJJIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeHash()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 88
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeSaltString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    const-string v5, "decode(TelegramPreferenc\u2026String(), Base64.DEFAULT)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 89
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->useFingerprint()Z

    move-result v5

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    .line 90
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->isSectionLocked()Z

    move-result v6

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    .line 91
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->badPasscodeTries()I

    move-result v7

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 92
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->passcodeRetryInMs()J

    move-result-wide v8

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 93
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->lastUptimeMillis()J

    move-result-wide v10

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    .line 94
    invoke-static {}, Lcom/iMe/common/TelegramPreferenceKeys$User$Default;->timeout()I

    move-result v12

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v4, p12

    :goto_9
    move-object p1, p0

    move p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-wide/from16 p8, v8

    move-wide/from16 p10, v10

    move/from16 p12, v12

    move/from16 p13, v4

    .line 85
    invoke-direct/range {p1 .. p13}, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;-><init>(ILjava/lang/String;[BZZIJJII)V

    return-void
.end method


# virtual methods
.method public final getBadPasscodeTries()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    return v0
.end method

.method public final getLastAcceptedTime()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->lastAcceptedTime:I

    return v0
.end method

.method public final getLastUptimeMillis()J
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    return-wide v0
.end method

.method public final getPasscodeHash()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    return-object v0
.end method

.method public final getPasscodeRetryInMs()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    return-wide v0
.end method

.method public final getPasscodeSalt()[B
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:[B

    return-object v0
.end method

.method public final getPasscodeType()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:I

    return v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->timeout:I

    return v0
.end method

.method public final isSectionLocked()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    return v0
.end method

.method public final isUseFingerprint()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint:Z

    return v0
.end method

.method public final setBadPasscodeTries(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->badPasscodeTries:I

    return-void
.end method

.method public final setLastAcceptedTime(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->lastAcceptedTime:I

    return-void
.end method

.method public final setLastUptimeMillis(J)V
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->lastUptimeMillis:J

    return-void
.end method

.method public final setPasscodeHash(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeHash:Ljava/lang/String;

    return-void
.end method

.method public final setPasscodeRetryInMs(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeRetryInMs:J

    return-void
.end method

.method public final setPasscodeSalt([B)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeSalt:[B

    return-void
.end method

.method public final setPasscodeType(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->passcodeType:I

    return-void
.end method

.method public final setSectionLocked(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isSectionLocked:Z

    return-void
.end method

.method public final setTimeout(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->timeout:I

    return-void
.end method

.method public final setUseFingerprint(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/iMe/fork/controller/LockedSectionsController$SectionPasscodeData;->isUseFingerprint:Z

    return-void
.end method
