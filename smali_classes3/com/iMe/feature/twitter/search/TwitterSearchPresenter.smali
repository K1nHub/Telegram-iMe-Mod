.class public final Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TwitterSearchPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/feature/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterSearchPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterSearchPresenter.kt\ncom/iMe/feature/twitter/search/TwitterSearchPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 7 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,317:1\n63#2,12:318\n63#2,12:330\n63#2,12:342\n63#2,12:365\n800#3,11:354\n1603#3,9:384\n1855#3:393\n1856#3:395\n1612#3:396\n16#4,7:377\n1#5:394\n18#6:397\n18#7:398\n*S KotlinDebug\n*F\n+ 1 TwitterSearchPresenter.kt\ncom/iMe/feature/twitter/search/TwitterSearchPresenter\n*L\n74#1:318,12\n102#1:330,12\n141#1:342,12\n215#1:365,12\n158#1:354,11\n249#1:384,9\n249#1:393\n249#1:395\n249#1:396\n242#1:377,7\n249#1:394\n265#1:397\n265#1:398\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private final profileId:J

.field private query:Ljava/lang/String;

.field private final querySubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramApi:Lcom/iMe/manager/TelegramApi;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

.field private final twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;


# direct methods
.method public static synthetic $r8$lambda$ICOp_A34iGYf-F8EHgx-OZK0RXI(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PXu4SVS19A3Zxb4i1xPB0t2Tkq4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$R-IU20J6nO-HUudic5AtoyuP6ok(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cOpnAx0XdRtrfYvQcfsPXxWZT9M(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->flatMapSearchResult$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;)V
    .locals 1

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "cryptoRecipientManager"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "resourceManager"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "schedulersProvider"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "telegramApi"

    invoke-static {p6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "telegramControllersGateway"

    invoke-static {p7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "twitterInteractor"

    invoke-static {p8, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "twitterPreferenceHelper"

    invoke-static {p9, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 41
    iput-object p3, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    .line 42
    iput-object p4, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 43
    iput-object p5, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 44
    iput-object p6, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 45
    iput-object p7, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 46
    iput-object p8, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 47
    iput-object p9, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    .line 52
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    const-string p3, "create()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    .line 53
    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->profileId:J

    const/4 p1, 0x1

    .line 54
    iput p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->page:I

    const-string p1, ""

    .line 55
    iput-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->query:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$flatMapSearchResult(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->flatMapSearchResult(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItems$p(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSearchObservable(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;)Lio/reactivex/Observable;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->getSearchObservable()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onSearchSuccess(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Ljava/util/List;ZZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->onSearchSuccess(Ljava/util/List;ZZ)V

    return-void
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setPage$p(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->page:I

    return-void
.end method

.method public static final synthetic access$setQuery$p(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->query:Ljava/lang/String;

    return-void
.end method

.method private final flatMapSearchResult(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;",
            ">;>;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    .line 248
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 1603
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1611
    check-cast v2, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;

    .line 249
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;->getTelegramUserId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1611
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    .line 252
    iget-wide v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->profileId:J

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getDataByTelegramId(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 255
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;

    .line 257
    new-instance v0, Lcom/iMe/model/twitter/TwitterInviteItem;

    .line 258
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;->getTwitterUserId()J

    move-result-wide v1

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;->getTwitterUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-direct {v0, v1, v2, p1}, Lcom/iMe/model/twitter/TwitterInviteItem;-><init>(JLjava/lang/String;)V

    .line 256
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 264
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 18
    :goto_1
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 267
    :cond_4
    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 268
    invoke-interface {v1, v0}, Lcom/iMe/manager/TelegramApi;->getUsersByIds(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;

    invoke-direct {v1, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "twitterProfiles = search\u2026              }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p1
.end method

.method private static final flatMapSearchResult$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final getSearchObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 239
    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->query:Ljava/lang/String;

    .line 240
    iget v2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->page:I

    .line 238
    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->searchUsersByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$getSearchObservable$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$getSearchObservable$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterInteractor\n      \u2026artWith(Result.loading())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final onSearchSuccess(Ljava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;ZZ)V"
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 292
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-direct {p0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    .line 294
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    .line 295
    iput v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->page:I

    goto :goto_0

    .line 297
    :cond_1
    iget p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->page:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->page:I

    if-eqz p3, :cond_2

    .line 299
    iget-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 301
    :cond_2
    iget-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    iget-object p2, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/iMe/feature/twitter/search/TwitterSearchView;->renderItems(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 3

    .line 307
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/twitter/search/TwitterSearchView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/feature/twitter/search/TwitterSearchView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method private final subscribeToQueryChanges()V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    .line 185
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$1;->INSTANCE:Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$1;

    new-instance v2, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;

    invoke-direct {v1, p0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;-><init>(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 207
    new-instance v1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;

    invoke-direct {v1, p0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;-><init>(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun subscribeToQ\u2026     .autoDispose()\n    }"

    .line 207
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 233
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToQueryChanges$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final subscribeToQueryChanges$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToQueryChanges$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->onDetachViewState()V

    .line 176
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->attachViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;)V

    .line 170
    invoke-direct {p0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges()V

    .line 171
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;

    invoke-direct {p0, v0}, Lcom/iMe/feature/twitter/search/TwitterSearchPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method
