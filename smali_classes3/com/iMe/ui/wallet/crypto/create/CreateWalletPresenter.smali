.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CreateWalletPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,223:1\n39#2,8:224\n39#2,8:232\n39#2,8:240\n39#2,8:249\n14#3:248\n*S KotlinDebug\n*F\n+ 1 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n61#1:224,8\n111#1:232,8\n153#1:240,8\n195#1:249,8\n181#1:248\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private lastSearchQuery:Ljava/lang/String;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventsBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

.field private final searchQuerySubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final walletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method public static synthetic $r8$lambda$cl3zsLjp_R5vOzCdBVkvcgchiFg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->subscribeToQueryChanges$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventsBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletInteractor"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 31
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 32
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 33
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 34
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 35
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->rxEventsBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 36
    iput-object p7, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 37
    iput-object p8, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 41
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->searchQuerySubject:Lio/reactivex/subjects/PublishSubject;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$confirmBackUpCreated(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->confirmBackUpCreated()V

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getCryptoWalletInteractor$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    return-object p0
.end method

.method public static final synthetic access$getLastSearchQuery$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    return-object p0
.end method

.method public static final synthetic access$setLastSearchQuery$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    return-void
.end method

.method private final confirmBackUpCreated()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->rxEventsBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v1, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SuccessSaveBackup;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 218
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onSuccessConfirmBackUp()V

    return-void
.end method

.method private final setupScreen()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    .line 167
    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$SecretWords;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->setWalletAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final subscribeToQueryChanges()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->searchQuerySubject:Lio/reactivex/subjects/PublishSubject;

    .line 145
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->switchMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "private fun subscribeToQ\u2026     .autoDispose()\n    }"

    .line 148
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

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

    .line 162
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final subscribeToQueryChanges$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private final validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v0, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "validationObservable\n   \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p4, p0, p2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$flatMapSuccess$1;-><init>(ZLcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 195
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;ZLjava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance p3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p3, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeedInternal$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance p4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p4, p3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, p2, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 213
    invoke-static {p0, p1, v3, p2, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onCreateNewEmptyWalletClick()V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->createNewWallet()V

    goto :goto_1

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 108
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v4}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->createLocalWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v1

    .line 109
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v4}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v4, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    const-string v5, "viewState"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v4, v3, v5, v6}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, p0, v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v3}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, v0, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {p0, v0, v6, v2, v6}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->setupScreen()V

    .line 136
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->subscribeToQueryChanges()V

    return-void
.end method

.method public final onSecretWordsCheckCompleted()V
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    if-nez v1, :cond_0

    return-void

    .line 50
    :cond_0
    check-cast v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 53
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v3, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v3}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getSecretWords()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->joinBySpace(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 54
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v4, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v4}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 55
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v5}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ""

    goto :goto_1

    .line 56
    :cond_2
    iget-object v5, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    check-cast v5, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;

    invoke-virtual {v5}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$WordsCheck;->getPin()Ljava/lang/String;

    move-result-object v5

    .line 57
    :goto_1
    iget-object v6, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v6}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v6

    .line 52
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 59
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v3, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    .line 56
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    const-string v4, "viewState"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/iMe/ui/base/mvp/base/BaseView;

    invoke-static {v0, v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v4, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 68
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_2

    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->confirmBackUpCreated()V

    :goto_2
    return-void
.end method

.method public final searchMnemonicWordsSuggestions(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->lastSearchQuery:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->searchQuerySubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public final validateSeed(Ljava/lang/String;)V
    .locals 5

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->screenType:Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;

    instance-of v1, v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 77
    :goto_1
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    .line 79
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 81
    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    .line 79
    invoke-virtual {v2, p1, v0, v3}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidRestoredAddress(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 85
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_restore_address_eth_error:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-direct {p0, v0, p1, v2, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->walletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 92
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    .line 90
    invoke-virtual {v0, p1, v2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidSeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 95
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_restore_eth_error:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-direct {p0, v0, p1, v2, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeedInternal(Lio/reactivex/Observable;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_3
    return-void
.end method
