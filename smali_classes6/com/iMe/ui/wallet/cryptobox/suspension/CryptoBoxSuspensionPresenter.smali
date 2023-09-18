.class public final Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "CryptoBoxSuspensionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxSuspensionPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxSuspensionPresenter.kt\ncom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,43:1\n63#2,12:44\n*S KotlinDebug\n*F\n+ 1 CryptoBoxSuspensionPresenter.kt\ncom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter\n*L\n27#1:44,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final transactionAction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string/jumbo v0, "transactionAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoBoxInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "schedulersProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->transactionAction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    .line 17
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 18
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 19
    iput-object p4, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->transactionAction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    iget-object v2, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-static {v1, v2}, Lcom/iMe/mapper/cryptobox/CryptoBoxTransactionActionUiMappingKt;->mapToUi(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lcom/iMe/storage/domain/utils/system/ResourceManager;)Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;->showFee(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method public final onStopClick()V
    .locals 4

    .line 23
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->cryptoBoxInteractor:Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;

    .line 24
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->transactionAction:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;->getTransaction()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/cryptobox/CryptoBoxInteractor;->sendSuspensionExecute(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionArgs;)Lio/reactivex/Observable;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "cryptoBoxInteractor\n    \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;)V

    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingUpdate(Lio/reactivex/Observable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lio/reactivex/Observable;

    move-result-object v0

    .line 27
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter$onStopClick$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter$onStopClick$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter$onStopClick$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter$onStopClick$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
