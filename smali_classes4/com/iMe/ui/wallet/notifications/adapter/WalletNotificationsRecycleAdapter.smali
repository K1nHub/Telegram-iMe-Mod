.class public final Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "WalletNotificationsRecycleAdapter.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/module/LoadMoreModule;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
        "Lcom/iMe/model/wallet/notification/NotificationItem;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        ">;",
        "Lcom/chad/library/adapter/base/module/LoadMoreModule;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_wallet_notification:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method protected convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/notification/NotificationItem;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget v0, Lorg/telegram/messenger/R$id;->linear_root:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 19
    sget v0, Lorg/telegram/messenger/R$id;->text_notification_message:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {p1, v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 20
    sget v2, Lorg/telegram/messenger/R$id;->text_notification_date:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    invoke-static {p1, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 21
    sget v3, Lorg/telegram/messenger/R$id;->text_notification_category:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    invoke-static {p1, v3, v4}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 22
    sget v4, Lorg/telegram/messenger/R$id;->view_read_mark:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/high16 v6, 0x40400000    # 3.0f

    invoke-static {p1, v4, v5, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedRoundedBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;IIF)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    new-array v5, v1, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    .line 23
    invoke-static {p1, v5}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 24
    invoke-virtual {p2}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/notification/Notification;->isRead()Z

    move-result v5

    xor-int/2addr v1, v5

    invoke-virtual {p1, v4, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setVisible(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 25
    invoke-virtual {p2}, Lcom/iMe/model/wallet/notification/NotificationItem;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 26
    invoke-virtual {p2}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/notification/Notification;->getDate()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->DATE_AND_TIME:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 27
    invoke-virtual {p2}, Lcom/iMe/model/wallet/notification/NotificationItem;->getCategory()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/iMe/model/wallet/notification/NotificationItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/wallet/notifications/adapter/WalletNotificationsRecycleAdapter;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/notification/NotificationItem;)V

    return-void
.end method
