.class public final Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;
.super Ljava/lang/Object;
.source "PushNotificationInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushNotificationInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushNotificationInteractor.kt\ncom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor\n+ 2 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,52:1\n6#2:53\n18#3:54\n*S KotlinDebug\n*F\n+ 1 PushNotificationInteractor.kt\ncom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor\n*L\n25#1:53\n25#1:54\n*E\n"
.end annotation


# instance fields
.field private final pushNotificationRepository:Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final walletSessionInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "walletSessionInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushNotificationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->walletSessionInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    .line 16
    iput-object p2, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;

    .line 17
    iput-object p3, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic getNotifications$default(Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->getNotifications(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getNotifications(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/notification/Notification;",
            ">;>;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;->getNotifications(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "pushNotificationReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final savePushToken(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->walletSessionInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/wallet/WalletSessionInteractor;->isHasActiveUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;->savePushToken(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "{\n            pushNotifi\u2026sProvider.io())\n        }"

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    sget-object v0, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->UNAUTHORIZED:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;-><init>(Lcom/smedialink/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final setAllNotificationsRead()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;->setAllNotificationsRead()Lio/reactivex/Observable;

    move-result-object v0

    .line 48
    sget-object v1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "pushNotificationReposito\u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setNotificationsRead(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/repository/notification/PushNotificationRepository;->setNotificationsRead(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 42
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->loading$default(Lcom/smedialink/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/smedialink/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "pushNotificationReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
