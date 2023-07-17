.class public final Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "BuyCryptoProductPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuyCryptoProductPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuyCryptoProductPresenter.kt\ncom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,189:1\n42#2,12:190\n42#2,12:202\n42#2,12:214\n11335#3:226\n11670#3,3:227\n37#4,2:230\n*S KotlinDebug\n*F\n+ 1 BuyCryptoProductPresenter.kt\ncom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n*L\n59#1:190,12\n84#1:202,12\n111#1:214,12\n181#1:226\n181#1:227,3\n181#1:230,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final initToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final simplexInteractor:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;


# direct methods
.method public static synthetic $r8$lambda$I_Wv2u5FttaNapF3yG5OEyCHBQ0(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts$lambda$1(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MWczckjTXs4FodLEGADeN62jfI8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "simplexInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->initToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 31
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->simplexInteractor:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    .line 32
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 33
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 34
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 39
    sget p1, Lorg/telegram/messenger/R$string;->common_dash:I

    invoke-interface {p3, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getInitToken$p(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->initToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$setupUiItems(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;[Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->setupUiItems([Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    return-void
.end method

.method private final getDefaultProducts()[Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;
    .locals 12

    .line 181
    invoke-static {}, Lcom/iMe/storage/domain/model/billing/CryptoProduct;->values()[Lcom/iMe/storage/domain/model/billing/CryptoProduct;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v7, v0, v4

    .line 181
    new-instance v11, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    iget-object v6, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->initToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;-><init>(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Lcom/iMe/storage/domain/model/billing/CryptoProduct;Lcom/iMe/storage/domain/model/crypto/simplex/BuyingCryptoQuote;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11671
    invoke-interface {v1, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    return-object v0
.end method

.method private static final loadAvailableProducts$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final loadAvailableProducts$lambda$1(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;->showRefreshLoading(Z)V

    return-void
.end method

.method private final setupUiItems([Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V
    .locals 3

    .line 170
    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    .line 171
    new-instance p1, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_footer_title:I

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_footer_description:I

    invoke-direct {p1, v1, v2}, Lcom/iMe/model/wallet/crypto/buy/CryptoBuyFooterItem;-><init>(II)V

    .line 170
    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p1

    new-array p1, p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 169
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 173
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductView;->showUiItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final loadAvailableProducts()V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->initToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    if-nez v0, :cond_0

    return-void

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->simplexInteractor:Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;

    const/4 v2, 0x0

    .line 53
    sget-object v3, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;->Companion:Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/simplex/DigitalCurrency;

    move-result-object v3

    .line 54
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;->getAllAvailablePurchasesQuotes$default(Lcom/iMe/storage/domain/interactor/crypto/simplex/SimplexInteractor;Lcom/iMe/storage/domain/model/crypto/simplex/FiatCurrency;Lcom/iMe/storage/domain/model/crypto/simplex/Currency;Ljava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$1;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "fun loadAvailableProduct\u2026     .autoDispose()\n    }"

    .line 57
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->getDefaultProducts()[Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->setupUiItems([Lcom/iMe/model/wallet/crypto/buy/CryptoBuyItem;)V

    .line 154
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts()V

    return-void
.end method
