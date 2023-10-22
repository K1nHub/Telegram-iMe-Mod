.class public final Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "EnterWalletPinPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterWalletPinPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,160:1\n63#2,12:161\n63#2,12:173\n*S KotlinDebug\n*F\n+ 1 EnterWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter\n*L\n45#1:161,12\n103#1:173,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final pinCodeInteractor:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;


# direct methods
.method public static synthetic $r8$lambda$BSmOtBgCJHKiIXeSpBErNNhcCKQ(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin$lambda$0(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;ZLjava/lang/Boolean;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;)V
    .locals 1

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCodeInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    .line 29
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 30
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 31
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 32
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->pinCodeInteractor:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    .line 33
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 34
    iput-object p7, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 35
    iput-object p8, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$onPinCodeError(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->onPinCodeError()V

    return-void
.end method

.method public static final synthetic access$savePinEncryptedIfNeeded(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->savePinEncryptedIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method private final isValidPinCode(Ljava/lang/String;)Z
    .locals 1

    .line 149
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

.method private final onPinCodeError()V
    .locals 8

    .line 126
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletPinCodeBadTriesCount()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setWalletPinCodeBadTriesCount(I)V

    const/4 v0, 0x3

    if-ge v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    .line 132
    :goto_0
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 133
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    int-to-long v6, v0

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 132
    invoke-interface {v1, v2, v3}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setWalletPinCodeTimeoutUntil(J)V

    .line 134
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->onPinCodeErrorShake()V

    return-void
.end method

.method private final savePinEncryptedIfNeeded(Ljava/lang/String;)V
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getWalletFingerprintController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->getWalletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    return-void

    .line 142
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/FingerprintController;->createCipher()Z

    .line 144
    invoke-static {p1}, Lorg/telegram/messenger/FingerprintController;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v0, p1}, Lcom/iMe/fork/controller/WalletFingerprintController;->setWalletPinCodeEncrypted(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Lcom/iMe/fork/controller/WalletFingerprintController;->saveConfig()V

    return-void
.end method

.method private static final validatePin$lambda$0(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;ZLjava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->updateLoadingState(ZZ)V

    return-void
.end method


# virtual methods
.method public final deleteWallets()V
    .locals 5

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoWalletInteractor:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 100
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteAllWallets()Lio/reactivex/Observable;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v2, "viewState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 110
    invoke-static {p0, v0, v4, v1, v4}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onForgotPasscodeOptionSelected(I)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    .line 88
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 89
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_submit_btn:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->showDeleteWalletDialog(Lcom/iMe/model/dialog/DialogModel;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    .line 84
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->openRestoreWalletScreen(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final onForgotPinClick()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isLocalEncryptionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->showForgotPasswordOptionsDialog()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->openPasswordEnterScreen()V

    :goto_0
    return-void
.end method

.method public final unlockWithFingerprint(Ljavax/crypto/Cipher;)V
    .locals 5

    const-string v0, ""

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin(Ljava/lang/String;Z)V

    return-void

    .line 119
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getWalletFingerprintController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lcom/iMe/fork/controller/WalletFingerprintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iMe/fork/controller/WalletFingerprintController;->getWalletPinCodeEncrypted()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-static {v2, p1}, Lorg/telegram/messenger/FingerprintController;->decode(Ljava/lang/String;Ljavax/crypto/Cipher;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 122
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin(Ljava/lang/String;Z)V

    return-void
.end method

.method public final validatePin(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->isValidPinCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->pinCodeInteractor:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    .line 42
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->isTotalLock()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->readPasswordByPinCode(Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "pinCodeInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;Z)V

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/Observable;

    move-result-object p2

    .line 45
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p2, p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, v0, p2, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
