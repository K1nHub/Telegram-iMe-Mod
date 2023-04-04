.class public final Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TwitterSearchPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/twitter/search/TwitterSearchView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterSearchPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterSearchPresenter.kt\ncom/iMe/ui/twitter/search/TwitterSearchPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 7 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,301:1\n39#2,8:302\n39#2,8:310\n39#2,8:318\n39#2,8:337\n800#3,11:326\n1603#3,9:346\n1855#3:355\n1856#3:357\n1612#3:358\n14#4:345\n1#5:356\n11#6:359\n18#7:360\n*S KotlinDebug\n*F\n+ 1 TwitterSearchPresenter.kt\ncom/iMe/ui/twitter/search/TwitterSearchPresenter\n*L\n74#1:302,8\n100#1:310,8\n138#1:318,8\n208#1:337,8\n153#1:326,11\n240#1:346,9\n240#1:355\n240#1:357\n240#1:358\n233#1:345\n240#1:356\n253#1:359\n253#1:360\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

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
.method public static synthetic $r8$lambda$Ro6OqiPEEHc3Q7OjC18wRO26yeE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges$lambda$6(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fRXmLYCQxXmjKYOKdfzoTmYpDyo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->flatMapSearchResult$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$icwnHjWUMZFRWrxoSQrXeovte6E(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jedM7Iyn7V4Z1OmKpFwr8_2N9fU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/manager/TelegramApi;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;)V
    .locals 1

    const-string v0, "telegramGateway"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoRecipientManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramApi"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterPreferenceHelper"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 41
    iput-object p3, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    .line 42
    iput-object p4, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 43
    iput-object p5, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 44
    iput-object p6, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 45
    iput-object p7, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 46
    iput-object p8, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 47
    iput-object p9, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    .line 52
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p2

    const-string p3, "create()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    .line 53
    invoke-interface {p1}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->profileId:J

    const/4 p1, 0x1

    .line 54
    iput p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    const-string p1, ""

    .line 55
    iput-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->query:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$flatMapSearchResult(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->flatMapSearchResult(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getBlockchainType$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)Lcom/iMe/storage/domain/model/crypto/BlockchainType;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    return-object p0
.end method

.method public static final synthetic access$getItems$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSearchObservable(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)Lio/reactivex/Observable;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->getSearchObservable()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onSearchSuccess(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;Ljava/util/List;ZZ)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->onSearchSuccess(Ljava/util/List;ZZ)V

    return-void
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setPage$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    return-void
.end method

.method public static final synthetic access$setQuery$p(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->query:Ljava/lang/String;

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

    .line 239
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

    .line 240
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;->getTelegramUserId()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1611
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    iget-wide v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->profileId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getDataByTelegramId(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 243
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;

    .line 245
    new-instance v0, Lcom/iMe/model/twitter/TwitterInviteItem;

    .line 246
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;->getTwitterUserId()J

    move-result-wide v1

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterUserInfo;->getTwitterUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-direct {v0, v1, v2, p1}, Lcom/iMe/model/twitter/TwitterInviteItem;-><init>(JLjava/lang/String;)V

    .line 244
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 252
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 11
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

    .line 255
    :cond_4
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->telegramApi:Lcom/iMe/manager/TelegramApi;

    .line 256
    invoke-interface {v1, v0}, Lcom/iMe/manager/TelegramApi;->getUsersByIds(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 258
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;

    invoke-direct {v1, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda1;

    invoke-direct {p1, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

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

    .line 258
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

    .line 228
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 230
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->query:Ljava/lang/String;

    .line 231
    iget v2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->searchUsersByUsername(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$getSearchObservable$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$getSearchObservable$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
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

    .line 274
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 276
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-direct {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    .line 279
    iput v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    goto :goto_0

    .line 281
    :cond_1
    iget p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    if-eqz p3, :cond_2

    .line 283
    iget-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 285
    :cond_2
    iget-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    iget-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/iMe/ui/twitter/search/TwitterSearchView;->renderItems(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic searchByQuery$default(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 65
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->searchByQuery(Z)V

    return-void
.end method

.method private final subscribeToQueryChanges()V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    .line 180
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$1;->INSTANCE:Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$1;

    new-instance v2, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 186
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$2;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$3;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun subscribeToQ\u2026     .autoDispose()\n    }"

    .line 200
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 224
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToQueryChanges$lambda$4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final subscribeToQueryChanges$lambda$5(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
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

    .line 200
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V
    .locals 1

    const-string v0, "recipient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->loadAddressInfoById(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {v0}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->onDetachViewState()V

    .line 171
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->cryptoRecipientManager:Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/recipient/CryptoRecipientManager;->attachViewState(Lcom/iMe/manager/crypto/recipient/CryptoRecipientView;)V

    .line 165
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->subscribeToQueryChanges()V

    .line 166
    sget-object v0, Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$TwitterSearch;

    invoke-direct {p0, v0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public final onInviteClick(Lcom/iMe/model/twitter/TwitterInviteItem;)V
    .locals 8

    const-string v0, "twitterInviteItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    .line 117
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 118
    iget-object v2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->twitter_search_invite_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 120
    sget v4, Lorg/telegram/messenger/R$string;->twitter_search_invite_confirmation_description:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 121
    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterInviteItem;->getNickname()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 119
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 123
    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v5, "Cancel"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 124
    sget v5, Lorg/telegram/messenger/R$string;->Send:I

    const-string v6, "Send"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterInviteItem;->getId()J

    move-result-wide v2

    .line 116
    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/twitter/search/TwitterSearchView;->showInviteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;J)V

    return-void
.end method

.method public final onQueryUpdate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onUserClick(Lcom/iMe/model/twitter/TwitterUserItem;)V
    .locals 5

    const-string v0, "twitterUserItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 97
    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterUserItem;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->getUserByUsername(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
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

    .line 44
    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p1, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/model/twitter/TwitterUserItem;Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v4}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$onUserClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final processSelectedRecipient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/iMe/model/twitter/TwitterUserItem;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 153
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/model/twitter/TwitterUserItem;

    .line 154
    invoke-virtual {v2}, Lcom/iMe/model/twitter/TwitterUserItem;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {p1}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 153
    :goto_3
    check-cast v1, Lcom/iMe/model/twitter/TwitterUserItem;

    if-nez v1, :cond_6

    return-void

    .line 156
    :cond_6
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    invoke-interface {p1, v1, p2}, Lcom/iMe/ui/twitter/search/TwitterSearchView;->onUserSelected(Lcom/iMe/model/twitter/TwitterUserItem;Ljava/lang/String;)V

    return-void
.end method

.method public final reload()V
    .locals 2

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    .line 61
    iget-object v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->searchByQuery(Z)V

    return-void
.end method

.method public final searchByQuery(Z)V
    .locals 5

    xor-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 68
    iget v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->page:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->getSearchObservable()Lio/reactivex/Observable;

    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v3, "getSearchObservable()\n  \u2026(schedulersProvider.ui())"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v3, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;ZZ)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$searchByQuery$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, p1, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {p0, p1, v3, v2, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void

    .line 69
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/twitter/search/TwitterSearchView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void
.end method

.method public final sendInvite(J)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 133
    iget-wide v1, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->profileId:J

    .line 132
    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->sendInvite(JJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "twitterInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$sendInvite$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {p2, p0}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$sendInvite$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/twitter/search/TwitterSearchPresenter;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$sendInvite$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v2}, Lcom/iMe/ui/twitter/search/TwitterSearchPresenter$sendInvite$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 149
    invoke-static {p0, p1, v2, p2, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
