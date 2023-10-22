.class public final Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;
.super Ljava/lang/Object;
.source "SessionInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/SessionInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,73:1\n16#2,7:74\n16#2,7:81\n16#2,7:88\n*S KotlinDebug\n*F\n+ 1 SessionInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/SessionInteractor\n*L\n26#1:74,7\n57#1:81,7\n65#1:88,7\n*E\n"
.end annotation


# instance fields
.field private final notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final sessionRepository:Lcom/iMe/storage/domain/repository/wallet/SessionRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/repository/wallet/SessionRepository;)V
    .locals 1

    const-string v0, "notificationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 17
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    .line 18
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 19
    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->sessionRepository:Lcom/iMe/storage/domain/repository/wallet/SessionRepository;

    return-void
.end method

.method public static final synthetic access$getNotificationRepository$p(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;)Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    return-object p0
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;)Lcom/iMe/storage/domain/storage/PreferenceHelper;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$updatePushToken(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;)Lio/reactivex/Observable;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->updatePushToken()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final updatePushToken()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 64
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->issuePushAllowanceToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor$updatePushToken$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor$updatePushToken$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;)V

    new-instance v2, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "notificationRepository\n \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->sessionRepository:Lcom/iMe/storage/domain/repository/wallet/SessionRepository;

    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/wallet/SessionRepository;->getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;

    move-result-object v0

    return-object v0
.end method

.method public final hasActiveUser()Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final login(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->sessionRepository:Lcom/iMe/storage/domain/repository/wallet/SessionRepository;

    .line 56
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/wallet/SessionRepository;->login(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor$login$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor$login$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "sessionRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final refreshToken()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->sessionRepository:Lcom/iMe/storage/domain/repository/wallet/SessionRepository;

    .line 25
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/wallet/SessionRepository;->refreshToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor$refreshToken$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor$refreshToken$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;)V

    new-instance v2, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "sessionRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final tgAccountLogout()Lio/reactivex/Completable;
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->hasActiveUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 48
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->deletePushToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->sessionRepository:Lcom/iMe/storage/domain/repository/wallet/SessionRepository;

    invoke-interface {v1}, Lcom/iMe/storage/domain/repository/wallet/SessionRepository;->logout()Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/wallet/SessionInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "{\n            notificati\u2026sProvider.io())\n        }"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "complete()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
