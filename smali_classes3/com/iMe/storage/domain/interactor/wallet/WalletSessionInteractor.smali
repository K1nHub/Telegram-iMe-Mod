.class public final Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;
.super Ljava/lang/Object;
.source "WalletSessionInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSessionInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSessionInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,72:1\n14#2:73\n14#2:74\n*S KotlinDebug\n*F\n+ 1 WalletSessionInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor\n*L\n27#1:73\n62#1:74\n*E\n"
.end annotation


# instance fields
.field private final notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

.field private final walletRepository:Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

.field private final walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/storage/PreferenceHelper;Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;Lcom/iMe/storage/domain/repository/wallet/WalletRepository;Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;)V
    .locals 1

    const-string v0, "preferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletSessionRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    .line 18
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    .line 19
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->walletRepository:Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    .line 20
    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    return-void
.end method

.method public static final synthetic access$getNotificationRepository$p(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    return-object p0
.end method

.method public static final synthetic access$getPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/iMe/storage/domain/storage/PreferenceHelper;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->preferenceHelper:Lcom/iMe/storage/domain/storage/PreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getWalletRepository$p(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)Lcom/iMe/storage/domain/repository/wallet/WalletRepository;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->walletRepository:Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    return-object p0
.end method


# virtual methods
.method public final getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;->getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;

    move-result-object v0

    return-object v0
.end method

.method public final hasActiveUser()Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->getCurrentAccount()Lcom/iMe/storage/domain/model/wallet/User;

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

    .line 60
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    .line 61
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;->login(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$login$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "walletSessionRepository\n\u2026scribeOn(Schedulers.io())"

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

    .line 25
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    .line 26
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;->refreshToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor$refreshToken$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)V

    new-instance v2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletSessionRepository\n\u2026scribeOn(Schedulers.io())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final tgAccountLogout()Lio/reactivex/Completable;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->hasActiveUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->notificationRepository:Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;

    .line 53
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/notification/PushNotificationRepository;->deletePushToken()Lio/reactivex/Observable;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lio/reactivex/Observable;->ignoreElements()Lio/reactivex/Completable;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->walletSessionRepository:Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;

    invoke-interface {v1}, Lcom/iMe/storage/domain/repository/wallet/WalletSessionRepository;->logout()Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v0

    .line 56
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "{\n                notifi\u2026ulers.io())\n            }"

    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "complete()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
