.class public final Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;
.super Lcom/smedialink/model/wallet/notification/PushNotificationModel;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/notification/PushNotificationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingStarted"
.end annotation


# instance fields
.field private final networkType:Ljava/lang/String;

.field private final stakingAPR:Ljava/lang/String;

.field private final stakingAPY:Ljava/lang/String;

.field private final stakingAuthor:Ljava/lang/String;

.field private final stakingEndsAt:Ljava/lang/String;

.field private final stakingId:Ljava/lang/String;

.field private final stakingName:Ljava/lang/String;

.field private final stakingToken:Ljava/lang/String;

.field private final stakingWebsite:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAuthor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingWebsite"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPY"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPR"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingEndsAt"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingToken"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p2, p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->type:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->userId:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    .line 140
    iput-object p7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    .line 141
    iput-object p8, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    .line 142
    iput-object p9, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    .line 143
    iput-object p10, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    .line 144
    iput-object p11, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getUserId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;
    .locals 13

    const-string v0, "type"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingId"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingName"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAuthor"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingWebsite"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPY"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingAPR"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingEndsAt"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingToken"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 148
    sget v0, Lorg/telegram/messenger/R$string;->push_notification_staking_started:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 149
    iget-object v2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString$TMessagesProj_release(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingAPR()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingAPY()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingAuthor()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingEndsAt()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingName()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingToken()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingWebsite()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingStarted(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingAuthor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAuthor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingWebsite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingWebsite:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingAPY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingAPR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingAPR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingEndsAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingEndsAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$StakingStarted;->stakingToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
