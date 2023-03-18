.class public final Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;
.super Ljava/lang/Object;
.source "NotificationMapping.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final mapToDomain(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;
    .locals 18

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->Companion:Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v0

    sget-object v2, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "toString()"

    const-string v4, ""

    packed-switch v2, :pswitch_data_0

    .line 176
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v0

    goto/16 :goto_1b

    .line 165
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 167
    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v6

    :goto_0
    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v12

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDebtAsToken()Ljava/lang/String;

    move-result-object v13

    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDebtAsUsd()Ljava/lang/String;

    move-result-object v14

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getProfitAsToken()Ljava/lang/String;

    move-result-object v15

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getProfitAsUsd()Ljava/lang/String;

    move-result-object v16

    .line 164
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingFinished;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v16}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingFinished;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 151
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 153
    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v17

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingAuthor()Ljava/lang/String;

    move-result-object v12

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingWebsite()Ljava/lang/String;

    move-result-object v13

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingAPY()Ljava/lang/String;

    move-result-object v14

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingAPR()Ljava/lang/String;

    move-result-object v15

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingEndsAt()Ljava/lang/String;

    move-result-object v16

    .line 150
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingStarted;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v17}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingStarted;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 141
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 143
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v9

    :goto_2
    invoke-virtual {v6, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v12

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 140
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    .line 147
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 140
    invoke-direct/range {v3 .. v13}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move-object v0, v1

    goto/16 :goto_1b

    .line 130
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 132
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    move-object v9, v4

    :cond_3
    invoke-virtual {v6, v9}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingId()Ljava/lang/String;

    move-result-object v10

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingName()Ljava/lang/String;

    move-result-object v11

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStakingToken()Ljava/lang/String;

    move-result-object v12

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getShouldFinishAt()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v14, v4

    goto :goto_4

    :cond_4
    move-object v14, v1

    .line 129
    :goto_4
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;

    .line 136
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 129
    invoke-direct/range {v3 .. v14}, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 117
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v10

    if-nez v10, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v0

    return-object v0

    .line 120
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getTxHash()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v11, v4

    goto :goto_5

    :cond_6
    move-object v11, v3

    .line 123
    :goto_5
    sget-object v3, Lcom/smedialink/storage/data/network/model/response/base/Status;->Companion:Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    move-object v6, v4

    :cond_7
    invoke-virtual {v3, v6}, Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v12

    .line 125
    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, v1

    :goto_6
    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 119
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$Approve;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v12}, Lcom/smedialink/storage/domain/model/notification/Notification$Approve;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/base/Status;)V

    goto/16 :goto_3

    .line 109
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getTxHash()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_9

    move-object v10, v4

    goto :goto_7

    :cond_9
    move-object v10, v3

    .line 112
    :goto_7
    sget-object v3, Lcom/smedialink/storage/data/network/model/response/base/Status;->Companion:Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_a

    move-object v6, v4

    :cond_a
    invoke-virtual {v3, v6}, Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v11

    .line 113
    sget-object v3, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    move-object v4, v1

    :goto_8
    invoke-virtual {v3, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 108
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$Cancel;

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v11}, Lcom/smedialink/storage/domain/model/notification/Notification$Cancel;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/base/Status;)V

    goto/16 :goto_3

    .line 97
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_c

    move-object v11, v4

    goto :goto_9

    :cond_c
    move-object v11, v6

    .line 101
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAssetName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_d

    move-object v12, v4

    goto :goto_a

    :cond_d
    move-object v12, v6

    .line 102
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getPayerUserId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_e

    move-object v13, v4

    goto :goto_b

    :cond_e
    move-object v13, v6

    .line 103
    :goto_b
    sget-object v6, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;->Companion:Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_f

    move-object v9, v4

    :cond_f
    invoke-virtual {v6, v9}, Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v14

    .line 104
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_c

    :cond_10
    move-object v4, v1

    :goto_c
    invoke-virtual {v6, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 96
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;

    .line 99
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 96
    invoke-direct/range {v3 .. v14}, Lcom/smedialink/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;)V

    goto/16 :goto_3

    .line 86
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAssetCode()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    move-object v11, v4

    goto :goto_d

    :cond_11
    move-object v11, v6

    .line 90
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAssetName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_12

    move-object v12, v4

    goto :goto_e

    :cond_12
    move-object v12, v6

    .line 91
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getPayerUserId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_13

    move-object v13, v4

    goto :goto_f

    :cond_13
    move-object v13, v6

    .line 92
    :goto_f
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_10

    :cond_14
    move-object v4, v1

    :goto_10
    invoke-virtual {v6, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 85
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$BinancePayRequestCreated;

    .line 88
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 85
    invoke-direct/range {v3 .. v13}, Lcom/smedialink/storage/domain/model/notification/Notification$BinancePayRequestCreated;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 70
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v10

    if-nez v10, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v0

    return-object v0

    .line 73
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_16

    move-object v11, v4

    goto :goto_11

    :cond_16
    move-object v11, v6

    .line 76
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v12

    .line 77
    sget-object v6, Lcom/smedialink/storage/data/network/model/response/base/Status;->Companion:Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_17

    move-object v9, v4

    :cond_17
    invoke-virtual {v6, v9}, Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v13

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmountToSpent()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v6}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v14, v9

    goto :goto_12

    :cond_18
    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    move-object v14, v6

    .line 80
    :goto_12
    new-instance v15, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getSpentCurrency()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_19

    sget-object v6, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_19
    const/4 v9, 0x0

    const/4 v1, 0x2

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-direct {v15, v6, v9, v1, v4}, Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1a

    move-object/from16 v4, v16

    :cond_1a
    invoke-virtual {v1, v4}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 72
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$Simplex;

    .line 76
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "amountToSpent?.toBigDecimal() ?: BigDecimal.ZERO"

    .line 79
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v2

    move-object v6, v0

    .line 72
    invoke-direct/range {v3 .. v15}, Lcom/smedialink/storage/domain/model/notification/Notification$Simplex;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/model/wallet/token/FiatCode;)V

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v16, v4

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v11

    if-nez v11, :cond_1b

    invoke-static/range {p0 .. p0}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v0

    return-object v0

    .line 59
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v8

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    move-object/from16 v12, v16

    goto :goto_13

    :cond_1c
    move-object v12, v1

    .line 62
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move-object/from16 v13, v16

    goto :goto_14

    :cond_1d
    move-object v13, v1

    .line 63
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v14

    .line 64
    sget-object v1, Lcom/smedialink/storage/data/network/model/response/base/Status;->Companion:Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    move-object/from16 v2, v16

    :cond_1e
    invoke-virtual {v1, v2}, Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v4

    .line 66
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    move-object/from16 v2, v16

    :cond_1f
    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v10

    .line 58
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;

    .line 63
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v7, v0

    .line 58
    invoke-direct/range {v3 .. v14}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$Out;-><init>(Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v16, v4

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v10

    if-nez v10, :cond_20

    invoke-static/range {p0 .. p0}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v0

    return-object v0

    .line 46
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    move-object/from16 v11, v16

    goto :goto_15

    :cond_21
    move-object v11, v1

    .line 49
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    move-object/from16 v12, v16

    goto :goto_16

    :cond_22
    move-object v12, v1

    .line 50
    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 52
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    move-object/from16 v2, v16

    :cond_23
    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 45
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$In;

    .line 50
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v6, v0

    .line 45
    invoke-direct/range {v3 .. v13}, Lcom/smedialink/storage/domain/model/notification/Notification$Donation$In;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_c
    move-object/from16 v16, v4

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v11

    if-nez v11, :cond_24

    invoke-static/range {p0 .. p0}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v0

    return-object v0

    .line 32
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    move-object/from16 v12, v16

    goto :goto_17

    :cond_25
    move-object v12, v1

    .line 35
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_26

    move-object/from16 v13, v16

    goto :goto_18

    :cond_26
    move-object v13, v1

    .line 36
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v14

    .line 37
    sget-object v1, Lcom/smedialink/storage/data/network/model/response/base/Status;->Companion:Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_27

    move-object/from16 v2, v16

    :cond_27
    invoke-virtual {v1, v2}, Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v4

    .line 39
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_28

    move-object/from16 v2, v16

    :cond_28
    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v10

    .line 31
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    .line 36
    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v7, v0

    .line 31
    invoke-direct/range {v3 .. v14}, Lcom/smedialink/storage/domain/model/notification/Notification$CryptoTransfer$Out;-><init>(Lcom/smedialink/storage/data/network/model/response/base/Status;Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_d
    move-object/from16 v16, v4

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getCryptoCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->parseSupportedTokenCode(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v10

    if-nez v10, :cond_29

    invoke-static/range {p0 .. p0}, Lcom/smedialink/storage/data/mapper/notification/NotificationMappingKt;->unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v0

    return-object v0

    .line 19
    :cond_29
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v8

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getFromWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2a

    move-object/from16 v11, v16

    goto :goto_19

    :cond_2a
    move-object v11, v1

    .line 22
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getToWalletAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b

    move-object/from16 v12, v16

    goto :goto_1a

    :cond_2b
    move-object v12, v1

    .line 23
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getAmount()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v13

    .line 25
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2c

    move-object/from16 v2, v16

    :cond_2c
    invoke-virtual {v1, v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v9

    .line 18
    new-instance v1, Lcom/smedialink/storage/domain/model/notification/Notification$CryptoTransfer$In;

    .line 23
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    move-object v6, v0

    .line 18
    invoke-direct/range {v3 .. v13}, Lcom/smedialink/storage/domain/model/notification/Notification$CryptoTransfer$In;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :goto_1b
    return-object v0

    nop

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

.method private static final parseSupportedTokenCode(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 1

    .line 181
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object p0

    .line 182
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private static final unsupportedNotification(Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;)Lcom/smedialink/storage/domain/model/notification/Notification;
    .locals 7

    .line 188
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getRead()Z

    move-result v2

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 189
    sget-object v0, Lcom/smedialink/storage/domain/model/notification/NotificationType;->Companion:Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/smedialink/storage/domain/model/notification/NotificationType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/notification/NotificationType;

    move-result-object v3

    .line 190
    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 191
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {p0}, Lcom/smedialink/storage/data/network/model/response/notification/NotificationResponse;->getNetworkType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v6

    .line 187
    new-instance p0, Lcom/smedialink/storage/domain/model/notification/Notification$Unsupported;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/smedialink/storage/domain/model/notification/Notification$Unsupported;-><init>(Ljava/lang/String;ZLcom/smedialink/storage/domain/model/notification/NotificationType;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-object p0
.end method
