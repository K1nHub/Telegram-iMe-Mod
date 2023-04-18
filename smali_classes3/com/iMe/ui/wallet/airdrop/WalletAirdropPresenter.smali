.class public final Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletAirdropPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAirdropPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAirdropPresenter.kt\ncom/iMe/ui/wallet/airdrop/WalletAirdropPresenter\n+ 2 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,129:1\n16#2,3:130\n39#3,8:133\n39#3,8:141\n39#3,8:150\n14#4:149\n*S KotlinDebug\n*F\n+ 1 WalletAirdropPresenter.kt\ncom/iMe/ui/wallet/airdrop/WalletAirdropPresenter\n*L\n52#1:130,3\n53#1:133,8\n77#1:141,8\n100#1:150,8\n98#1:149\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "airdropInteractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    .line 24
    iput-object p2, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 25
    iput-object p3, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 26
    iput-object p4, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 27
    iput-object p5, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 28
    iput-object p6, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$checkAirdropState(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->checkAirdropState()V

    return-void
.end method

.method public static final synthetic access$getAirdropInteractor$p(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;)Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    return-object p0
.end method

.method public static final synthetic access$handleErrors(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->handleErrors(Lcom/iMe/storage/data/network/model/error/ErrorModel;)V

    return-void
.end method

.method private final checkAirdropStart(Ljava/lang/String;)V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 75
    invoke-static {v0, p1, v1, v2, v1}, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->checkAirdropStart$default(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "airdropInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v3, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final checkAirdropState()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->getAirdropStatus()Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->getAlertStatus()Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->isRejected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->isRegistered()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->registerInAirdrop()V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->getAirdropRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->checkAirdropStart(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final handleErrors(Lcom/iMe/storage/data/network/model/error/ErrorModel;)V
    .locals 9

    .line 116
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->AIRDROP_NOT_ACTIVE:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;->USER_ALREADY_PARTICIPATED:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$AirdropErrorStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 118
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->preferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->FINISHED:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;->copy$default(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;ILjava/lang/Object;)Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 119
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->isBotActivated()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->isCryptoWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final listenEvents()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

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
    new-instance v1, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final registerInAirdrop()V
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->airdropInteractor:Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 97
    invoke-static {v0, v1, v2, v1}, Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;->registerInAirdrop$default(Lcom/iMe/storage/domain/interactor/crypto/airdrop/AirdropInteractor;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v3, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;)V

    new-instance v4, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v4, v3}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v3, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v3}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v3, "airdropInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v4, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;)V

    new-instance v5, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v5, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v3}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v5, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v3, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final isBotActivated()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v0

    return v0
.end method

.method public final isCryptoWalletCreated()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isCurrentBlockchainWalletCreated()Z

    move-result v0

    return v0
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->checkAirdropState()V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->listenEvents()V

    return-void
.end method