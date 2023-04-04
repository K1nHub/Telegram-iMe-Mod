.class public final Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;
.super Lcom/iMe/model/wallet/notification/PushNotificationModel;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/notification/PushNotificationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingSafeWithdrawalFinished"
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final networkType:Ljava/lang/String;

.field private final stakingId:Ljava/lang/String;

.field private final stakingName:Ljava/lang/String;

.field private final stakingToken:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v0, "stakingToken"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p2, p1}, Lcom/iMe/model/wallet/notification/PushNotificationModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->type:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->userId:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    .line 121
    iput-object p7, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getType()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;
    .locals 9

    const-string v0, "type"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingId"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingName"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingToken"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    iget-object p1, p1, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 5

    .line 125
    sget v0, Lorg/telegram/messenger/R$string;->push_notification_staking_safe_withdrawal_finished:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/math/BigDecimal;

    .line 127
    iget-object v3, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v4, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v3

    invoke-static {v2, v3}, Lcom/iMe/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 128
    iget-object v2, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/iMe/model/wallet/notification/PushNotificationModel;->getString$TMessagesProj_release(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkType()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    return-object v0
.end method

.method public final getStakingToken()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StakingSafeWithdrawalFinished(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->networkType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stakingToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->stakingToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
