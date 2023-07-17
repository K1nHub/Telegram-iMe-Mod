.class public final Lcom/iMe/storage/data/mapper/notification/NotificationMappingKt;
.super Ljava/lang/Object;
.source "NotificationMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/data/mapper/notification/NotificationMappingKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;)Lcom/iMe/storage/domain/model/notification/Notification;
    .locals 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/iMe/storage/domain/model/notification/NotificationType;->Companion:Lcom/iMe/storage/domain/model/notification/NotificationType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iMe/storage/domain/model/notification/NotificationType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v0

    sget-object v2, Lcom/iMe/storage/data/mapper/notification/NotificationMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "toString()"

    const-string v4, ""

    packed-switch v2, :pswitch_data_0

    .line 167
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/iMe/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;)Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v0

    goto/16 :goto_27

    .line 155
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v9, v4

    goto :goto_0

    :cond_0
    move-object v9, v3

    .line 158
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v12

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDebtAsToken()Ljava/lang/String;

    move-result-object v13

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDebtAsUsd()Ljava/lang/String;

    move-result-object v14

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getProfitAsToken()Ljava/lang/String;

    move-result-object v15

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getProfitAsUsd()Ljava/lang/String;

    move-result-object v16

    .line 154
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v16}, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 140
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v9, v4

    goto :goto_1

    :cond_1
    move-object v9, v3

    .line 143
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v17

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingAuthor()Ljava/lang/String;

    move-result-object v12

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingWebsite()Ljava/lang/String;

    move-result-object v13

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingAPY()Ljava/lang/String;

    move-result-object v14

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingAPR()Ljava/lang/String;

    move-result-object v15

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingEndsAt()Ljava/lang/String;

    move-result-object v16

    .line 139
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v17}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 129
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    move-object v9, v4

    goto :goto_2

    :cond_2
    move-object v9, v6

    .line 132
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v12

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 128
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    .line 135
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 128
    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v1

    goto/16 :goto_27

    .line 117
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    move-object v9, v4

    goto :goto_4

    :cond_3
    move-object v9, v6

    .line 120
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v12

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getShouldFinishAt()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v14, v4

    goto :goto_5

    :cond_4
    move-object v14, v1

    .line 116
    :goto_5
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;

    .line 123
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 116
    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 107
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getTxHash()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    move-object v11, v4

    goto :goto_6

    :cond_5
    move-object v11, v3

    .line 110
    :goto_6
    sget-object v3, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    move-object v6, v4

    :cond_6
    invoke-virtual {v3, v6}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v12

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v10, v4

    goto :goto_7

    :cond_7
    move-object v10, v3

    .line 112
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v9, v4

    goto :goto_8

    :cond_8
    move-object v9, v1

    .line 106
    :goto_8
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$Approve;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v12}, Lcom/iMe/storage/domain/model/notification/Notification$Approve;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;)V

    goto/16 :goto_3

    .line 98
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getTxHash()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v10, v4

    goto :goto_9

    :cond_9
    move-object v10, v3

    .line 101
    :goto_9
    sget-object v3, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    move-object v6, v4

    :cond_a
    invoke-virtual {v3, v6}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v11

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v9, v4

    goto :goto_a

    :cond_b
    move-object v9, v1

    .line 97
    :goto_a
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$Cancel;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v11}, Lcom/iMe/storage/domain/model/notification/Notification$Cancel;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;)V

    goto/16 :goto_3

    .line 86
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    move-object v11, v4

    goto :goto_b

    :cond_c
    move-object v11, v6

    .line 90
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAssetName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    move-object v12, v4

    goto :goto_c

    :cond_d
    move-object v12, v6

    .line 91
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getPayerUserId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    move-object v13, v4

    goto :goto_d

    :cond_e
    move-object v13, v6

    .line 92
    :goto_d
    sget-object v6, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;->Companion:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_f

    move-object v9, v4

    :cond_f
    invoke-virtual {v6, v9}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v14

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v9, v4

    goto :goto_e

    :cond_10
    move-object v9, v1

    .line 85
    :goto_e
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;

    .line 88
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 85
    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;)V

    goto/16 :goto_3

    .line 75
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    move-object v11, v4

    goto :goto_f

    :cond_11
    move-object v11, v6

    .line 79
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAssetName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12

    move-object v12, v4

    goto :goto_10

    :cond_12
    move-object v12, v6

    .line 80
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getPayerUserId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    move-object v13, v4

    goto :goto_11

    :cond_13
    move-object v13, v6

    .line 81
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    move-object v9, v4

    goto :goto_12

    :cond_14
    move-object v9, v1

    .line 74
    :goto_12
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;

    .line 77
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 74
    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 62
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_15

    move-object v11, v4

    goto :goto_13

    :cond_15
    move-object v11, v6

    .line 65
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v12

    .line 66
    sget-object v6, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_16

    move-object v9, v4

    :cond_16
    invoke-virtual {v6, v9}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v13

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_17

    move-object v10, v4

    goto :goto_14

    :cond_17
    move-object v10, v6

    .line 68
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmountToSpent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v14, v9

    goto :goto_15

    :cond_18
    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object v14, v6

    .line 69
    :goto_15
    new-instance v15, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getSpentCurrency()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_19

    const-string v6, "USD"

    :cond_19
    const/4 v9, 0x0

    const/4 v1, 0x2

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-direct {v15, v6, v9, v1, v4}, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1a

    move-object/from16 v9, v16

    goto :goto_16

    :cond_1a
    move-object v9, v1

    .line 61
    :goto_16
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;

    .line 65
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 68
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 61
    invoke-direct/range {v3 .. v15}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/math/BigDecimal;Lcom/iMe/storage/domain/model/wallet/token/FiatCode;)V

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v16, v4

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v9

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    move-object/from16 v12, v16

    goto :goto_17

    :cond_1b
    move-object v12, v1

    .line 53
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    move-object/from16 v13, v16

    goto :goto_18

    :cond_1c
    move-object v13, v1

    .line 54
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v14

    .line 55
    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    move-object/from16 v2, v16

    :cond_1d
    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v4

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    move-object/from16 v11, v16

    goto :goto_19

    :cond_1e
    move-object v11, v1

    .line 57
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1f

    move-object/from16 v10, v16

    goto :goto_1a

    :cond_1f
    move-object v10, v1

    .line 49
    :goto_1a
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    .line 54
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v7, v0

    .line 49
    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;-><init>(Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v16, v4

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_20

    move-object/from16 v11, v16

    goto :goto_1b

    :cond_20
    move-object v11, v1

    .line 42
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move-object/from16 v12, v16

    goto :goto_1c

    :cond_21
    move-object v12, v1

    .line 43
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    move-object/from16 v10, v16

    goto :goto_1d

    :cond_22
    move-object v10, v1

    .line 45
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    move-object/from16 v9, v16

    goto :goto_1e

    :cond_23
    move-object v9, v1

    .line 38
    :goto_1e
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;

    .line 43
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v6, v0

    .line 38
    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_c
    move-object/from16 v16, v4

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v9

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_24

    move-object/from16 v12, v16

    goto :goto_1f

    :cond_24
    move-object v12, v1

    .line 30
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    move-object/from16 v13, v16

    goto :goto_20

    :cond_25
    move-object v13, v1

    .line 31
    :goto_20
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v14

    .line 32
    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->Companion:Lcom/iMe/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    move-object/from16 v2, v16

    :cond_26
    invoke-virtual {v1, v2}, Lcom/iMe/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v4

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_27

    move-object/from16 v11, v16

    goto :goto_21

    :cond_27
    move-object v11, v1

    .line 34
    :goto_21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_28

    move-object/from16 v10, v16

    goto :goto_22

    :cond_28
    move-object v10, v1

    .line 26
    :goto_22
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    .line 31
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v7, v0

    .line 26
    invoke-direct/range {v3 .. v14}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;-><init>(Lcom/iMe/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_d
    move-object/from16 v16, v4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_29

    move-object/from16 v11, v16

    goto :goto_23

    :cond_29
    move-object v11, v1

    .line 19
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    move-object/from16 v12, v16

    goto :goto_24

    :cond_2a
    move-object v12, v1

    .line 20
    :goto_24
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move-object/from16 v10, v16

    goto :goto_25

    :cond_2b
    move-object v10, v1

    .line 22
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2c

    move-object/from16 v9, v16

    goto :goto_26

    :cond_2c
    move-object v9, v1

    .line 15
    :goto_26
    new-instance v1, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;

    .line 20
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v6, v0

    .line 15
    invoke-direct/range {v3 .. v13}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :goto_27
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final unsupportedNotification(Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;)Lcom/iMe/storage/domain/model/notification/Notification;
    .locals 7

    .line 173
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v2

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 174
    sget-object v0, Lcom/iMe/storage/domain/model/notification/NotificationType;->Companion:Lcom/iMe/storage/domain/model/notification/NotificationType$Companion;

    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iMe/storage/domain/model/notification/NotificationType$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v3

    .line 175
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {p0}, Lcom/iMe/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    move-object v6, p0

    .line 172
    new-instance p0, Lcom/iMe/storage/domain/model/notification/Notification$Unsupported;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/iMe/storage/domain/model/notification/Notification$Unsupported;-><init>(Ljava/lang/String;ZLcom/iMe/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
