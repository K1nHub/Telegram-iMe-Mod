.class public final Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TokenManagementPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenManagementPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,322:1\n42#2,12:323\n42#2,12:335\n42#2,12:347\n42#2,12:360\n14#3:359\n*S KotlinDebug\n*F\n+ 1 TokenManagementPresenter.kt\ncom/iMe/ui/wallet/crypto/token/TokenManagementPresenter\n*L\n69#1:323,12\n132#1:335,12\n148#1:347,12\n211#1:360,12\n197#1:359\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private address:Ljava/lang/String;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private isCustomToken:Z

.field private isSearchErrorObtained:Z

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

.field private selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

.field private tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private tokenListsData:Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;

.field private final validationErrorText$delegate:Lkotlin/Lazy;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$t3wxNzkqNr9p2358zv_kpAUq8ZU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->loadTokenInfo$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 34
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 35
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 36
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 37
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 38
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 39
    iput-object p7, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 40
    iput-object p8, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 45
    new-instance p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$validationErrorText$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$validationErrorText$2;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->validationErrorText$delegate:Lkotlin/Lazy;

    const-string p1, ""

    .line 49
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->address:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->getInitialNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSelectedNetwork$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-object p0
.end method

.method public static final synthetic access$getToken(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/model/wallet/token/Token;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getValidationErrorText(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->getValidationErrorText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletInteractor$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$isSearchErrorObtained$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isSearchErrorObtained:Z

    return p0
.end method

.method public static final synthetic access$onTokenStatusChanged(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->onTokenStatusChanged(I)V

    return-void
.end method

.method public static final synthetic access$resetImportScreen(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resetImportScreen()V

    return-void
.end method

.method public static final synthetic access$setCustomToken$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isCustomToken:Z

    return-void
.end method

.method public static final synthetic access$setSearchErrorObtained$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isSearchErrorObtained:Z

    return-void
.end method

.method public static final synthetic access$setSelectedNetwork$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    return-void
.end method

.method public static final synthetic access$setTokenListsData$p(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenListsData:Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;

    return-void
.end method

.method public static final synthetic access$setupActionButtonState(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->setupActionButtonState(Z)V

    return-void
.end method

.method public static final synthetic access$setupTokenData(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->setupTokenData(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-void
.end method

.method private final getInitialNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 275
    instance-of v1, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_0
    instance-of v1, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v1, :cond_1

    .line 277
    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getToken()Lcom/iMe/storage/domain/model/wallet/token/Token;
    .locals 3

    .line 44
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/Token;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getValidationErrorText()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->validationErrorText$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final loadTokenInfo()V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 187
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->address:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun loadTokenInf\u2026     .autoDispose()\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    new-instance v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 189
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 236
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadTokenInfo$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final onTokenStatusChanged(I)V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    new-instance v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4, v2}, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$TokensSettingsChanged;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 283
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v1, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    return-void
.end method

.method private final resetImportScreen()V
    .locals 2

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isCustomToken:Z

    .line 241
    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isSearchErrorObtained:Z

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 243
    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenListsData:Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;

    .line 245
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    iget-boolean v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isSearchErrorObtained:Z

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->updateErrorTextVisibility(Z)V

    .line 246
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->resetImportScreen()V

    .line 247
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->address:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->setupActionButtonState(Z)V

    return-void
.end method

.method private final setupActionButtonState(Z)V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 252
    iget-boolean v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isCustomToken:Z

    .line 251
    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setupActionButtonState(ZZ)V

    return-void
.end method

.method private final setupTokenData(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 9

    .line 258
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 259
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->address:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 262
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v4

    .line 265
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getName()Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getDecimals()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 267
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v7

    .line 268
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenListsData:Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;->getVerifiedCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v8, p1

    .line 261
    invoke-interface/range {v1 .. v8}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->setupTokenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Ljava/lang/Integer;)V

    return-void
.end method

.method private final showDeleteConfirmationDialog()V
    .locals 7

    .line 310
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 311
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 312
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_delete_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 313
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_tokens_management_delete_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 314
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 315
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->favorite_folder_delete:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 311
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showDeleteConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showEnableConfirmationDialog()V
    .locals 7

    .line 288
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 289
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 290
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_enable_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_tokens_management_enable_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->emoji_premium_title_on_alert:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showEnableConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showImportConfirmationDialog()V
    .locals 7

    .line 299
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 300
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 301
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_tokens_management_import_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 302
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_tokens_management_import_confirmation_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 304
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->wallet_tokens_management_import_confirmation_import:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showEnableConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method


# virtual methods
.method public final copyAddressToClipboard()V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 113
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 114
    instance-of v2, v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_1

    .line 115
    :cond_1
    instance-of v2, v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->copyAddressToClipboard(Ljava/lang/String;)V

    return-void

    .line 115
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final deleteToken()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 145
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->detachCustomToken(Lcom/iMe/storage/domain/model/wallet/token/Token;)Lio/reactivex/Observable;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$deleteToken$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$deleteToken$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$deleteToken$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$deleteToken$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 156
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final enableToken()V
    .locals 5

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 127
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->getToken()Lcom/iMe/storage/domain/model/wallet/token/Token;

    move-result-object v1

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->setTokenVisibility(Lcom/iMe/storage/domain/model/wallet/token/Token;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v3, "viewState"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$enableToken$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$enableToken$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$enableToken$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$enableToken$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v4, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 140
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onActionButtonClicked()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 81
    instance-of v1, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    if-eqz v1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->loadTokenInfo()V

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isCustomToken:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->showImportConfirmationDialog()V

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->showEnableConfirmationDialog()V

    goto :goto_0

    .line 89
    :cond_2
    instance-of v0, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v0, :cond_3

    .line 90
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->showDeleteConfirmationDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onAddressScanned(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 66
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$onAddressScanned$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$onAddressScanned$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$onAddressScanned$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$onAddressScanned$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 76
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onAddressUpdated(Ljava/lang/String;)V
    .locals 1

    const-string v0, "addressQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->address:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->address:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->resetImportScreen()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 165
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    .line 166
    instance-of v1, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$Import;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->setupActionButtonState(Z)V

    goto :goto_0

    .line 170
    :cond_0
    instance-of v1, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v1, :cond_2

    .line 171
    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->isCustomToken()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->isCustomToken()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->isCustomToken:Z

    const/4 v0, 0x1

    .line 173
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->setupActionButtonState(Z)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;->getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->setupTokenData(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    .line 176
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->loadTokenInfo()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onVerificationClicked()V
    .locals 2

    .line 96
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenListsData:Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenListsData;->getTokenLists()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->showTokensListsDialog(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final openTokenScannerUrl()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->tokenDetailed:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getContractUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;->openBrowserUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->screenType:Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType;

    instance-of v0, v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementFragment$ScreenType$View;

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementView;

    .line 102
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->selectedNetwork:Lcom/iMe/storage/domain/model/crypto/Network;

    .line 103
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v3}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLoggedIndWalletsBlockchains()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworksByBlockchains(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 101
    new-instance v3, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter$startChooseNetworkDialog$1;-><init>(Lcom/iMe/ui/wallet/crypto/token/TokenManagementPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/storage/domain/model/crypto/Network;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method