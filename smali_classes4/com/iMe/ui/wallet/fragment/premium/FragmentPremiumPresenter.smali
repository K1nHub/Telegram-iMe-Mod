.class public final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "FragmentPremiumPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentPremiumPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentPremiumPresenter.kt\ncom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 5 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,228:1\n1549#2:229\n1620#2,3:230\n1#3:233\n16#4,7:234\n63#5,12:241\n63#5,12:253\n63#5,12:265\n*S KotlinDebug\n*F\n+ 1 FragmentPremiumPresenter.kt\ncom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter\n*L\n76#1:229\n76#1:230,3\n112#1:234,7\n116#1:241,12\n171#1:253,12\n206#1:265,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;",
            ">;"
        }
    .end annotation
.end field

.field private recipient:Lorg/telegram/tgnet/TLRPC$User;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

.field private final tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 1

    const-string/jumbo v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tonFragmentInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "walletInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 34
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 35
    iput-object p3, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    .line 36
    iput-object p4, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->items:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getItems$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->items:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getRecipient$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->recipient:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getTonFragmentInteractor$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    return-object p0
.end method

.method public static final synthetic access$renderGlobalState(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Lcom/iMe/model/state/GlobalState;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    return-void
.end method

.method public static final synthetic access$setBalance$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    return-void
.end method

.method public static final synthetic access$setItems$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Ljava/util/List;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->items:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$setSelectedItem$p(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    return-void
.end method

.method private final loadBalance()V
    .locals 6

    .line 197
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    .line 199
    new-instance v1, Lcom/iMe/storage/domain/model/wallet/token/Token;

    const-string v2, ""

    const-string v3, "THE_OPEN_NETWORK"

    invoke-direct {v1, v2, v3}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "THE_OPEN_NETWORK"

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 198
    invoke-static/range {v0 .. v5}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getTokenBalance$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Lcom/iMe/storage/domain/model/wallet/token/Token;ZLjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "walletInteractor\n       \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadBalance$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 221
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final renderGlobalState(Lcom/iMe/model/state/GlobalState;)V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    new-instance v2, Lcom/iMe/model/common/GlobalStateItem;

    invoke-direct {v2, p1}, Lcom/iMe/model/common/GlobalStateItem;-><init>(Lcom/iMe/model/state/GlobalState;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderItems(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final giftPremium()V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->balance:Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getTotal()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getPrice()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Double;)D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 159
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_amount_send_error_insufficient_funds:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->showActionError(Ljava/lang/String;)V

    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    .line 166
    iget-object v2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->recipient:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_4

    return-void

    .line 167
    :cond_4
    iget-object v3, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getMonthsCount()I

    move-result v3

    .line 165
    invoke-virtual {v0, v2, v3}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->sendPremiumGift(Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    .line 169
    iget-object v2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v2, "tonFragmentInteractor\n  \u2026(schedulersProvider.ui())"

    .line 166
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    const-string/jumbo v3, "viewState"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v3, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$giftPremium$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$giftPremium$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$giftPremium$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$giftPremium$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v4, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 184
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final loadPlans()V
    .locals 4

    .line 109
    sget-object v0, Lcom/iMe/model/state/GlobalState$Progress;->INSTANCE:Lcom/iMe/model/state/GlobalState$Progress;

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->renderGlobalState(Lcom/iMe/model/state/GlobalState;)V

    .line 110
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->tonFragmentInteractor:Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;

    .line 111
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/fragment/TonFragmentInteractor;->checkAndPrepareSession()Lio/reactivex/Observable;

    move-result-object v0

    .line 16
    new-instance v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "tonFragmentInteractor\n  \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter$loadPlans$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 153
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onContactSelected(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderRecipient(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 58
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->recipient:Lorg/telegram/tgnet/TLRPC$User;

    .line 61
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 64
    sget v1, Lorg/telegram/messenger/R$string;->fragment_premium_gift:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 65
    iget-object v5, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getPriceText()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    aput-object v5, v3, v4

    .line 63
    invoke-interface {v0, v1, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-interface {p1, v0, v2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderButton(Ljava/lang/String;Z)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 189
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->common_progress_state_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 188
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderButton(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->loadPlans()V

    .line 193
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->loadBalance()V

    return-void
.end method

.method public final onGiftClick()V
    .locals 10

    .line 92
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->recipient:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getPriceText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 96
    iget-object v3, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->fragment_premium_gift_confirmation_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    iget-object v4, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 98
    sget v5, Lorg/telegram/messenger/R$string;->fragment_premium_gift_confirmation_description:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 99
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    :cond_2
    const-string v0, "formatName(user).ifBlank { user.username }"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v8, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    .line 97
    invoke-interface {v4, v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v1, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget-object v4, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_buy_button_action_text:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 95
    new-instance v5, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v5, v3, v0, v1, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {v2, v5}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onProductItemClick(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "productItem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 76
    :cond_0
    iget-object v2, v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->items:Ljava/util/List;

    .line 1549
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1621
    move-object v7, v4

    check-cast v7, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 77
    invoke-virtual {v7}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getMonthsCount()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getMonthsCount()I

    move-result v14

    if-ne v4, v14, :cond_1

    move v14, v6

    goto :goto_1

    :cond_1
    move v14, v5

    :goto_1
    const/16 v15, 0x1f

    const/16 v16, 0x0

    invoke-static/range {v7 .. v16}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->copy$default(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;DLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZILjava/lang/Object;)Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    move-result-object v4

    .line 1621
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_2
    iput-object v3, v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->items:Ljava/util/List;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    iget-object v3, v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->items:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderItems(Ljava/util/List;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 82
    iget-object v3, v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 83
    sget v4, Lorg/telegram/messenger/R$string;->fragment_premium_gift:I

    new-array v7, v6, [Ljava/lang/Object;

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;->getPriceText()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 82
    invoke-interface {v3, v4, v7}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 86
    iget-object v4, v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->recipient:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_3

    move v5, v6

    .line 81
    :cond_3
    invoke-interface {v2, v3, v5}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->renderButton(Ljava/lang/String;Z)V

    .line 80
    iput-object v1, v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->selectedItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    return-void
.end method

.method public final onSelectContactClick()V
    .locals 5

    .line 45
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "destroyAfterSelect"

    const/4 v3, 0x1

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "returnAsResult"

    .line 48
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "onlyUsers"

    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "allowSelf"

    const/4 v4, 0x0

    .line 50
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "allowBots"

    .line 51
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "is_choose_premium_gift_recipient"

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;->openChooseContact(Landroid/os/Bundle;)V

    return-void
.end method
