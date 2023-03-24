.class public final Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "CreateWalletPinPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$Companion;,
        Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletPinPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletPinPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,118:1\n39#2,8:119\n39#2,8:127\n*S KotlinDebug\n*F\n+ 1 CreateWalletPinPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n*L\n48#1:119,8\n64#1:127,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private currentScreenStep:Lcom/smedialink/model/common/ScreenStep;

.field private guid:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private pin:Ljava/lang/String;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private seed:Ljava/lang/String;

.field private final telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/gateway/TelegramControllersGateway;)V
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

    .line 28
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 24
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 25
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 26
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 27
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    .line 31
    sget-object p2, Lcom/smedialink/model/common/ScreenStep;->FIRST_STEP:Lcom/smedialink/model/common/ScreenStep;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/smedialink/model/common/ScreenStep;

    const-string p2, ""

    .line 34
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;->getPassword()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;->getGuid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->guid:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/pin/WalletPinScreenArgs;->getSeed()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getPassword$p(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPin$p(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$onPinError(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinError(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$savePinEncrypted(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->savePinEncrypted()V

    return-void
.end method

.method private final isValidPin(Ljava/lang/String;)Z
    .locals 1

    .line 111
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

    .line 105
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 106
    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 107
    invoke-interface {v0}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;->onCodeErrorShake()V

    return-void
.end method

.method private final savePinEncrypted()V
    .locals 4

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->createCipher()Z

    .line 98
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getWalletFingerprintController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/fork/controller/WalletFingerprintController;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/FingerprintController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Lorg/fork/controller/WalletFingerprintController;->setWalletPinCodeEncrypted(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lorg/fork/controller/WalletFingerprintController;->saveConfig()V

    return-void
.end method


# virtual methods
.method public final onPinChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->isValidPin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/smedialink/model/common/ScreenStep;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->validatePin(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public final setCurrentScreenStep(Lcom/smedialink/model/common/ScreenStep;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->currentScreenStep:Lcom/smedialink/model/common/ScreenStep;

    return-void
.end method

.method public final validatePin(Ljava/lang/String;)V
    .locals 12

    const-string v0, "confirmPinCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 43
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->guid:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const-string v2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    const-string v3, "viewState"

    const-string v4, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    const/4 v5, 0x0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 60
    :cond_2
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 61
    iget-object v6, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->guid:Ljava/lang/String;

    iget-object v7, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    invoke-virtual {p1, v6, v7}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    iget-object v6, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v6}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v3, 0x2

    invoke-static {p1, v4, v1, v3, v5}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;-><init>(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V

    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$4;

    invoke-direct {v1, v5}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$4;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v3, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 46
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p0, p1, v5, v0, v5}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_3

    .line 44
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 45
    iget-object v7, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->password:Ljava/lang/String;

    iget-object v8, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->pin:Ljava/lang/String;

    iget-object v9, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->guid:Ljava/lang/String;

    iget-object v10, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->seed:Ljava/lang/String;

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->createWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 46
    iget-object v6, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v6}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-virtual {p1, v6}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/smedialink/ui/base/mvp/base/BaseView;

    invoke-static {p1, v4, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V

    new-instance v4, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v4, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 46
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p0, p1, v5, v0, v5}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    goto :goto_3

    .line 78
    :cond_4
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v0, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_pin_code_validation_not_match_error:I

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->onPinError(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
