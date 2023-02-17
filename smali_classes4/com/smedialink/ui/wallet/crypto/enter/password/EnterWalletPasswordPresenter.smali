.class public final Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "EnterWalletPasswordPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterWalletPasswordPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterWalletPasswordPresenter.kt\ncom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n*L\n1#1,100:1\n39#2,6:101\n39#2,6:107\n39#2,6:116\n16#3,3:113\n*S KotlinDebug\n*F\n+ 1 EnterWalletPasswordPresenter.kt\ncom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter\n*L\n50#1:101,6\n72#1:107,6\n84#1:116,6\n83#1:113,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 21
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 22
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 23
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 24
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 25
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method


# virtual methods
.method public final deleteWallets()V
    .locals 6

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 69
    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteAllWallets$default(Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 70
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v4}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v4, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v4

    const-string v5, "viewState"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/smedialink/ui/base/mvp/base/BaseView;

    const/4 v5, 0x2

    invoke-static {v0, v4, v1, v5, v3}, Lcom/smedialink/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/smedialink/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v4, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, p0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)V

    new-instance v5, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v5, v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$deleteWallets$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v4, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p0, v0, v3, v2, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final onForgotPasscodeOptionSelected(I)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 36
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 37
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_submit_btn:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->showDeleteWalletDialog(Lcom/smedialink/model/dialog/DialogModel;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->showRestoreWalletScreen(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final subscribeOnRxEvents(Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "onEventAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 90
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final validatePassword(Ljava/lang/String;)V
    .locals 3

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 48
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->isPasswordForWallet(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoWalletInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {p1, v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 64
    invoke-static {p0, p1, v0, v1, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
