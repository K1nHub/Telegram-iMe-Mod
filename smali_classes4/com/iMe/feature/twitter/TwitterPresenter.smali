.class public final Lcom/iMe/feature/twitter/TwitterPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TwitterPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/feature/twitter/TwitterView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterPresenter.kt\ncom/iMe/feature/twitter/TwitterPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n63#2,12:189\n63#2,12:201\n63#2,12:213\n350#3,7:225\n*S KotlinDebug\n*F\n+ 1 TwitterPresenter.kt\ncom/iMe/feature/twitter/TwitterPresenter\n*L\n70#1:189,12\n151#1:201,12\n159#1:213,12\n166#1:225,7\n*E\n"
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
            "Lcom/iMe/model/twitter/TweetItem;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

.field private final socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

.field private final telegramProfileId:J

.field private final tweets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/twitter/TweetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;


# direct methods
.method public constructor <init>(JLcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;Lcom/iMe/feature/socialMedias/SocialUseCase;)V
    .locals 1

    const-string v0, "socialNetwork"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialUseCase"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->telegramProfileId:J

    .line 33
    iput-object p3, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 34
    iput-object p4, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 35
    iput-object p5, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 36
    iput-object p6, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->items:Ljava/util/List;

    .line 41
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->likeToggleSubject:Lio/reactivex/subjects/PublishSubject;

    return-void
.end method

.method public static final synthetic access$getItems$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getTweets$p(Lcom/iMe/feature/twitter/TwitterPresenter;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/feature/twitter/TwitterPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/iMe/feature/twitter/TwitterPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setLastItemId$p(Lcom/iMe/feature/twitter/TwitterPresenter;Ljava/lang/Long;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic access$toggleItemLikeStatus(Lcom/iMe/feature/twitter/TwitterPresenter;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/iMe/feature/twitter/TwitterPresenter;->toggleItemLikeStatus(Lcom/iMe/model/twitter/TweetItem;)V

    return-void
.end method

.method public static synthetic loadTweets$default(Lcom/iMe/feature/twitter/TwitterPresenter;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 56
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/iMe/feature/twitter/TwitterPresenter;->loadTweets(ZZ)V

    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/TwitterView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/feature/twitter/TwitterView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method private final subscribeToLikeToggles()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->likeToggleSubject:Lio/reactivex/subjects/PublishSubject;

    .line 156
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "likeToggleSubject\n      \u2026  .distinctUntilChanged()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/iMe/feature/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/twitter/TwitterPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/feature/twitter/TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 162
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final toggleItemLikeStatus(Lcom/iMe/model/twitter/TweetItem;)V
    .locals 23

    move-object/from16 v0, p0

    .line 166
    iget-object v1, v0, Lcom/iMe/feature/twitter/TwitterPresenter;->tweets:Ljava/util/List;

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
    check-cast v4, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    .line 166
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getId()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TweetItem;->getId()J

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

    .line 169
    :cond_3
    iget-object v1, v0, Lcom/iMe/feature/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v2

    if-ne v1, v2, :cond_4

    return-void

    .line 171
    :cond_4
    iget-object v1, v0, Lcom/iMe/feature/twitter/TwitterPresenter;->items:Ljava/util/List;

    move-object/from16 v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v6, :cond_5

    return-void

    .line 174
    :cond_5
    iget-object v2, v0, Lcom/iMe/feature/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 176
    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->getLikesCount()I

    move-result v4

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked()Z

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

    .line 177
    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->isLiked()Z

    move-result v4

    xor-int/lit8 v19, v4, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x5ef

    const/16 v22, 0x0

    .line 175
    invoke-static/range {v7 .. v22}, Lcom/iMe/storage/domain/model/twitter/TweetInfo;->copy$default(Lcom/iMe/storage/domain/model/twitter/TweetInfo;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;JZLjava/util/List;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    move-result-object v4

    .line 174
    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, v0, Lcom/iMe/feature/twitter/TwitterPresenter;->items:Ljava/util/List;

    iget-object v4, v0, Lcom/iMe/feature/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/twitter/TweetInfo;

    invoke-static {v3}, Lcom/iMe/mapper/twitter/TweetInfoUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/twitter/TweetInfo;)Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/feature/twitter/TwitterView;

    iget-object v2, v0, Lcom/iMe/feature/twitter/TwitterPresenter;->items:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/iMe/feature/twitter/TwitterView;->renderItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final loadTweets(ZZ)V
    .locals 9

    .line 57
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialElementId()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->toLongOrDefault(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 59
    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/TwitterView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 63
    :cond_1
    iget-object v3, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 65
    iget-wide v4, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->telegramProfileId:J

    .line 67
    iget-object v8, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    .line 64
    invoke-virtual/range {v3 .. v8}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->getUserTweets(JJLjava/lang/Long;)Lio/reactivex/Observable;

    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/twitter/TwitterPresenter;ZZ)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Lcom/iMe/feature/twitter/TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v1, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1, v2, v0, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 45
    invoke-direct {p0}, Lcom/iMe/feature/twitter/TwitterPresenter;->subscribeToLikeToggles()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 46
    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/feature/twitter/TwitterPresenter;->loadTweets$default(Lcom/iMe/feature/twitter/TwitterPresenter;ZZILjava/lang/Object;)V

    return-void
.end method

.method public final onOpenInTwitterClick()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/TwitterView;

    sget-object v1, Lcom/iMe/storage/common/AppConfiguration$Twitter;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Twitter;

    iget-object v2, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v2}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/common/AppConfiguration$Twitter;->getUserUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/feature/twitter/TwitterView;->openBrowserUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final onResetConfirmClicked()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 148
    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v0, v1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->logout(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/feature/twitter/TwitterPresenter$onResetConfirmClicked$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/twitter/TwitterPresenter$onResetConfirmClicked$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/twitter/TwitterPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/feature/twitter/TwitterPresenter$onResetConfirmClicked$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/feature/twitter/TwitterPresenter$onResetConfirmClicked$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 152
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onResetMenuClicked()V
    .locals 6

    .line 132
    iget-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->social_reset_account_title:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v4}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 134
    sget v3, Lorg/telegram/messenger/R$string;->social_reset_account_message:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v4}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 133
    invoke-interface {v1, v3, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 140
    iget-object v3, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->social_reset_account_negative_button:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 141
    iget-object v4, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->social_reset_account_positive_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-direct {v2, v0, v1, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/TwitterView;

    invoke-interface {v0, v2}, Lcom/iMe/feature/twitter/TwitterView;->showResetTwitterDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method public final onShareClick(Lcom/iMe/model/twitter/TweetItem;)V
    .locals 5

    const-string v0, "tweetItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/TwitterView;

    .line 123
    sget-object v1, Lcom/iMe/storage/common/AppConfiguration$Twitter;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Twitter;

    .line 124
    iget-object v2, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->socialNetwork:Lcom/iMe/feature/socialMedias/SocialNetwork;

    invoke-virtual {v2}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialUserName()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {p1}, Lcom/iMe/model/twitter/TweetItem;->getId()J

    move-result-wide v3

    .line 123
    invoke-virtual {v1, v2, v3, v4}, Lcom/iMe/storage/common/AppConfiguration$Twitter;->getTweetUrl(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-interface {v0, p1}, Lcom/iMe/feature/twitter/TwitterView;->shareLink(Ljava/lang/String;)V

    return-void
.end method

.method public final reload()V
    .locals 3

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->lastItemId:Ljava/lang/Long;

    .line 51
    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->tweets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 52
    iget-object v1, p0, Lcom/iMe/feature/twitter/TwitterPresenter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 53
    invoke-static {p0, v1, v2, v2, v0}, Lcom/iMe/feature/twitter/TwitterPresenter;->loadTweets$default(Lcom/iMe/feature/twitter/TwitterPresenter;ZZILjava/lang/Object;)V

    return-void
.end method
