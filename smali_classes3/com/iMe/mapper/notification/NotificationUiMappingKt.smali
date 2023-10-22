.class public final Lcom/iMe/mapper/notification/NotificationUiMappingKt;
.super Ljava/lang/Object;
.source "NotificationUiMapping.kt"


# direct methods
.method public static final mapToPushNotification(Lcom/iMe/storage/domain/model/notification/Notification;)Lcom/iMe/model/wallet/notification/PushNotificationModel;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Unsupported;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$Unsupported;

    .line 19
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-direct {v0, v1, p0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$Unsupported;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 23
    :cond_0
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;

    if-eqz v0, :cond_1

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;->getAmount()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;->getToAddress()Ljava/lang/String;

    move-result-object v6

    .line 27
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$In;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 23
    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer$In;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32
    :cond_1
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    if-eqz v0, :cond_2

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;->getTokenCode()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;->getAmount()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;->getToAddress()Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    .line 37
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 39
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$CryptoTransfer$Out;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 32
    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/notification/PushNotificationModel$CryptoTransfer$Out;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
    :cond_2
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;

    if-eqz v0, :cond_3

    .line 43
    move-object v0, p0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    .line 44
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;->getAmount()Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;->getToAddress()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$In;->getFromAddress()Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$Donation$In;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/notification/PushNotificationModel$Donation$In;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 51
    :cond_3
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    if-eqz v0, :cond_4

    .line 52
    move-object v0, p0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;->getTokenCode()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;->getAmount()Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;->getToAddress()Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;->getFromAddress()Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 58
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$Donation$Out;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 51
    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$Donation$Out;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/notification/PushNotificationModel$Donation$Out;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    :cond_4
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;

    if-eqz v0, :cond_5

    .line 62
    move-object v0, p0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;->getTokenCode()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;->getAmount()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;->getToAddress()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 67
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;->getSpentAmount()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v9

    .line 69
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$Simplex;->getSpentFiatCode()Lcom/iMe/storage/domain/model/wallet/token/FiatCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/token/FiatCode;->getShortName()Ljava/lang/String;

    move-result-object v8

    .line 61
    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$Simplex;

    const-string p0, "toString()"

    .line 68
    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    .line 61
    invoke-direct/range {v1 .. v9}, Lcom/iMe/model/wallet/notification/PushNotificationModel$Simplex;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_5
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Cancel;

    if-eqz v0, :cond_6

    .line 73
    move-object v0, p0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Cancel;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Cancel;->getTxHash()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 76
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$Cancel;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$Cancel;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance v3, Lcom/iMe/model/wallet/notification/PushNotificationModel$Cancel;

    invoke-direct {v3, v1, v2, p0, v0}, Lcom/iMe/model/wallet/notification/PushNotificationModel$Cancel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_0

    .line 79
    :cond_6
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;

    if-eqz v0, :cond_7

    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$BinancePayRequestCreated;

    .line 80
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 82
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;->getAmount()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;->getAssetCode()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;->getAssetName()Ljava/lang/String;

    move-result-object v6

    .line 85
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestCreated;->getPayerUserId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v0

    .line 79
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/notification/PushNotificationModel$BinancePayRequestCreated;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_7
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;

    if-eqz v0, :cond_8

    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$BinancePayRequestStatusUpdated;

    .line 89
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 91
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;->getAmount()Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;->getAssetCode()Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;->getAssetName()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;->getPayerUserId()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    .line 88
    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/notification/PushNotificationModel$BinancePayRequestStatusUpdated;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_8
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$Approve;

    if-eqz v0, :cond_9

    .line 99
    move-object v0, p0

    check-cast v0, Lcom/iMe/storage/domain/model/notification/Notification$Approve;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification$Approve;->getTxHash()Ljava/lang/String;

    move-result-object v6

    .line 100
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 102
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$Approve;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$Approve;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$Approve;->getTokenCode()Ljava/lang/String;

    move-result-object v4

    .line 98
    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$Approve;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/model/wallet/notification/PushNotificationModel$Approve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_9
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;

    if-eqz v0, :cond_a

    .line 107
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getId()Ljava/lang/String;

    move-result-object v5

    .line 111
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;->getStakingName()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;->getStakingAuthor()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;->getStakingWebsite()Ljava/lang/String;

    move-result-object v8

    .line 114
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;->getStakingToken()Ljava/lang/String;

    move-result-object v12

    .line 115
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;->getStakingAPY()Ljava/lang/String;

    move-result-object v9

    .line 116
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;->getStakingAPR()Ljava/lang/String;

    move-result-object v10

    .line 117
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingStarted;->getStakingEndsAt()Ljava/lang/String;

    move-result-object v11

    .line 106
    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingStarted;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingStarted;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_a
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingFinished;

    .line 121
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getId()Ljava/lang/String;

    move-result-object v5

    .line 125
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;->getStakingName()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;->getStakingToken()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;->getDebtAsToken()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;->getDebtAsUsd()Ljava/lang/String;

    move-result-object v9

    .line 129
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;->getProfitAsToken()Ljava/lang/String;

    move-result-object v10

    .line 130
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingFinished;->getProfitAsUsd()Ljava/lang/String;

    move-result-object v11

    move-object v1, v0

    .line 120
    invoke-direct/range {v1 .. v11}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingFinished;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_b
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalStarted;

    .line 134
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getId()Ljava/lang/String;

    move-result-object v5

    .line 138
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;->getStakingName()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;->getStakingToken()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;->getAmount()Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;->getShouldFinishAt()Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    .line 133
    invoke-direct/range {v1 .. v9}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalStarted;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_c
    instance-of v0, p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    if-eqz v0, :cond_d

    new-instance v0, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;

    .line 145
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getType()Lcom/iMe/storage/domain/model/notification/NotificationType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 148
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification;->getId()Ljava/lang/String;

    move-result-object v5

    .line 149
    check-cast p0, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getStakingName()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getStakingToken()Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;->getAmount()Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    .line 144
    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/notification/PushNotificationModel$StakingSafeWithdrawalFinished;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final mapToUI(Lcom/iMe/storage/domain/model/notification/Notification;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/wallet/notification/NotificationItem;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0}, Lcom/iMe/utils/extentions/model/wallet/NotificationExtKt;->getCategoryTitle(Lcom/iMe/storage/domain/model/notification/Notification;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p0}, Lcom/iMe/mapper/notification/NotificationUiMappingKt;->mapToPushNotification(Lcom/iMe/storage/domain/model/notification/Notification;)Lcom/iMe/model/wallet/notification/PushNotificationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/notification/PushNotificationModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/iMe/model/wallet/notification/NotificationItem;

    invoke-direct {v1, p0, v0, p1}, Lcom/iMe/model/wallet/notification/NotificationItem;-><init>(Lcom/iMe/storage/domain/model/notification/Notification;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
