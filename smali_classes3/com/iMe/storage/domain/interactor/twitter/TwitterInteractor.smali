.class public final Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;
.super Ljava/lang/Object;
.source "TwitterInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterInteractor.kt\ncom/iMe/storage/domain/interactor/twitter/TwitterInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,129:1\n48#2:130\n*S KotlinDebug\n*F\n+ 1 TwitterInteractor.kt\ncom/iMe/storage/domain/interactor/twitter/TwitterInteractor\n*L\n103#1:130\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

.field private final twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;)V
    .locals 1

    const-string v0, "schedulersProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 19
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 20
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    return-void
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getTwitterPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getTwitterRepository$p(Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    return-object p0
.end method

.method private final handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "TT;>;>;",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "TT;>;>;J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    .line 103
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;->WRONG_TWITTER_ACCESS_TOKEN_ERROR:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$TwitterErrorStatus;

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 48
    new-instance v0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;

    move-object v1, v0

    move-object v3, p0

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor$handleTokenError$$inlined$flatMapError$1;-><init>([Lcom/iMe/storage/data/network/model/error/IErrorStatus;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;JLio/reactivex/Observable;)V

    new-instance p2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "vararg errorStatus: IErr\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final acceptConnection(JJ)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->acceptConnection(JJ)Lio/reactivex/Observable;

    move-result-object v0

    .line 28
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterRepository\n      \u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->acceptConnection(JJ)Lio/reactivex/Observable;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 30
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final declineConnection(JJ)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->declineConnection(JJ)Lio/reactivex/Observable;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterRepository\n      \u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->declineConnection(JJ)Lio/reactivex/Observable;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSelfChatTwitterProfile(J)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 55
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->getSelfChatTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterRepository\n      \u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    invoke-interface {v1, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->getSelfChatTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getSelfTwitterProfile(J)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 48
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->getSelfTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterRepository\n      \u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    invoke-interface {v1, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->getSelfTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getUserByUsername(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 85
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->getUserByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 86
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getUserTweets(JJLjava/lang/Long;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Long;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/twitter/TweetInfo;",
            ">;>;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 68
    invoke-interface/range {v0 .. v5}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->getUserTweets(JJLjava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getUserTwitterProfile(J)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 62
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->getUserTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final logout(J)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 41
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->logout(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterRepository\n      \u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    invoke-interface {v1, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->logout(J)Lio/reactivex/Observable;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final searchUsersByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "usernameQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 80
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->searchUsersByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final sendInvite(JJ)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;

    .line 91
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/twitter/TwitterRepository;->sendInvite(JJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 92
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
