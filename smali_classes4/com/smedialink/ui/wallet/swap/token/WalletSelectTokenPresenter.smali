.class public final Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletSelectTokenPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSelectTokenPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,129:1\n817#2:130\n845#2,2:131\n1043#2:133\n1052#2:134\n39#3,6:135\n39#3,6:141\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter\n*L\n47#1:130\n47#1:131,2\n48#1:133\n49#1:134\n62#1:135,6\n97#1:141,6\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private final networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field private final onlyPositiveBalance:Z

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

.field private final supportedTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedTokensItemsMap$delegate:Lkotlin/Lazy;

.field private final type:Lcom/smedialink/model/wallet/select/SelectableType;

.field private final walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/wallet/select/SelectableType;Lcom/smedialink/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/smedialink/storage/domain/model/crypto/NetworkType;ZLcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/select/SelectableType;",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;",
            "Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;",
            "Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;",
            "Lcom/smedialink/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedTokens"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    .line 22
    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    .line 23
    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokens:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 25
    iput-boolean p5, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->onlyPositiveBalance:Z

    .line 26
    iput-object p6, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 27
    iput-object p7, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 28
    iput-object p8, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 29
    iput-object p9, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 33
    new-instance p1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokensItemsMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getOnlyPositiveBalance$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->onlyPositiveBalance:Z

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSupportedTokens$p(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokens:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSupportedTokensItemsMap(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/Map;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->getSupportedTokensItemsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$withExcludedSelectedToken(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->withExcludedSelectedToken(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getSupportedTokensItemsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/smedialink/model/wallet/select/SelectableTokenItem;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokensItemsMap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final loadBalances()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->type:Lcom/smedialink/model/wallet/select/SelectableType;

    sget-object v1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadBinanceBalances()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadInternalBalances()V

    :goto_0
    return-void
.end method

.method private final loadBinanceBalances()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->binanceInternalInteractor:Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 60
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)V

    new-instance v3, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 89
    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadInternalBalances()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->walletInteractor:Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    .line 94
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->networkType:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance(ZLcom/smedialink/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;)V

    new-instance v3, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 124
    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final withExcludedSelectedToken(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableTokenItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/select/SelectableTokenItem;",
            ">;"
        }
    .end annotation

    .line 817
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/model/wallet/select/SelectableTokenItem;

    .line 47
    invoke-virtual {v2}, Lcom/smedialink/model/wallet/select/SelectableTokenItem;->getToken()Lcom/smedialink/model/wallet/select/SelectableToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->selectedToken:Lcom/smedialink/model/wallet/select/SelectableToken;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/smedialink/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1043
    :cond_2
    new-instance p1, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 1052
    new-instance v0, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadBalances()V

    return-void
.end method
