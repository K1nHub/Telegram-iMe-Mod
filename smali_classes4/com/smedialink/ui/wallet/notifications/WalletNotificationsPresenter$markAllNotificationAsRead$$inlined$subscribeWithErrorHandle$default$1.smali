.class public final Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;->markAllNotificationAsRead(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletNotificationsPresenter.kt\ncom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n39#2,3:112\n42#2,2:118\n44#2,11:121\n1547#3:115\n1618#3,2:116\n1620#3:120\n*S KotlinDebug\n*F\n+ 1 WalletNotificationsPresenter.kt\ncom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter\n*L\n41#1:115\n41#1:116,2\n41#1:120\n*E\n"
.end annotation


# instance fields
.field final synthetic $notifications$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->$notifications$inlined:Ljava/util/List;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    .line 114
    iget-object p1, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->$notifications$inlined:Ljava/util/List;

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/smedialink/model/wallet/notification/NotificationItem;

    .line 118
    invoke-virtual {v1}, Lcom/smedialink/model/wallet/notification/NotificationItem;->getNotification()Lcom/smedialink/storage/domain/model/notification/Notification;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smedialink/storage/domain/model/notification/Notification;->setRead(Z)V

    .line 119
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;

    invoke-interface {p1}, Lcom/smedialink/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_notifications_success_mark_all_notification_as_read:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;->onLoadedNotifications(Ljava/util/List;)V

    goto :goto_1

    .line 129
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v1}, Lcom/smedialink/ui/wallet/notifications/WalletNotificationsPresenter;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
