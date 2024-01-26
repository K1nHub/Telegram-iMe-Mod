.class public final Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "WalletConnectPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectPresenter.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter\n+ 2 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,125:1\n16#2,3:126\n63#3,12:129\n121#3,12:141\n1549#4:153\n1620#4,3:154\n*S KotlinDebug\n*F\n+ 1 WalletConnectPresenter.kt\ncom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter\n*L\n99#1:126,3\n100#1:129,12\n111#1:141,12\n122#1:153\n122#1:154,3\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

.field private final walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;)V
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

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 31
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    .line 32
    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 33
    iput-object p4, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 34
    iput-object p5, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 35
    iput-object p6, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 36
    iput-object p7, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    return-void
.end method

.method public static final synthetic access$getCurrentNetwork(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$showSessions(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;Ljava/util/List;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->showSessions(Ljava/util/List;)V

    return-void
.end method

.method private final getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    return-object v0
.end method

.method private final showSessions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 1549
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 122
    invoke-static {v2}, Lcom/iMe/mapper/wallet/wallet_connect/WCSessionStoreUiMappingKt;->mapToUi(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;

    move-result-object v2

    .line 1621
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;->setupSessionsItems(Ljava/util/List;)V

    return-void
.end method

.method private final subscribeToEvents()V
    .locals 5

    .line 98
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 103
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final subscribeToSessionList()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 108
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->getWalletConnectSavedSessions()Lio/reactivex/Flowable;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    const-string v1, "walletConnectInteractor\n\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 126
    new-instance v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToSessionList$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 128
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 126
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribeWithErrorHandle"

    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 118
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final connect(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;->connect(Ljava/lang/String;)V

    return-void
.end method

.method public final disconnect(Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/wallet_connect/WalletConnectSessionItem;->getSessionKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public final disconnectAll()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->walletConnectManager:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;->disconnectAll()V

    return-void
.end method

.method public final getDisconnectAllConfirmationDialogModel()Lcom/iMe/model/dialog/DialogModel;
    .locals 6

    .line 74
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 77
    sget v1, Lorg/telegram/messenger/R$string;->AreYouSureSessionsTitle:I

    const-string v2, "AreYouSureSessionsTitle"

    .line 75
    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_connect_terminate_all_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    sget v3, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v4, "Cancel"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 81
    sget v4, Lorg/telegram/messenger/R$string;->Terminate:I

    const-string v5, "Terminate"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->setupNetwork(Lcom/iMe/model/wallet/crypto/NetworkItem;)V

    .line 93
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->subscribeToEvents()V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->subscribeToSessionList()V

    return-void
.end method

.method public final onNetworkSelected(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToDomain(Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setNetwork(Lcom/iMe/storage/domain/model/crypto/Network;)V

    .line 71
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    invoke-virtual {p1, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showChangeNetworkHintIfNeeded()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$WalletConnectScreen;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/Hint$ChangeNetwork$WalletConnectScreen;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->shouldShowHint(Lcom/iMe/storage/domain/model/wallet/Hint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;->showChangeNetworkHint()V

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->hintsPreferenceHelper:Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/HintsPreferenceHelper;->onHintShowed(Lcom/iMe/storage/domain/model/wallet/Hint;)V

    :cond_0
    return-void
.end method

.method public final startChooseNetworkDialog()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectView;

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->getCurrentNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Lcom/iMe/storage/domain/model/crypto/Network;)Lcom/iMe/model/wallet/crypto/NetworkItem$Crypto;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->INSTANCE:Lcom/iMe/storage/data/utils/crypto/NetworksHelper;

    invoke-virtual {v2}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getEVMNetworks()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/mapper/wallet/NetworkUiMappingKt;->mapToUI(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 63
    invoke-interface {v0, v1, v2}, Lcom/iMe/ui/base/mvp/SwitchNetworkView;->showChooseNetworkDialog(Lcom/iMe/model/wallet/crypto/NetworkItem;Ljava/util/List;)V

    return-void
.end method
