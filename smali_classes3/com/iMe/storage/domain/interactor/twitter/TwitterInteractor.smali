.class public final Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;
.super Ljava/lang/Object;
.source "TwitterInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterInteractor.kt\ncom/iMe/storage/domain/interactor/twitter/TwitterInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,90:1\n48#2:91\n*S KotlinDebug\n*F\n+ 1 TwitterInteractor.kt\ncom/iMe/storage/domain/interactor/twitter/TwitterInteractor\n*L\n67#1:91\n*E\n"
.end annotation


# instance fields
.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

.field private final twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;)V
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
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

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

.method public static final synthetic access$getTwitterRepository$p(Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;)Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

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

    .line 67
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    .line 25
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->acceptConnection(JJ)Lio/reactivex/Observable;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->acceptConnection(JJ)Lio/reactivex/Observable;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3, p4}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->handleTokenError(Lio/reactivex/Observable;Lio/reactivex/Observable;J)Lio/reactivex/Observable;

    move-result-object p1

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

    .line 52
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    .line 53
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->getUserByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 55
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

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 36
    invoke-interface/range {v0 .. v5}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->getUserTweets(JJLjava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

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

    .line 47
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    .line 48
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->searchUsersByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    .line 49
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

    .line 58
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    .line 59
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->sendInvite(JJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 61
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
