.class public final Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "EnterWalletPinPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterWalletPinPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterWalletPinPresenter.kt\ncom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,101:1\n39#2,8:102\n*S KotlinDebug\n*F\n+ 1 EnterWalletPinPresenter.kt\ncom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter\n*L\n44#1:102,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final pinCodeInteractor:Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

.field private final telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;Lcom/smedialink/gateway/TelegramControllersGateway;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCodeInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    .line 23
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    .line 24
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 25
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->pinCodeInteractor:Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    .line 26
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$savePinEncryptedIfNeeded(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->savePinEncryptedIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method private final isValidPinCode(Ljava/lang/String;)Z
    .locals 1

    .line 93
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

.method private final savePinEncryptedIfNeeded(Ljava/lang/String;)V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getWalletFingerprintController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/fork/controller/WalletFingerprintController;

    move-result-object v0

    .line 68
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    invoke-virtual {v0}, Lorg/fork/controller/WalletFingerprintController;->getWalletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->createCipher()Z

    .line 71
    invoke-static {p1}, Lorg/telegram/messenger/FingerprintController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, p1}, Lorg/fork/controller/WalletFingerprintController;->setWalletPinCodeEncrypted(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lorg/fork/controller/WalletFingerprintController;->saveConfig()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final setSuccessUnlock(Z)V
    .locals 0

    return-void
.end method

.method public final unlockWithFingerprint(Ljavax/crypto/Cipher;)V
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getWalletFingerprintController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/fork/controller/WalletFingerprintController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fork/controller/WalletFingerprintController;->getWalletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1, p1}, Lorg/telegram/messenger/FingerprintController;->decode(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 86
    :goto_0
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin(Ljava/lang/String;)V

    return-void
.end method

.method public final validatePin(Ljava/lang/String;)V
    .locals 9

    const-string v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->isValidPinCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->pinCodeInteractor:Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    const/4 v3, 0x0

    .line 40
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    sget-object v2, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;->TOTAL_LOCK:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p1

    .line 38
    invoke-static/range {v1 .. v6}, Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;->readPasswordByPinCode$default(Lcom/smedialink/storage/domain/interactor/crypto/pin/PinCodeInteractor;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "pinCodeInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    invoke-static {v0, v1, v8}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0, v7, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
