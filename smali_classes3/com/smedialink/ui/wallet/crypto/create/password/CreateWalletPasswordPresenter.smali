.class public final Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "CreateWalletPasswordPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletPasswordPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletPasswordPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter\n+ 2 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,70:1\n16#2,3:71\n39#3,8:74\n*S KotlinDebug\n*F\n+ 1 CreateWalletPasswordPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter\n*L\n54#1:71,3\n55#1:74,8\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private password:Ljava/lang/String;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;)V
    .locals 1

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 16
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 20
    sget-object p1, Lcom/smedialink/model/common/ScreenStep;->FIRST_STEP:Lcom/smedialink/model/common/ScreenStep;

    const-string p1, ""

    .line 23
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final checkPasswordMatch(Ljava/lang/String;)V
    .locals 2

    const-string v0, "confirmPass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;

    .line 43
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->password:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->password:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;->onPasswordMatch(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_confirm_eth_password_validation_not_match_error:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 47
    invoke-interface {v0}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;->onCodeErrorShake()V

    :goto_0
    return-void
.end method

.method public final isValidPasswordLength(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final subscribeOnRxEvents(Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "onEventAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

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
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p1, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter$subscribeOnRxEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, p1, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, p1, v2, v0, v2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final validatePassword(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->isValidPasswordLength(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->password:Ljava/lang/String;

    const/4 p1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;

    .line 33
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v1, Lorg/telegram/messenger/R$string;->wallet_create_eth_password_validation_length_error:I

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 34
    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/create/password/CreateWalletPasswordView;->onCodeErrorShake()V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method
