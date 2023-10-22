.class public final Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CreateWalletPinPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$Companion;,
        Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletPinPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,127:1\n91#2,12:128\n63#2,12:140\n*S KotlinDebug\n*F\n+ 1 CreateWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n*L\n72#1:128,12\n90#1:140,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private currentScreenStep:Lcom/iMe/model/common/ScreenStep;

.field private final password:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

.field private final seed:Ljava/lang/String;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;)V
    .locals 1

    const-string v0, "walletPinScreenArgs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 26
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 27
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 28
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 29
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 33
    sget-object p2, Lcom/iMe/model/common/ScreenStep;->FIRST_STEP:Lcom/iMe/model/common/ScreenStep;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/iMe/model/common/ScreenStep;

    .line 36
    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->getPassword()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->getSeed()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->getWallet()Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    .line 39
    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->getScreenType()Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    const-string p1, ""

    .line 40
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$onPinError(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$savePinEncrypted(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->savePinEncrypted()V

    return-void
.end method

.method private final changePinCode()V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 70
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->rewriteDataWithNewPin(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 96
    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V

    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 98
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 96
    invoke-virtual {v0, v2, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 98
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 76
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final createWallet(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 4

    .line 81
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->savePinEncrypted()V

    .line 83
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->wallet:Lcom/iMe/storage/domain/model/crypto/Wallet;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v0, v1, v2}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onWalletCreateSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Import;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$createWallet$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$createWallet$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$createWallet$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$createWallet$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final isValidPin(Ljava/lang/String;)Z
    .locals 1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final onPinError(Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 115
    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 116
    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onWalletPinCodeError()V

    return-void
.end method

.method private final savePinEncrypted()V
    .locals 4

    .line 106
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->createCipher()Z

    .line 107
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getWalletFingerprintController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/FingerprintController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/WalletFingerprintController;->setWalletPinCodeEncrypted(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->saveConfig()V

    return-void
.end method

.method private final validatePin(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->screenType:Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;

    .line 60
    instance-of v0, p1, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Change;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->changePinCode()V

    goto :goto_0

    .line 61
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;->getCreationType()Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->createWallet(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_validation_not_match_error:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinError(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public final onPinChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->isValidPin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/iMe/model/common/ScreenStep;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->validatePin(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public final setCurrentScreenStep(Lcom/iMe/model/common/ScreenStep;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/iMe/model/common/ScreenStep;

    return-void
.end method
