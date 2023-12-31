.class public final Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;
.super Ljava/lang/Object;
.source "PushNotificationInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPushNotificationInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushNotificationInteractor.kt\ncom/iMe/storage/domain/interactor/notification/PushNotificationInteractor\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,54:1\n11#2,2:55\n8#2,2:57\n18#3:59\n*S KotlinDebug\n*F\n+ 1 PushNotificationInteractor.kt\ncom/iMe/storage/domain/interactor/notification/PushNotificationInteractor\n*L\n26#1:55,2\n26#1:57,2\n26#1:59\n*E\n"
.end annotation


# instance fields
.field private final pushNotificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final sessionInteractor:Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "sessionInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushNotificationRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->sessionInteractor:Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;

    .line 16
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 17
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static synthetic getNotifications$default(Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->getNotifications(Ljava/lang/String;)Lio/reactivex/Observable;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/notification/Notification;",
            ">;>;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->getNotifications(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 36
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->sessionInteractor:Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->hasActiveUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->savePushToken(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 23
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "{\n            pushNotifi\u2026sProvider.io())\n        }"

    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/iMe/storage/data/network/model/error/ErrorModel;

    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;->UNAUTHORIZED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$ErrorStatus;

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;-><init>(Lcom/iMe/storage/data/network/model/error/IErrorStatus;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final sendActivityMark()Lio/reactivex/Completable;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 51
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->sendActivityMark()Lio/reactivex/Completable;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "pushNotificationReposito\u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setAllNotificationsRead()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->setAllNotificationsRead()Lio/reactivex/Observable;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

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
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->pushNotificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->setNotificationsRead(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/notification/PushNotificationInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "pushNotificationReposito\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
