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
    value = "SMAP\nWalletHomeBinancePayPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletHomeBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 7 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 8 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n*L\n1#1,380:1\n42#2,12:381\n42#2,12:393\n42#2,12:405\n42#2,12:461\n42#2,12:473\n26#3:417\n766#4:418\n857#4,2:419\n1194#4,2:421\n1222#4,4:423\n766#4:427\n857#4,2:428\n1603#4,9:430\n1855#4:439\n1856#4:441\n1612#4:442\n1045#4:443\n1054#4:444\n1549#4:448\n1620#4,3:449\n1#5:440\n1#5:447\n37#6,2:445\n37#6,2:452\n11335#7:454\n11670#7,3:455\n16#8,3:458\n*S KotlinDebug\n*F\n+ 1 WalletHomeBinancePayPresenter.kt\ncom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter\n*L\n108#1:381,12\n166#1:393,12\n180#1:405,12\n331#1:461,12\n368#1:473,12\n220#1:417\n224#1:418\n224#1:419,2\n225#1:421,2\n225#1:423,4\n229#1:427\n229#1:428,2\n230#1:430,9\n230#1:439\n230#1:441\n230#1:442\n234#1:443\n235#1:444\n259#1:448\n259#1:449,3\n230#1:440\n252#1:445,2\n264#1:452,2\n325#1:454\n325#1:455,3\n330#1:458,3\n*E\n"
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

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceAPI:Lcom/binance/android/opensdk/api/BinanceAPI;

    .line 51
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    .line 52
    iput-object p3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 53
    iput-object p4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 54
    iput-object p5, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 55
    iput-object p6, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 56
    iput-object p7, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    .line 57
    iput-object p8, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 58
    iput-object p9, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 62
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAuthTokensByCode(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getAuthTokensByCode(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$loginToBinancePay(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->loginToBinancePay()V

    return-void
.end method

.method public static final synthetic access$logout(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->logout()V

    return-void
.end method

.method public static final synthetic access$openConvertScreen(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->openConvertScreen()V

    return-void
.end method

.method public static final synthetic access$openReplenishScreen(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->openReplenishScreen()V

    return-void
.end method

.method public static final synthetic access$resolveActions(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveActions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getAuthTokensByCode(Ljava/lang/String;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 163
    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;->CODE:Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;

    invoke-virtual {v0, v1, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getAuthTokens(Lcom/iMe/storage/domain/model/binancepay/BinancePayAuthType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 164
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
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

    .line 166
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getAuthTokensByCode$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 173
    invoke-static {p0, p1, v3, v0, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getBinanceUserBalances$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final getBinanceUserBalances$lambda$1(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/base/mvp/SwipeRefreshView;->showRefreshing(Z)V

    return-void
.end method

.method private final getBinanceUserInfo(Z)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 178
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserInfo(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string/jumbo v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 194
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic getBinanceUserInfo$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserInfo(Z)V

    return-void
.end method

.method private final getLogOutConfirmDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 356
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 357
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_logout_confirm_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_logout_confirm_dialog_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 359
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    iget-object v5, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v5, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getLoginGuideDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 197
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 198
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login_positive_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final initBannerSlides()Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .locals 6

    .line 325
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

    .line 325
    new-instance v5, Lcom/iMe/model/wallet/home/SlideItem;

    invoke-direct {v5, v4}, Lcom/iMe/model/wallet/home/SlideItem;-><init>(Lcom/iMe/model/wallet/home/BannerSlide;)V

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/iMe/model/wallet/home/BannerItem;

    invoke-direct {v1, v0}, Lcom/iMe/model/wallet/home/BannerItem;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private final listenEvents()V
    .locals 5

    .line 329
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

    const-string/jumbo v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 353
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loginToBinancePay()V
    .locals 4

    .line 149
    new-instance v0, Lcom/binance/android/opensdk/api/OAuthParams;

    sget-object v1, Lcom/iMe/storage/common/AppConfiguration$Binance;->INSTANCE:Lcom/iMe/storage/common/AppConfiguration$Binance;

    invoke-virtual {v1}, Lcom/iMe/storage/common/AppConfiguration$Binance;->getAUTH_REDIRECT_URL()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->randomString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user:pay,user:email,user:address,user:status,asset:ocbs,asset:balance"

    invoke-direct {v0, v1, v3, v2}, Lcom/binance/android/opensdk/api/OAuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceAPI:Lcom/binance/android/opensdk/api/BinanceAPI;

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$loginToBinancePay$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$loginToBinancePay$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    invoke-interface {v1, v0, v2}, Lcom/binance/android/opensdk/api/BinanceAPI;->authorize(Lcom/binance/android/opensdk/api/OAuthParams;Lcom/binance/android/opensdk/api/BinanceListener;)V

    return-void
.end method

.method private final logout()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 365
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->logout(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "binanceInternalInteracto\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
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

    .line 368
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$logout$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 375
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final openConvertScreen()V
    .locals 2

    .line 318
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

    .line 319
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

    .line 320
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

    .line 311
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->accessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->showRequiredWalletCreatedDialog()V

    goto :goto_0

    .line 312
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

    .line 313
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

.method private final renderScreenItems(ZLjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    .line 207
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

    .line 208
    new-instance v2, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;

    .line 209
    iget-object v3, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_account_header:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getBSCNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v4

    const/4 v5, 0x0

    .line 208
    invoke-direct {v2, v3, v4, v5}, Lcom/iMe/model/wallet/home/HeaderItemWithNetworkSwitcher;-><init>(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network;Z)V

    .line 207
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 213
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveUserState()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveBalancesState(ZLjava/util/List;)[Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object p1

    .line 207
    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {v1, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 206
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 215
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 205
    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;->render(Ljava/util/List;)V

    return-void
.end method

.method static synthetic renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZLjava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 204
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems(ZLjava/util/List;)V

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

    .line 291
    new-instance v9, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 292
    sget v3, Lorg/telegram/messenger/R$drawable;->fork_ic_pay_qr_28:I

    .line 293
    iget-object v2, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_pay:I

    invoke-interface {v2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 290
    new-instance v6, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$1;

    invoke-direct {v6, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    .line 291
    invoke-direct/range {v2 .. v8}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    .line 295
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 296
    sget v11, Lorg/telegram/messenger/R$drawable;->fork_ic_buy_28:I

    .line 297
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_token_details_action_buy:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 290
    new-instance v14, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$2;

    invoke-direct {v14, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    const/4 v13, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v10, v2

    .line 295
    invoke-direct/range {v10 .. v16}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 299
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 300
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_exchange_27:I

    .line 301
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_convert:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 290
    new-instance v8, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$3;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$3;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v4, v2

    .line 299
    invoke-direct/range {v4 .. v10}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 303
    new-instance v2, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;

    .line 304
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_ic_transactions_28:I

    .line 305
    iget-object v3, v0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->wallet_binance_pay_action_history:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 290
    new-instance v8, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$4;

    invoke-direct {v8, v0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveActions$4;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    move-object v4, v2

    .line 303
    invoke-direct/range {v4 .. v10}, Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;-><init>(ILjava/lang/String;ZLkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 290
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

    .line 220
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    return-object p1

    .line 222
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

    .line 224
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

    .line 225
    invoke-virtual {v9}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getAsset()Ljava/lang/String;

    move-result-object v9

    .line 1223
    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 227
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

    .line 229
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

    .line 230
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

    .line 233
    :cond_a
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v2

    sget-object v4, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x2

    if-eq v2, v7, :cond_d

    if-eq v2, v4, :cond_c

    const/4 v8, 0x3

    if-ne v2, v8, :cond_b

    goto :goto_5

    .line 236
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1054
    :cond_c
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 1045
    :cond_d
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedBy$1;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$resolveBalancesState$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 239
    :goto_5
    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v2

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz p1, :cond_e

    .line 242
    sget-object p1, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    goto :goto_6

    .line 243
    :cond_e
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    :goto_6
    new-array v3, v4, [Lcom/iMe/model/common/NoChildNode;

    .line 245
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v7

    if-eqz p2, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 246
    new-instance p2, Lcom/iMe/model/wallet/home/TotalBalanceItem;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v2}, Lcom/iMe/model/wallet/home/TotalBalanceItem;-><init>(FZ)V

    goto :goto_7

    :cond_f
    const/4 p2, 0x0

    :goto_7
    aput-object p2, v3, v1

    .line 251
    new-instance p2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {p2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    aput-object p2, v3, v7

    .line 244
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-array p2, v1, [Lcom/iMe/model/common/NoChildNode;

    .line 38
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/iMe/model/common/NoChildNode;

    goto :goto_a

    .line 255
    :cond_10
    new-instance p1, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p1, v4}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;->getCombined()Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo$Balance;->getFiatValuation()D

    move-result-wide v7

    add-double/2addr v5, v7

    goto :goto_8

    :cond_11
    double-to-float p2, v5

    .line 255
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

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;

    .line 260
    new-instance v5, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    invoke-direct {v5, v3, v2}, Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceTokenBalanceInfo;Z)V

    .line 1621
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    new-array v0, v1, [Lcom/iMe/model/wallet/home/pay/BinanceBalanceItem;

    .line 38
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 255
    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p2

    new-array p2, p2, [Lcom/iMe/model/common/NoChildNode;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/iMe/model/common/NoChildNode;

    .line 269
    :goto_a
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

    .line 275
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->getUser()Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 277
    new-instance v1, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;

    .line 279
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resolveActions()Ljava/util/List;

    move-result-object v2

    .line 277
    invoke-direct {v1, v0, v2}, Lcom/iMe/model/wallet/home/pay/BinanceAccountItem;-><init>(Lcom/iMe/storage/domain/model/binancepay/BinanceUserInfo;Ljava/util/List;)V

    goto :goto_0

    .line 282
    :cond_0
    new-instance v1, Lcom/iMe/model/wallet/home/CardButtonItem;

    .line 283
    sget v0, Lorg/telegram/messenger/R$id;->binance_pay_link:I

    .line 284
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_add_account_40:I

    .line 285
    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_pay_login:I

    .line 282
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

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    return-object v0
.end method

.method public final getBinanceUserBalances()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binanceInternalInteractor:Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;

    .line 104
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;->getUserBalance()Lio/reactivex/Observable;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fun getBinanceUserBalanc\u2026     .autoDispose()\n    }"

    .line 106
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter$getBinanceUserBalances$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getSelectedTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getBinanceTokensOrderType()Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    return-object v0
.end method

.method public final loadScreenInfo()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayManager:Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/binancepay/BinancePayManager;->isAuthorized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v1, v0, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserInfo$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZILjava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->getBinanceUserBalances()V

    goto :goto_0

    .line 96
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

    .line 140
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->onDetachViewState()V

    .line 141
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->onDestroy()V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string/jumbo v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/manager/crypto/pay/BinancePayProcessView;

    invoke-virtual {v0, v1}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->attachViewState(Lcom/iMe/manager/crypto/pay/BinancePayProcessView;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 135
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZLjava/util/List;ILjava/lang/Object;)V

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->listenEvents()V

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

    .line 62
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    return-void
.end method

.method public final setTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V
    .locals 3

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBinanceTokensOrderType(Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;)V

    .line 126
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->balances:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->renderScreenItems$default(Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;ZLjava/util/List;ILjava/lang/Object;)V

    return-void
.end method

.method public final startBinancePayFlow(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p2}, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->isProcessBinancePayUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayView;

    iget-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_binance_pay_scan_qr_error:I

    invoke-interface {p2, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->binancePayProcessManager:Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;

    invoke-virtual {v0, p1, p2}, Lcom/iMe/manager/crypto/pay/BinancePayProcessManager;->loadAndPay(Lcom/iMe/storage/data/utils/system/AndroidActivityHolder;Ljava/lang/String;)V

    return-void
.end method

.method public final startBinancePayLoginFlow()V
    .locals 3

    .line 80
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

    .line 86
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
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/binancepay/WalletHomeBinancePayPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isBalanceHidden()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setBalanceHidden(Z)V

    return-void
.end method
