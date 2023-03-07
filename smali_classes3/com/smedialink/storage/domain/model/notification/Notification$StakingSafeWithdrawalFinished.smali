.class public final Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;
.super Lcom/smedialink/storage/domain/model/notification/Notification;
.source "Notification.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/notification/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingSafeWithdrawalFinished"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final date:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private isRead:Z

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final stakingId:Ljava/lang/String;

.field private final stakingName:Ljava/lang/String;

.field private final stakingToken:Ljava/lang/String;

.field private final type:Lcom/smedialink/storage/domain/model/notification/NotificationType;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v7, p9

    move-object/from16 v6, p10

    const-string v0, "id"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingId"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingName"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingToken"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, v16

    .line 113
    invoke-direct/range {v0 .. v7}, Lcom/smedialink/storage/domain/model/notification/Notification;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 103
    iput-object v9, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->id:Ljava/lang/String;

    move/from16 v0, p2

    .line 104
    iput-boolean v0, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead:Z

    .line 105
    iput-object v10, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->type:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    .line 106
    iput-object v11, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->date:Ljava/lang/String;

    .line 107
    iput-object v12, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->userId:Ljava/lang/String;

    .line 108
    iput-object v13, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 109
    iput-object v14, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    .line 110
    iput-object v15, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 111
    iput-object v0, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 112
    iput-object v0, v8, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead()Z

    move-result v3

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getDate()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v7

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p10

    :goto_9
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->copy(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead()Z

    move-result v0

    return v0
.end method

.method public final component3()Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;
    .locals 12

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingId"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingName"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingToken"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    move-object v1, v0

    move v3, p2

    invoke-direct/range {v1 .. v11}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead()Z

    move-result v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getStakingId()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingToken()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->type:Lcom/smedialink/storage/domain/model/notification/NotificationType;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead:Z

    return v0
.end method

.method public setRead(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingSafeWithdrawalFinished(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->isRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getType()Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
