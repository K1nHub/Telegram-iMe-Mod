.class public final Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletHomeBinancePayPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletHomeBinancePayPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n*L\n1#1,430:1\n63#2,12:431\n63#2,12:443\n63#2,12:455\n63#2,12:514\n63#2,12:526\n26#3:467\n766#4:468\n857#4,2:469\n1194#4,2:471\n1222#4,4:473\n766#4:477\n857#4,2:478\n1603#4,9:480\n1855#4:489\n1856#4:491\n1612#4:492\n766#4:493\n857#4,2:494\n1045#4:496\n1054#4:497\n1549#4:501\n1620#4,3:502\n1#5:490\n1#5:500\n37#6,2:498\n37#6,2:505\n11335#7:507\n11670#7,3:508\n16#8,3:511\n*S KotlinDebug\n*F\n+ 1 WalletHomeBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter\n*L\n112#1:431,12\n199#1:443,12\n213#1:455,12\n374#1:514,12\n416#1:526,12\n258#1:467\n262#1:468\n262#1:469,2\n263#1:471,2\n263#1:473,4\n267#1:477\n267#1:478,2\n268#1:480,9\n268#1:489\n268#1:491\n268#1:492\n272#1:493\n272#1:494,2\n277#1:496\n278#1:497\n302#1:501\n302#1:502,3\n268#1:490\n295#1:498,2\n307#1:505,2\n368#1:507\n368#1:508,3\n373#1:511,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private balances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final binanceAPI:Lcom/binance/android/opensdk/api/BinanceAPI;

.field private final binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

.field private final binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

.field private final binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public static synthetic $r8$lambda$9oksIeRl8hcLMyzYYqkmo--4-4o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserBalances$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZaYcHbo29Os5ox34VUlYaBOkIw(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserBalances$lambda$1(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    return-void
.end method

.method public constructor <init>(Lcom/binance/android/opensdk/api/BinanceAPI;Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "binanceAPI"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binancePayProcessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rxEventBus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binanceInternalInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "binancePayManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceAPI:Lcom/binance/android/opensdk/api/BinanceAPI;

    .line 56
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    .line 57
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 58
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 59
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 60
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 61
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    .line 62
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 63
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 67
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAuthTokensByCode(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getAuthTokensByCode(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$loginToBinancePay(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->loginToBinancePay()V

    return-void
.end method

.method public static final synthetic access$logout(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->logout()V

    return-void
.end method

.method public static final synthetic access$openConvertScreen(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->openConvertScreen()V

    return-void
.end method

.method public static final synthetic access$openReplenishScreen(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->openReplenishScreen()V

    return-void
.end method

.method public static final synthetic access$resolveActions(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)Ljava/util/List;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveActions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getAuthTokensByCode(Ljava/lang/String;)V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 196
    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->CODE:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-virtual {v0, v1, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getAuthTokens(Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string/jumbo v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 199
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 206
    invoke-static {p0, p1, v3, v0, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getBinanceUserBalances$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getBinanceUserBalances$lambda$1(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final getBinanceUserInfo(Z)V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 211
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserInfo(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 212
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 227
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic getBinanceUserInfo$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 209
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserInfo(Z)V

    return-void
.end method

.method private final getLogOutConfirmDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 404
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 405
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_logout_confirm_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_logout_confirm_dialog_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 407
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v5, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLoginGuideDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 230
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 231
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login_positive_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final hideBanners()V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBannersVisible(Z)V

    .line 191
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$InterfaceSettingsChanged;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method private final initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 6

    .line 368
    sget-object v0, Lcom/iMe/model/wallet/home/BannerSlide;->Companion:Lcom/iMe/model/wallet/home/BannerSlide$Companion;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/BannerSlide$Companion;->getBinancePayBanners()[Lcom/iMe/model/wallet/home/BannerSlide;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 368
    new-instance v5, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-direct {v5, v4}, Lcom/iMe/model/wallet/home/SlideItem;-><init>(Lcom/iMe/model/wallet/home/BannerSlide;)V

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 367
    new-instance v1, Lcom/iMe/model/wallet/home/BannerItem;

    invoke-direct {v1, v0}, Lcom/iMe/model/wallet/home/BannerItem;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private final listenEvents()V
    .locals 5

    .line 372
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

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

    const-string/jumbo v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 401
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loginToBinancePay()V
    .locals 4

    .line 173
    new-instance v0, Lcom/binance/android/opensdk/api/OAuthParams;

    .line 174
    sget-object v1, Lcom/iMe/storage/common/AppConfiguration$Binance;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Binance;

    invoke-virtual {v1}, Lcom/iMe/storage/common/AppConfiguration$Binance;->getAUTH_REDIRECT_URL()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->randomString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user:pay,user:email,user:address,user:status,asset:ocbs,asset:balance"

    .line 173
    invoke-direct {v0, v1, v3, v2}, Lcom/binance/android/opensdk/api/OAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceAPI:Lcom/binance/android/opensdk/api/BinanceAPI;

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$loginToBinancePay$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$loginToBinancePay$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    invoke-interface {v1, v0, v2}, Lcom/binance/android/opensdk/api/BinanceAPI;->authorize(Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/BinanceListener;)V

    return-void
.end method

.method private final logout()V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 413
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->logout(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 416
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 427
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final openConvertScreen()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->isVerified()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 362
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showRequiredVerifyDialog()V

    goto :goto_1

    .line 363
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->openConvertScreen()V

    :goto_1
    return-void
.end method

.method private final openReplenishScreen()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showRequiredWalletCreatedDialog()V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceUserInfo()Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;->getInfo()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;->isVerified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showRequiredVerifyDialog()V

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->openReplenishScreen(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final renderScreenItems(Z)V
    .locals 6

    .line 240
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    .line 242
    new-instance v1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBannersVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 243
    new-instance v2, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    .line 244
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_account_header:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v4

    invoke-static {v4}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v4

    const/4 v5, 0x0

    .line 243
    invoke-direct {v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;-><init>(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/NetworkItem;Z)V

    .line 242
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 248
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveUserState()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v2

    .line 242
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 249
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    invoke-direct {p0, p1, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveBalancesState(ZLjava/util/List;)[Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object p1

    .line 242
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 241
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 250
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 240
    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->render(Ljava/util/List;)V

    return-void
.end method

.method static synthetic renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems(Z)V

    return-void
.end method

.method private final resolveActions()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 334
    new-instance v9, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 335
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_pay_qr_28:I

    .line 336
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_pay:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 333
    new-instance v6, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$1;

    invoke-direct {v6, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    .line 334
    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    .line 338
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 339
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 340
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 333
    new-instance v14, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$2;

    invoke-direct {v14, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    const/4 v13, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v10, v2

    .line 338
    invoke-direct/range {v10 .. v16}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 342
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 343
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_27:I

    .line 344
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_convert:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 333
    new-instance v8, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$3;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$3;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v2

    .line 342
    invoke-direct/range {v4 .. v10}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 346
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 347
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_transactions_28:I

    .line 348
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_history:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 333
    new-instance v8, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$4;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$4;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    move-object v4, v2

    .line 346
    invoke-direct/range {v4 .. v10}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 333
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private final resolveBalancesState(ZLjava/util/List;)[Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;)[",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    return-object p1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceTokensSettings()Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 262
    iget-object v9, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v9}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceOnlyPositiveTokens()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v8

    cmpl-double v5, v8, v5

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move v7, v1

    :cond_3
    :goto_1
    if-eqz v7, :cond_1

    .line 857
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/16 v3, 0xa

    .line 1194
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v8, 0x10

    invoke-static {v4, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 1195
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1222
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1223
    move-object v9, v4

    check-cast v9, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 263
    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAssetCode()Ljava/lang/String;

    move-result-object v9

    .line 1223
    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 265
    :cond_5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v7

    if-eqz v2, :cond_9

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;

    .line 267
    invoke-virtual {v9}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 857
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1603
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1611
    check-cast v4, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;

    .line 268
    invoke-virtual {v4}, Lcom/iMe/storage/data/locale/prefs/model/TokenDisplaySettings$Binance;->getTokenTicker()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    if-eqz v4, :cond_8

    .line 1611
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    move-object v0, p2

    .line 271
    :cond_a
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBinanceTokensPositiveBalances()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 272
    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getTotal()D

    move-result-wide v8

    cmpl-double v8, v8, v5

    if-lez v8, :cond_c

    move v8, v7

    goto :goto_6

    :cond_c
    move v8, v1

    :goto_6
    if-eqz v8, :cond_b

    .line 857
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    move-object v0, v2

    .line 276
    :cond_e
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v2

    sget-object v4, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x2

    if-eq v2, v7, :cond_11

    if-eq v2, v4, :cond_10

    const/4 v8, 0x3

    if-ne v2, v8, :cond_f

    goto :goto_7

    .line 279
    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1054
    :cond_10
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 1045
    :cond_11
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 282
    :goto_7
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v2

    .line 283
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_14

    if-eqz p1, :cond_12

    .line 285
    sget-object p1, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    goto :goto_8

    .line 286
    :cond_12
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    :goto_8
    new-array v3, v4, [Lcom/iMe/model/common/NoChildNode;

    .line 288
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v7

    if-eqz p2, :cond_13

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 289
    new-instance p2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;-><init>(FZ)V

    goto :goto_9

    :cond_13
    const/4 p2, 0x0

    :goto_9
    aput-object p2, v3, v1

    .line 294
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {p2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    aput-object p2, v3, v7

    .line 287
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-array p2, v1, [Lcom/iMe/model/common/NoChildNode;

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/iMe/model/common/NoChildNode;

    goto :goto_c

    .line 298
    :cond_14
    new-instance p1, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p1, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 299
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getFiatValuation()D

    move-result-wide v7

    add-double/2addr v5, v7

    goto :goto_a

    :cond_15
    double-to-float p2, v5

    .line 298
    new-instance v5, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    invoke-direct {v5, p2, v2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;-><init>(FZ)V

    invoke-virtual {p1, v5}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 1549
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 303
    new-instance v5, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    invoke-direct {v5, v3, v2}, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Z)V

    .line 1621
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    new-array v0, v1, [Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    .line 38
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 298
    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p2

    new-array p2, p2, [Lcom/iMe/model/common/NoChildNode;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/iMe/model/common/NoChildNode;

    .line 312
    :goto_c
    new-instance p2, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p2, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    new-instance v0, Lcom/iMe/model/wallet/home/HeaderItem;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_balances_header:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/model/wallet/home/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p2, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    return-object p1
.end method

.method private final resolveUserState()Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getUser()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 320
    new-instance v1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    .line 322
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveActions()Ljava/util/List;

    move-result-object v2

    .line 320
    invoke-direct {v1, v0, v2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;Ljava/util/List;)V

    goto :goto_0

    .line 325
    :cond_0
    new-instance v1, Lcom/iMe/model/wallet/home/CardButtonItem;

    .line 326
    sget v0, Lorg/telegram/messenger/R$id;->binance_pay_link:I

    .line 327
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_add_account_40:I

    .line 328
    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login:I

    .line 325
    invoke-direct {v1, v0, v2, v3}, Lcom/iMe/model/wallet/home/CardButtonItem;-><init>(III)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final getBalances()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    return-object v0
.end method

.method public final getBinanceUserBalances()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 108
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fun getBinanceUserBalanc\u2026     .autoDispose()\n    }"

    .line 110
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadScreenInfo()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-static {p0, v1, v0, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserInfo$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZILjava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserBalances()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->onDetachViewState()V

    .line 169
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->attachViewState(Lcom/iMe/manager/crypto/pay/BinancePayProcessView;)V

    const/4 v0, 0x1

    .line 163
    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems(Z)V

    .line 164
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->listenEvents()V

    return-void
.end method

.method public final onItemLongClick()V
    .locals 5

    .line 150
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    .line 152
    new-instance v1, Lcom/iMe/model/wallet/ItemOptionsModel;

    .line 153
    sget v2, Lcom/iMe/common/IdFabric$Menu;->WALLET_BANNER_DISABLE:I

    .line 154
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_disable:I

    .line 155
    sget v4, Lorg/telegram/messenger/R$string;->wallet_details_menu_hide_banner:I

    .line 152
    invoke-direct {v1, v2, v3, v4}, Lcom/iMe/model/wallet/ItemOptionsModel;-><init>(III)V

    .line 151
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showMenuItems(Ljava/util/List;)V

    return-void
.end method

.method public final onMenuItemClick(I)V
    .locals 1

    .line 145
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_BANNER_DISABLE:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->hideBanners()V

    :cond_0
    return-void
.end method

.method public final onOrderTokensClick()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    .line 128
    new-instance v1, Lcom/iMe/model/wallet/home/TokenSortingData;

    .line 129
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v2

    .line 130
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBinanceTokensPositiveBalances()Z

    move-result v3

    .line 128
    invoke-direct {v1, v2, v3}, Lcom/iMe/model/wallet/home/TokenSortingData;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;Z)V

    .line 127
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showSelectTokensSortingDialog(Lcom/iMe/model/wallet/home/TokenSortingData;)V

    return-void
.end method

.method public final setBalances(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    return-void
.end method

.method public final setTokensSorting(Lcom/iMe/model/wallet/home/TokenSortingData;)V
    .locals 2

    const-string/jumbo v0, "tokenSortingData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 137
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/TokenSortingData;->getTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBinanceTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    .line 138
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/TokenSortingData;->isPositiveBalances()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBinanceTokensPositiveBalances(Z)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    invoke-static {p0, p1, v0, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final startBinancePayFlow(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p2}, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->isProcessBinancePayUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_pay_scan_qr_error:I

    invoke-interface {p2, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->loadAndPay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V

    return-void
.end method

.method public final startBinancePayLoginFlow()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getLoginGuideDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$startBinancePayLoginFlow$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$startBinancePayLoginFlow$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showLoginGuideDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final startLogOutFlow()V
    .locals 3

    .line 90
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getLogOutConfirmDialogModel()Lcom/iMe/model/dialog/DialogModel;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$startLogOutFlow$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$startLogOutFlow$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showConfirmLogOutDialog(Lcom/iMe/model/dialog/DialogModel;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final switchHiddenBalance()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBalanceHidden(Z)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {p0, v0, v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZILjava/lang/Object;)V

    return-void
.end method
