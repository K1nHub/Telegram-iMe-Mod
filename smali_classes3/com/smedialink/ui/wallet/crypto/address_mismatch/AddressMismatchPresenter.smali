.class public final Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "AddressMismatchPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddressMismatchPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddressMismatchPresenter.kt\ncom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter\n+ 2 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,82:1\n16#2,3:83\n39#3,6:86\n*S KotlinDebug\n*F\n+ 1 AddressMismatchPresenter.kt\ncom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter\n*L\n69#1:83,3\n70#1:86,6\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public static synthetic $r8$lambda$Ky0YCOg8IcJGE1zvInM-0W-9K50(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;JLcom/smedialink/storage/domain/model/Result;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveEthWallet$lambda-0(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;JLcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p6HcAgtDF7juXoYZdD7H-G9tePA(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveEthWallet$lambda-1(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 21
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 22
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 23
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 24
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-void
.end method

.method public static synthetic deleteActiveEthWallet$default(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->deleteActiveEthWallet(J)V

    return-void
.end method

.method private static final deleteActiveEthWallet$lambda-0(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;JLcom/smedialink/storage/domain/model/Result;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v0, p3, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    invoke-interface {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;->closeScreen(J)V

    goto :goto_0

    .line 46
    :cond_0
    instance-of p1, p3, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    check-cast p3, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p3}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p2

    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-virtual {p2, p0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final deleteActiveEthWallet$lambda-1(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Ltimber/log/Timber;->d(Ljava/lang/Throwable;)V

    .line 50
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private final listenEvents()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

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
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final deleteActiveEthWallet(J)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->cryptoWalletInteractor:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 39
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Z)Lio/reactivex/Observable;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 43
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;J)V

    new-instance p1, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "cryptoWalletInteractor\n \u2026pty())\n                })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final getDeleteWalletDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 29
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 30
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v3, v4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_delete_wallet_dialog_submit_btn:I

    invoke-interface {v4, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/address_mismatch/AddressMismatchPresenter;->listenEvents()V

    return-void
.end method
