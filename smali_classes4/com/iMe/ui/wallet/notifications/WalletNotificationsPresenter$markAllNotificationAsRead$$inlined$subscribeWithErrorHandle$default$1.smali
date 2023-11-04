.class public final Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->markAllNotificationAsRead(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletNotificationsPresenter.kt\ncom/iMe/ui/wallet/notifications/WalletNotificationsPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,132:1\n39#2,3:133\n42#2,2:139\n44#2,13:142\n1549#3:136\n1620#3,2:137\n1622#3:141\n*S KotlinDebug\n*F\n+ 1 WalletNotificationsPresenter.kt\ncom/iMe/ui/wallet/notifications/WalletNotificationsPresenter\n*L\n41#1:136\n41#1:137,2\n41#1:141\n*E\n"
.end annotation


# instance fields
.field final synthetic $notifications$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->$notifications$inlined:Ljava/util/List;

    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_2

    .line 135
    iget-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->$notifications$inlined:Ljava/util/List;

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1621
    check-cast v1, Lcom/iMe/model/wallet/notification/NotificationItem;

    .line 139
    invoke-virtual {v1}, Lcom/iMe/model/wallet/notification/NotificationItem;->getNotification()Lcom/iMe/storage/domain/model/notification/Notification;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/notification/Notification;->setRead(Z)V

    .line 1621
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    invoke-interface {p1}, Lcom/iMe/ui/custom/state/GlobalStateView;->onEmptyState()V

    goto :goto_1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_notifications_success_mark_all_notification_as_read:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;->onLoadedNotifications(Ljava/util/List;)V

    goto :goto_1

    .line 151
    :cond_2
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter$markAllNotificationAsRead$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsPresenter;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_3
    :goto_1
    return-void
.end method
