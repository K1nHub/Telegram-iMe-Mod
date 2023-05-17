.class public final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletSelectTokenPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSelectTokenPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,131:1\n819#2:132\n847#2,2:133\n1045#2:135\n1054#2:136\n39#3,8:137\n39#3,8:145\n*S KotlinDebug\n*F\n+ 1 WalletSelectTokenPresenter.kt\ncom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter\n*L\n47#1:132\n47#1:133,2\n48#1:135\n49#1:136\n62#1:137,8\n98#1:145,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final onlyPositiveBalance:Z

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

.field private final supportedTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedTokensItemsMap$delegate:Lkotlin/Lazy;

.field private final type:Lcom/iMe/model/wallet/select/SelectableType;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/select/SelectableType;Lcom/iMe/model/wallet/select/SelectableToken;Ljava/util/List;Lcom/iMe/storage/domain/model/crypto/NetworkType;ZLcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/select/SelectableType;",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/model/wallet/select/SelectableToken;",
            ">;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            "Z",
            "Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;",
            "Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;",
            "Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "supportedTokens"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->type:Lcom/iMe/model/wallet/select/SelectableType;

    .line 22
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    .line 23
    iput-object p3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokens:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 25
    iput-boolean p5, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->onlyPositiveBalance:Z

    .line 26
    iput-object p6, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 27
    iput-object p7, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 28
    iput-object p8, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 29
    iput-object p9, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 33
    new-instance p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$supportedTokensItemsMap$2;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokensItemsMap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getOnlyPositiveBalance$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->onlyPositiveBalance:Z

    return p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSupportedTokens$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokens:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSupportedTokensItemsMap(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Ljava/util/Map;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->getSupportedTokensItemsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$withExcludedSelectedToken(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->withExcludedSelectedToken(Ljava/util/List;)Ljava/util/List;

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
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->supportedTokensItemsMap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private final loadBalances()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->type:Lcom/iMe/model/wallet/select/SelectableType;

    sget-object v1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

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
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadBinanceBalances()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadInternalBalances()V

    :goto_0
    return-void
.end method

.method private final loadBinanceBalances()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 60
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadBinanceBalances$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 90
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadInternalBalances()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 95
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance(ZLcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$loadInternalBalances$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 126
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final withExcludedSelectedToken(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/select/SelectableTokenItem;",
            ">;"
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 847
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

    check-cast v2, Lcom/iMe/model/wallet/select/SelectableTokenItem;

    .line 47
    invoke-virtual {v2}, Lcom/iMe/model/wallet/select/SelectableTokenItem;->getToken()Lcom/iMe/model/wallet/select/SelectableToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->selectedToken:Lcom/iMe/model/wallet/select/SelectableToken;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/iMe/model/wallet/select/SelectableToken;->getId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1045
    :cond_2
    new-instance p1, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedBy$1;

    invoke-direct {p1}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 1054
    new-instance v0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$withExcludedSelectedToken$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->loadBalances()V

    return-void
.end method
