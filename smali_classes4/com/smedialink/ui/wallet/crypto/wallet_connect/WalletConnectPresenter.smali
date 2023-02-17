.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "WalletConnectPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectPresenter.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter\n+ 2 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,126:1\n16#2,3:127\n39#3,6:130\n99#3,6:136\n1547#4:142\n1618#4,3:143\n*S KotlinDebug\n*F\n+ 1 WalletConnectPresenter.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter\n*L\n97#1:127,3\n98#1:130,6\n109#1:136,6\n120#1:142\n120#1:143,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

.field private final walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;)V
    .locals 1

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hintsPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectInteractor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 27
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    .line 28
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 29
    iput-object p4, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 30
    iput-object p5, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 31
    iput-object p6, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 32
    iput-object p7, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    return-void
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$showSessions(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;Ljava/util/List;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->showSessions(Ljava/util/List;)V

    return-void
.end method

.method private final showSessions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 120
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    invoke-static {v2, v3}, Lcom/smedialink/mapper/wallet/wallet_connect/WCSessionStoreUiMappingKt;->mapToUi(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-interface {v0, p1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;->setupSessionsItems(Ljava/util/List;)V

    return-void
.end method

.method private final subscribeToEvents()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

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
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 101
    invoke-static {p0, v0, v3, v1, v3}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final subscribeToSessionList()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 106
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->getWalletConnectSavedSessions()Lio/reactivex/Flowable;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "walletConnectInteractor\n\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 104
    new-instance v2, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v1}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v2, v3}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 115
    invoke-static {p0, v0, v1, v2, v1}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final connect(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->connect(Ljava/lang/String;)V

    return-void
.end method

.method public final disconnect(Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getSessionKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public final disconnectAll()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;->disconnectAll()V

    return-void
.end method

.method public final getDisconnectAllConfirmationDialogModel()Lcom/smedialink/model/dialog/DialogModel;
    .locals 6

    .line 67
    new-instance v0, Lcom/smedialink/model/dialog/DialogModel;

    .line 68
    sget v1, Lorg/telegram/messenger/R$string;->AreYouSureSessionsTitle:I

    const-string v2, "AreYouSureSessionsTitle"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 69
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_terminate_all_description:I

    invoke-interface {v2, v3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 71
    sget v4, Lorg/telegram/messenger/R$string;->Terminate:I

    const-string v5, "Terminate"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smedialink/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 87
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->subscribeToEvents()V

    .line 88
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->subscribeToSessionList()V

    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$WalletConnectScreen;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/Hint$ChangeNetwork$WalletConnectScreen;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/smedialink/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-interface {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;->showChangeNetworkHint()V

    .line 77
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->hintsPreferenceHelper:Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/smedialink/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 4

    .line 58
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 59
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    .line 60
    sget-object v2, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->Companion:Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/crypto/NetworkType$Companion;->getEVMNetworks()Ljava/util/List;

    move-result-object v2

    .line 58
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$startChooseNetworkDialog$1;

    invoke-direct {v3, p0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$startChooseNetworkDialog$1;-><init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
