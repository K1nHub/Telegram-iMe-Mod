.class public final Lcom/smedialink/ui/twitter/TwitterPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "TwitterPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/twitter/TwitterView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterPresenter.kt\ncom/smedialink/ui/twitter/TwitterPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,186:1\n39#2,8:187\n39#2,8:195\n39#2,8:210\n350#3,7:203\n*S KotlinDebug\n*F\n+ 1 TwitterPresenter.kt\ncom/smedialink/ui/twitter/TwitterPresenter\n*L\n62#1:187,8\n138#1:195,8\n167#1:210,8\n145#1:203,7\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field

.field private lastItemId:Ljava/lang/Long;

.field private final likeToggleSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/smedialink/model/twitter/TweetItem;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramProfileId:J

.field private final tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/twitter/TweetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final twitterInteractor:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;

.field private final twitterUserId:J

.field private final twitterUserNickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;)V
    .locals 1

    const-string v0, "twitterUserNickname"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->telegramProfileId:J

    .line 27
    iput-wide p3, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->twitterUserId:J

    .line 28
    iput-object p5, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->twitterUserNickname:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 30
    iput-object p7, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 31
    iput-object p8, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->twitterInteractor:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->items:Ljava/util/List;

    .line 37
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->likeToggleSubject:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic access$getItems$p(Lcom/smedialink/ui/twitter/TwitterPresenter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTweets$p(Lcom/smedialink/ui/twitter/TwitterPresenter;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$renderGlobalState(Lcom/smedialink/ui/twitter/TwitterPresenter;Lcom/smedialink/model/state/GlobalState;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/smedialink/ui/twitter/TwitterPresenter;->renderGlobalState(Lcom/smedialink/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setLastItemId$p(Lcom/smedialink/ui/twitter/TwitterPresenter;Ljava/lang/Long;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$toggleItemLikeStatus(Lcom/smedialink/ui/twitter/TwitterPresenter;Lcom/smedialink/model/twitter/TweetItem;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/smedialink/ui/twitter/TwitterPresenter;->toggleItemLikeStatus(Lcom/smedialink/model/twitter/TweetItem;)V

    return-void
.end method

.method public static synthetic loadTweets$default(Lcom/smedialink/ui/twitter/TwitterPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 49
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/twitter/TwitterPresenter;->loadTweets(ZZ)V

    return-void
.end method

.method private final renderGlobalState(Lcom/smedialink/model/state/GlobalState;)V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/twitter/TwitterView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/smedialink/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/smedialink/model/common/GlobalStateItem;-><init>(Lcom/smedialink/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/twitter/TwitterView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method private final subscribeToLikeToggles()V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->likeToggleSubject:Lio/reactivex/subjects/PublishSubject;

    .line 134
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "likeToggleSubject\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/twitter/TwitterPresenter;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/smedialink/ui/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 141
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final toggleItemLikeStatus(Lcom/smedialink/model/twitter/TweetItem;)V
    .locals 22

    move-object/from16 v0, p0

    .line 145
    iget-object v1, v0, Lcom/smedialink/ui/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    .line 351
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 352
    check-cast v4, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;

    .line 145
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;->getId()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/twitter/TweetItem;->getId()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v6

    :goto_2
    if-ne v3, v6, :cond_3

    return-void

    .line 148
    :cond_3
    iget-object v1, v0, Lcom/smedialink/ui/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;->isLiked()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/smedialink/model/twitter/TweetItem;->isLiked()Z

    move-result v2

    if-ne v1, v2, :cond_4

    return-void

    .line 150
    :cond_4
    iget-object v1, v0, Lcom/smedialink/ui/twitter/TwitterPresenter;->items:Ljava/util/List;

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v6, :cond_5

    return-void

    .line 153
    :cond_5
    iget-object v2, v0, Lcom/smedialink/ui/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 155
    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;->getLikesCount()I

    move-result v4

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;->isLiked()Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_3

    :cond_6
    move v6, v5

    :goto_3
    add-int v13, v4, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    .line 156
    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;->isLiked()Z

    move-result v4

    xor-int/lit8 v19, v4, 0x1

    const/16 v20, 0x1ef

    const/16 v21, 0x0

    .line 154
    invoke-static/range {v7 .. v21}, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;->copy$default(Lcom/smedialink/storage/domain/model/twitter/TweetInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZILjava/lang/Object;)Lcom/smedialink/storage/domain/model/twitter/TweetInfo;

    move-result-object v4

    .line 153
    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v2, v0, Lcom/smedialink/ui/twitter/TwitterPresenter;->items:Ljava/util/List;

    iget-object v4, v0, Lcom/smedialink/ui/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smedialink/storage/domain/model/twitter/TweetInfo;

    invoke-static {v3}, Lcom/smedialink/mapper/twitter/TweetInfoUiMappingKt;->mapToUi(Lcom/smedialink/storage/domain/model/twitter/TweetInfo;)Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/twitter/TwitterView;

    iget-object v2, v0, Lcom/smedialink/ui/twitter/TwitterPresenter;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/smedialink/ui/twitter/TwitterView;->renderItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final loadTweets(ZZ)V
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 51
    iget-object v1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/twitter/TwitterView;

    invoke-interface {p1}, Lcom/smedialink/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->twitterInteractor:Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;

    .line 57
    iget-wide v2, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->telegramProfileId:J

    .line 58
    iget-wide v4, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->twitterUserId:J

    .line 59
    iget-object v6, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    .line 56
    invoke-virtual/range {v1 .. v6}, Lcom/smedialink/storage/domain/interactor/twitter/TwitterInteractor;->getUserTweets(JJLjava/lang/Long;)Lio/reactivex/Observable;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "twitterInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/smedialink/ui/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/smedialink/ui/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/twitter/TwitterPresenter;ZZ)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/smedialink/ui/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Lcom/smedialink/ui/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, p2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 124
    invoke-direct {p0}, Lcom/smedialink/ui/twitter/TwitterPresenter;->subscribeToLikeToggles()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 125
    invoke-static {p0, v0, v1, v2, v3}, Lcom/smedialink/ui/twitter/TwitterPresenter;->loadTweets$default(Lcom/smedialink/ui/twitter/TwitterPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final onOpenInTwitterClick()V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/twitter/TwitterView;

    sget-object v1, Lcom/smedialink/storage/common/AppConfiguration$Twitter;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Twitter;

    iget-object v2, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->twitterUserNickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smedialink/storage/common/AppConfiguration$Twitter;->getUserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/twitter/TwitterView;->openBrowserUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final onShareClick(Lcom/smedialink/model/twitter/TweetItem;)V
    .locals 5

    const-string v0, "tweetItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/twitter/TwitterView;

    sget-object v1, Lcom/smedialink/storage/common/AppConfiguration$Twitter;->INSTANCE:Lcom/smedialink/storage/common/AppConfiguration$Twitter;

    iget-object v2, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->twitterUserNickname:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/smedialink/model/twitter/TweetItem;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/smedialink/storage/common/AppConfiguration$Twitter;->getTweetUrl(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/twitter/TwitterView;->shareLink(Ljava/lang/String;)V

    return-void
.end method

.method public final reload()V
    .locals 3

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    .line 44
    iget-object v1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 45
    iget-object v1, p0, Lcom/smedialink/ui/twitter/TwitterPresenter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 46
    invoke-static {p0, v1, v2, v2, v0}, Lcom/smedialink/ui/twitter/TwitterPresenter;->loadTweets$default(Lcom/smedialink/ui/twitter/TwitterPresenter;ZZILjava/lang/Object;)V

    return-void
.end method
