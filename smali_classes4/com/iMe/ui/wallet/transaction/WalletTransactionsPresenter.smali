.class public final Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletTransactionsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletTransactionsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletTransactionsPresenter.kt\ncom/iMe/ui/wallet/transaction/WalletTransactionsPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,295:1\n39#2,8:296\n39#2,8:307\n16#3,3:304\n766#4:315\n857#4,2:316\n1477#4:318\n1502#4,3:319\n1505#4,3:329\n1855#4,2:333\n1477#4:336\n1502#4,3:337\n1505#4,3:347\n1855#4,2:351\n361#5,7:322\n361#5,7:340\n215#6:332\n216#6:335\n215#6:350\n216#6:353\n*S KotlinDebug\n*F\n+ 1 WalletTransactionsPresenter.kt\ncom/iMe/ui/wallet/transaction/WalletTransactionsPresenter\n*L\n201#1:296,8\n234#1:307,8\n233#1:304,3\n253#1:315\n253#1:316,2\n264#1:318\n264#1:319,3\n264#1:329,3\n267#1:333,2\n282#1:336\n282#1:337,3\n282#1:347,3\n285#1:351,2\n264#1:322,7\n282#1:340,7\n265#1:332\n265#1:335\n283#1:350\n283#1:353\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

.field private selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

.field private final stakingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;"
        }
    .end annotation
.end field

.field private stakingOperationsCursor:Ljava/lang/String;

.field private final tokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

.field private final transactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$3eZUHx_32ob1R4p1ioXUEgPqOcc(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal$lambda$0(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tokenCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stakingInteractor"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 38
    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->tokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    .line 39
    iput-object p3, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    .line 40
    iput-object p4, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 41
    iput-object p5, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 42
    iput-object p6, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 43
    iput-object p7, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 44
    iput-object p8, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 45
    iput-object p9, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 46
    iput-object p10, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 50
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    .line 53
    instance-of p2, p3, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->isEVM()Z

    move-result p2

    if-nez p2, :cond_0

    .line 54
    sget-object p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    .line 53
    :goto_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static final synthetic access$filterTransactionsByTypeIfNeeded(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->filterTransactionsByTypeIfNeeded(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetworkType$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object p0
.end method

.method public static final synthetic access$mapStakingOperationsToGroups(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->mapStakingOperationsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$mapTransactionsToGroups(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onError(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->onError(Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V

    return-void
.end method

.method public static final synthetic access$onLoading(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->onLoading(Z)V

    return-void
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setSelectedNetworkType$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method public static final synthetic access$setStakingOperationsCursor$p(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    return-void
.end method

.method private final filterTransactionsByTypeIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    instance-of v0, v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;

    if-eqz v0, :cond_2

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 253
    iget-object v3, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    check-cast v3, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;

    invoke-virtual {v3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$TokenDetailsTab;->getTransactionsGroup()Lcom/iMe/model/wallet/details/TransactionsGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iMe/model/wallet/details/TransactionsGroup;->checkTransaction(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 857
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method private final listenEvents()V
    .locals 5

    .line 232
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 248
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 72
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load(ZZLjava/lang/String;)V

    return-void
.end method

.method private final loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "TT;>;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-virtual {p3}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p3

    .line 199
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    .line 200
    new-instance v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V

    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object p3

    const-string v0, "observable\n             \u2026e.showRefreshing(false) }"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p4, p2, p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p2, v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p3, p1, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 209
    invoke-static {p0, p1, p2, p3, p2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadInternal$lambda$0(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final loadStakingOperations(ZZ)V
    .locals 9

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 150
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreComplete()V

    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    .line 158
    instance-of v1, v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    if-eqz v1, :cond_2

    .line 159
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    .line 160
    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingDetailsItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 161
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;->getOperationsType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v4

    const/4 v5, 0x0

    .line 162
    iget-object v6, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 159
    invoke-static/range {v2 .. v8}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOperations$default(Lcom/iMe/i_staking/StakingInteractor;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_2
    instance-of v1, v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    if-eqz v1, :cond_3

    .line 165
    iget-object v2, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingInteractor:Lcom/iMe/i_staking/StakingInteractor;

    const/4 v3, 0x0

    .line 166
    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;->getOperationsType()Lcom/iMe/storage/domain/model/staking/StakingOperationType;

    move-result-object v4

    .line 167
    iget-object v5, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 168
    iget-object v6, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 165
    invoke-static/range {v2 .. v8}, Lcom/iMe/i_staking/StakingInteractor;->getStakingOperations$default(Lcom/iMe/i_staking/StakingInteractor;Ljava/lang/Long;Lcom/iMe/storage/domain/model/staking/StakingOperationType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 154
    :goto_1
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadStakingOperations$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;Z)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V

    :cond_3
    return-void
.end method

.method private final loadTransactions(ZLjava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 123
    iget-object v4, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->tokenCode:Lcom/iMe/storage/domain/model/wallet/token/TokenCode;

    const/4 v5, 0x0

    .line 124
    iget-object v6, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/16 v7, 0x8

    const/4 v8, 0x0

    move v2, p1

    move-object v3, p2

    .line 120
    invoke-static/range {v1 .. v8}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletTransactions$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/TokenCode;ILcom/iMe/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    .line 117
    new-instance v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$loadTransactions$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZ)V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final mapStakingOperationsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/staking/StakingOperation;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    instance-of v0, v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    .line 280
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    .line 281
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 1477
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1503
    move-object v4, v3

    check-cast v4, Lcom/iMe/storage/domain/model/staking/StakingOperation;

    .line 282
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/staking/StakingOperation;->getCreatedAt()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1504
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 1505
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 283
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 284
    new-instance v4, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-direct {v4, v3}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/storage/domain/model/staking/StakingOperation;

    .line 286
    invoke-static {v3, v0}, Lcom/iMe/mapper/staking/StackingOperationUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/staking/StakingOperation;Z)Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private final mapTransactionsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    .line 263
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1477
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1502
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1503
    move-object v3, v2

    check-cast v3, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 264
    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getCreatedAt()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Lcom/iMe/utils/extentions/common/StringExtKt;->formatISODate$default(Ljava/lang/String;Lcom/iMe/utils/formatter/DateFormatter$DateType;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1504
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 1505
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 266
    new-instance v3, Lcom/iMe/model/wallet/home/HeaderItem;

    invoke-direct {v3, v2}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    .line 268
    invoke-static {v2}, Lcom/iMe/mapper/transaction/TransactionUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;)Lcom/iMe/model/wallet/transaction/TransactionItem;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p1
.end method

.method private final onError(Lcom/iMe/storage/data/network/model/error/ErrorModel;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {p2}, Lcom/iMe/ui/base/mvp/LoadMoreView;->onLoadMoreError()V

    goto :goto_1

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object p2

    .line 223
    sget-object v0, Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;->NO_CONNECTION:Lcom/iMe/storage/data/network/handlers/impl/ApiErrorHandler$ErrorStatus;

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    goto :goto_0

    .line 224
    :cond_1
    sget-object p2, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    .line 221
    :goto_0
    invoke-direct {p0, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    .line 228
    :goto_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private final onLoading(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    goto :goto_0

    .line 214
    :cond_0
    sget-object p1, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    :goto_0
    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 3

    .line 145
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->renderItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final load(ZZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->transactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->stakingOperationsCursor:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0}, Lcom/iMe/ui/base/mvp/LoadMoreView;->resetLoadMore()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;->isStaking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadStakingOperations(ZZ)V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 82
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->loadTransactions(ZLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 8

    .line 106
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, p0

    .line 107
    invoke-static/range {v2 .. v7}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->load$default(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 108
    invoke-direct {p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->listenEvents()V

    return-void
.end method

.method public final onStakingOperationClick(Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    .line 95
    instance-of v2, v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingDetailsTab;->getStakingDetails()Lcom/iMe/model/staking/StakingDetailsItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/model/staking/StakingDetailsItem;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    goto :goto_0

    .line 96
    :cond_0
    instance-of v1, v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$StakingOperationsTab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 94
    :goto_0
    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->openStakingOperationDetails(Lcom/iMe/model/wallet/transaction/StakingOperationItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;)V

    :cond_1
    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->screenType:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType;

    sget-object v1, Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;->INSTANCE:Lcom/iMe/ui/wallet/transaction/WalletTransactionsFragment$ScreenType$Fullscreen;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$TransactionsScreen;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;->showChangeNetworkHint()V

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 62
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsView;

    .line 63
    iget-object v1, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->selectedNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 64
    sget-object v2, Lcom/iMe/storage/domain/model/crypto/NetworkType;->Companion:Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;

    iget-object v3, p0, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getCreatedWalletsBlockchains()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/domain/model/crypto/NetworkType$Companion;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter$startChooseNetworkDialog$1;-><init>(Lcom/iMe/ui/wallet/transaction/WalletTransactionsPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method