.class public final Lcom/smedialink/utils/extentions/model/wallet/NotificationExtKt;
.super Ljava/lang/Object;
.source "NotificationExt.kt"


# direct methods
.method public static final getCategoryTitle(Lcom/smedialink/storage/domain/model/notification/Notification;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation;

    if-eqz v0, :cond_0

    sget p0, Lorg/telegram/messenger/R$string;->channel_donations_toolbar_title:I

    goto/16 :goto_4

    .line 14
    :cond_0
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$CryptoTransfer$In;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->IN:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->getTitle()I

    move-result p0

    goto :goto_4

    .line 15
    :cond_1
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$CryptoTransfer$Out;

    if-eqz v0, :cond_2

    sget-object p0, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->OUT:Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;

    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/transaction/TransactionDirection;->getTitle()I

    move-result p0

    goto :goto_4

    .line 16
    :cond_2
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Cancel;

    if-eqz v0, :cond_3

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_cancel_title:I

    goto :goto_4

    .line 17
    :cond_3
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Approve;

    if-eqz v0, :cond_4

    sget p0, Lorg/telegram/messenger/R$string;->push_notification_wallet_approve_category_title:I

    goto :goto_4

    .line 18
    :cond_4
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Simplex;

    if-eqz v0, :cond_5

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_simplex_title:I

    goto :goto_4

    .line 19
    :cond_5
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Unsupported;

    if-eqz v0, :cond_6

    sget p0, Lorg/telegram/messenger/R$string;->wallet_transactions_type_unsupported_title:I

    goto :goto_4

    .line 20
    :cond_6
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$BinancePayRequestCreated;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$BinancePayRequestStatusUpdated;

    :goto_0
    if-eqz v0, :cond_8

    sget p0, Lorg/telegram/messenger/R$string;->wallet_binance_attach_title:I

    goto :goto_4

    .line 21
    :cond_8
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalStarted;

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingSafeWithdrawalFinished;

    :goto_1
    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_2

    .line 22
    :cond_a
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingStarted;

    :goto_2
    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    instance-of v1, p0, Lcom/smedialink/storage/domain/model/notification/Notification$StakingFinished;

    :goto_3
    if-eqz v1, :cond_c

    sget p0, Lorg/telegram/messenger/R$string;->push_notification_staking_title:I

    :goto_4
    return p0

    :cond_c
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final isWithAddressType(Lcom/smedialink/storage/domain/model/notification/Notification;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$CryptoTransfer;

    if-nez v0, :cond_1

    instance-of p0, p0, Lcom/smedialink/storage/domain/model/notification/Notification$Donation;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
