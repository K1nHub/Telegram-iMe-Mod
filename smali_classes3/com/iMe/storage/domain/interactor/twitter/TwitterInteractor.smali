.class public final Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;
.super Ljava/lang/Object;
.source "TwitterInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterInteractor.kt\ncom/iMe/storage/domain/interactor/twitter/TwitterInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,108:1\n54#2,11:109\n*S KotlinDebug\n*F\n+ 1 TwitterInteractor.kt\ncom/iMe/storage/domain/interactor/twitter/TwitterInteractor\n*L\n84#1:109,11\n*E\n"
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


# virtual methods
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

    .line 45
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 46
    invoke-interface/range {v0 .. v5}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->getUserTweets(JJLjava/lang/Long;)Lio/reactivex/Observable;

    move-result-object p1

    .line 47
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p2, p3, p4, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
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

    .line 64
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->twitterRepository:Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;

    .line 65
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/socialMedia/TwitterRepository;->searchUsersByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    .line 66
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterRepository\n      \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
