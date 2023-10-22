.class public final Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "FragmentUsernamesPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentUsernamesPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentUsernamesPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 4 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,269:1\n11335#2:270\n11670#2,3:271\n16#3,7:274\n16#3,7:293\n63#4,12:281\n63#4,12:300\n63#4,12:312\n37#5,2:324\n*S KotlinDebug\n*F\n+ 1 FragmentUsernamesPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter\n*L\n71#1:270\n71#1:271,3\n109#1:274,7\n146#1:293,7\n111#1:281,12\n158#1:300,12\n202#1:312,12\n221#1:324,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final itemsHeaderText:Ljava/lang/String;

.field private productsItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;",
            ">;"
        }
    .end annotation
.end field

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

.field private final rootItems$delegate:Lkotlin/Lazy;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedProductItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

.field private final tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$G4v9y-Vvluq33VqgMtI5Z0mfoHs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->subscribeToQueryChanges$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pDtcnj8X4OQsHSqYQbyAUAobp6o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->subscribeToQueryChanges$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vLl2i8iSxQqlIs_WAPyE894LRVs(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->subscribeToQueryChanges$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tonFragmentInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 40
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 41
    iput-object p3, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 42
    iput-object p4, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    .line 43
    iput-object p5, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 46
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p3, "create()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    .line 47
    new-instance p1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$rootItems$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$rootItems$2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->rootItems$delegate:Lkotlin/Lazy;

    .line 49
    sget p1, Lorg/telegram/messenger/R$string;->fragment_usernames_list_title:I

    .line 48
    invoke-interface {p2, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->itemsHeaderText:Ljava/lang/String;

    .line 52
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->productsItems:Ljava/util/List;

    const-string p1, ""

    .line 54
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->query:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getLoadProductsObservable(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Lio/reactivex/Observable;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->getLoadProductsObservable()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getQuery$p(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->query:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTonFragmentInteractor$p(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    return-object p0
.end method

.method public static final synthetic access$initRootItems(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)Ljava/util/List;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->initRootItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onLoadProductsError(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onLoadProductsError(Lcom/iMe/storage/domain/model/Result$Error;)V

    return-void
.end method

.method public static final synthetic access$onLoadProductsSuccess(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Ljava/util/List;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->onLoadProductsSuccess(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setQuery$p(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->query:Ljava/lang/String;

    return-void
.end method

.method private final getLoadProductsObservable()Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;>;>;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    .line 182
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->getSortingType()Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->query:Ljava/lang/String;

    .line 181
    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->getUsernames(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private final getRootItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->rootItems$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getSortingType()Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getTonFragmentProductsSortingType()Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    move-result-object v0

    return-object v0
.end method

.method private final initRootItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v6, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;

    .line 264
    sget v1, Lorg/telegram/messenger/R$raw;->fork_fragment_usernames:I

    .line 265
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_description:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 263
    invoke-direct/range {v0 .. v5}, Lcom/iMe/model/cryptobox/AnimatedHeaderItem;-><init>(ILjava/lang/String;Lcom/iMe/model/cryptobox/AnimatedHeaderItem$Button;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 262
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic loadProducts$default(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->loadProducts(Z)V

    return-void
.end method

.method private final onLoadProductsError(Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;>;)V"
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->isNoConnectionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object p1, Lcom/iMe/model/state/GlobalState$NoInternet;->INSTANCE:Lcom/iMe/model/state/GlobalState$NoInternet;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Lcom/iMe/model/state/GlobalState$Unexpected;->INSTANCE:Lcom/iMe/model/state/GlobalState$Unexpected;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    .line 235
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :goto_0
    return-void
.end method

.method private final onLoadProductsSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProduct;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object p1, Lcom/iMe/model/state/GlobalState$Empty$Common;->INSTANCE:Lcom/iMe/model/state/GlobalState$Empty$Common;

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {p1, v0}, Lcom/iMe/mapper/fragment/TonFragmentProductUiMappingKt;->mapTonFragmentProductToUi(Ljava/util/List;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->productsItems:Ljava/util/List;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 221
    check-cast p1, [Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v0, 0x1

    .line 220
    invoke-direct {p0, p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->renderItems([Lcom/chad/library/adapter/base/entity/node/BaseNode;Z)V

    :goto_0
    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 242
    new-instance v1, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v1, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 241
    invoke-direct {p0, v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->renderItems([Lcom/chad/library/adapter/base/entity/node/BaseNode;Z)V

    return-void
.end method

.method private final renderItems([Lcom/chad/library/adapter/base/entity/node/BaseNode;Z)V
    .locals 4

    .line 248
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    .line 249
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->getRootItems()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 251
    new-instance v2, Lcom/iMe/model/cryptobox/SortingListHeaderItem;

    .line 252
    iget-object v3, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->itemsHeaderText:Ljava/lang/String;

    .line 251
    invoke-direct {v2, v3, p2}, Lcom/iMe/model/cryptobox/SortingListHeaderItem;-><init>(Ljava/lang/String;Z)V

    .line 250
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method private final setSortingType(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setTonFragmentProductsSortingType(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;)V

    return-void
.end method

.method private final subscribeToQueryChanges()V
    .locals 5

    .line 187
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    .line 188
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$1;->INSTANCE:Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$1;

    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 192
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$3;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun subscribeToQ\u2026     .autoDispose()\n    }"

    .line 197
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 210
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToQueryChanges$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final subscribeToQueryChanges$lambda$8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final subscribeToQueryChanges$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method


# virtual methods
.method public final buyUsername()V
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->selectedProductItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 139
    new-instance v2, Lcom/iMe/storage/domain/model/wallet/token/Token;

    const-string v3, ""

    const-string v4, "THE_OPEN_NETWORK"

    invoke-direct {v2, v3, v4}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 138
    invoke-virtual {v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance(Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$flatMapSuccess$1;

    invoke-direct {v2, v0, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V

    new-instance v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v0, v2}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v4, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {p0, v0, v5, v3, v5}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final loadProducts(Z)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    .line 108
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->checkAndPrepareSession()Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "tonFragmentInteractor\n  \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;Z)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 131
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onBuyClick()V
    .locals 9

    .line 90
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->selectedProductItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    .line 92
    new-instance v2, Lcom/iMe/model/dialog/DialogModel;

    .line 93
    iget-object v3, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->settings_interface_confirmation_header:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 95
    sget v5, Lorg/telegram/messenger/R$string;->fragment_usernames_buy_confirmation_description:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 96
    invoke-virtual {v0}, Lcom/iMe/model/wallet/fragment/TonFragmentItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 97
    invoke-virtual {v0}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;->getPriceText()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    .line 94
    invoke-interface {v4, v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v4, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 100
    iget-object v5, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->wallet_buy_button_action_text:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-direct {v2, v3, v0, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {v1, v2}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    :cond_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->subscribeToQueryChanges()V

    .line 176
    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    invoke-static {p0, v0, v1, v2}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->loadProducts$default(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onProductItemClick(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V
    .locals 1

    const-string v0, "productItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showProductDetailsDialog(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V

    .line 84
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->selectedProductItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    return-void
.end method

.method public final onQueryUpdate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->querySubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSelectSortingTypeClick()V
    .locals 9

    .line 66
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;

    .line 67
    new-instance v8, Lcom/iMe/model/dialog/DialogModel;

    .line 68
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->fragment_usernames_sorting_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v8

    .line 67
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 71
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->values()[Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    move-result-object v1

    .line 11335
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 72
    iget-object v6, p0, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->getTextResId()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11671
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->getSortingType()Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 66
    invoke-interface {v0, v8, v2, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesView;->showChooseSortingTypeDialog(Lcom/iMe/model/dialog/DialogModel;Ljava/util/List;I)V

    return-void
.end method

.method public final onSortingTypeSelected(I)V
    .locals 2

    .line 79
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;->Companion:Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType$Companion;->mapByOrdinal(I)Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->setSortingType(Lcom/iMe/storage/domain/model/crypto/ton/TonFragmentProductsSortingType;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, p1, v0, v1}, Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;->loadProducts$default(Lcom/iMe/ui/wallet/fragment/usernames/FragmentUsernamesPresenter;ZILjava/lang/Object;)V

    return-void
.end method
