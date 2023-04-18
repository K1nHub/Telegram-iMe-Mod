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
    value = "SMAP\nCreateWalletPinPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,111:1\n39#2,8:112\n*S KotlinDebug\n*F\n+ 1 CreateWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n*L\n60#1:112,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private currentScreenStep:Lcom/iMe/model/common/ScreenStep;

.field private guid:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private seed:Ljava/lang/String;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;


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

    .line 29
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 25
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 26
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 27
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 28
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 32
    sget-object p2, Lcom/iMe/model/common/ScreenStep;->FIRST_STEP:Lcom/iMe/model/common/ScreenStep;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/iMe/model/common/ScreenStep;

    const-string p2, ""

    .line 35
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->getPassword()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->getGuid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->guid:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;->getSeed()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getGuid$p(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->guid:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPassword$p(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPin$p(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSeed$p(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$onPinError(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$savePinEncrypted(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->savePinEncrypted()V

    return-void
.end method

.method private final getCreateWalletObservable()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->guid:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->recreateWallet(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_2

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_2

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-virtual {v1, v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->createLocalWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private final isValidPin(Ljava/lang/String;)Z
    .locals 1

    .line 104
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

    .line 98
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 99
    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onCodeErrorShake()V

    return-void
.end method

.method private final savePinEncrypted()V
    .locals 4

    .line 90
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->createCipher()Z

    .line 91
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getWalletFingerprintController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/FingerprintController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/fork/controller/WalletFingerprintController;->setWalletPinCodeEncrypted(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->saveConfig()V

    return-void
.end method

.method private final validatePin(Ljava/lang/String;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->getCreateWalletObservable()Lio/reactivex/Observable;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "getCreateWalletObservabl\u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, p1, v1, v0, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_validation_not_match_error:I

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final onPinChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->isValidPin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
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

    .line 46
    :cond_0
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->validatePin(Ljava/lang/String;)V

    goto :goto_0

    .line 45
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

    .line 32
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/iMe/model/common/ScreenStep;

    return-void
.end method
