.class public final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;
.super Ljava/lang/Object;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n*L\n1#1,424:1\n1855#2,2:425\n16#3,3:427\n*S KotlinDebug\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl\n*L\n95#1:425,2\n324#1:427,3\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorsSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private eventsDelegate:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

.field private final gson:Lcom/google/gson/Gson;

.field private final gsonBuilder$delegate:Lkotlin/Lazy;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final sessionStoreItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/trustwallet/walletconnect/WCSessionStoreItem;",
            ">;"
        }
    .end annotation
.end field

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private final walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

.field private final wcClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/trustwallet/walletconnect/WCClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8u6HwVKaTAertoBga1IFTvlTHUE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->connectToStoredSessions$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9qfmbCeK0WhLgso-PM7WRWHqBSg(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AIihXxBYCE5mLCcgGi3786a933c()V
    .locals 0

    invoke-static {}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveNewSession$lambda$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cl9QHye8b_jK8-2dz9vwwtYATHU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$E_IdJJHjrVMi2AYxSHnxsUZ3ApU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToRxEvents$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NyVgfc2jpCQUoOkQC1UKKe5fs2c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveNewSession$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PkNN8JJaoydgysmWZ1-0kYAakcY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->connectToStoredSessions$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RaJ_C6gDKexl2ZFmB8xc3q-cMmQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onTransactionProcessing$lambda$21$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X8X7pxQqaIjju7OFueeet16GQdc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XjbRQM4U23aYHXNHMZnHdq5MZOA(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnect$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_RjhJuuHZOBgj8nMC_JXRSbex8k(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnectAll$lambda$10(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lYHMuYtopJZqNpksTcG0ru3e3dM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onTransactionProcessing$lambda$21$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$riCgOR2soIL4mKSJ-ofNmVfRSN4(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnect$lambda$8(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uQL1GVeCHiohmvbodqtKNR3510g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnectAll$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;)V
    .locals 1

    const-string v0, "cryptoAccessManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okHttpClient"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletConnectInteractor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 46
    iput-object p2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 47
    iput-object p3, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gson:Lcom/google/gson/Gson;

    .line 48
    iput-object p4, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 49
    iput-object p5, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 50
    iput-object p6, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 51
    iput-object p7, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 55
    new-instance p1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$eventsDelegate$1;

    invoke-direct {p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$eventsDelegate$1;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->eventsDelegate:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    .line 57
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create<Throwable>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 58
    new-instance p1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;

    invoke-direct {p1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gsonBuilder$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    .line 61
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 67
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors()V

    .line 68
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToRxEvents()V

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getErrorsSubject$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getGson$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/google/gson/Gson;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getGsonBuilder(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/google/gson/GsonBuilder;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOkHttpClient$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getSessionStoreItems$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptions$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getWallet(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletConnectInteractor$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    return-object p0
.end method

.method public static final synthetic access$getWcClients$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$mapSessionStoreItem(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->mapSessionStoreItem(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method public static final synthetic access$onErrorResult(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onErrorResult(Lcom/iMe/storage/domain/model/Result$Error;)V

    return-void
.end method

.method public static final synthetic access$onSessionRequest(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onSessionRequest(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V

    return-void
.end method

.method public static final synthetic access$onTransactionProcessing(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;Z)V
    .locals 0

    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;Z)V

    return-void
.end method

.method public static final synthetic access$processError(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->processError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic access$setPendingSessionStoreItem$p(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    return-void
.end method

.method public static final synthetic access$setupClientListeners(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method public static final synthetic access$updateSessionsChain(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->updateSessionsChain()V

    return-void
.end method

.method private static final approveNewSession$lambda$6()V
    .locals 0

    return-void
.end method

.method private static final approveNewSession$lambda$7(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final connectToStoredSessions$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final connectToStoredSessions$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final disconnect$lambda$8(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$2$1;

    invoke-direct {v0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$2$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method private static final disconnect$lambda$9(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final disconnectAll$lambda$10(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->clear()V

    return-void
.end method

.method private static final disconnectAll$lambda$11(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getGsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gsonBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-gsonBuilder>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/GsonBuilder;

    return-object v0
.end method

.method private final getWallet()Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/model/crypto/Wallet$EVM;

    return-object v0
.end method

.method private final mapSessionStoreItem(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v0, Lcom/trustwallet/walletconnect/WCClient;

    invoke-direct {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/WCClient;-><init>(Lcom/google/gson/GsonBuilder;Lokhttp3/OkHttpClient;)V

    .line 233
    invoke-direct {p0, v0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    .line 234
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;

    invoke-direct {v1, v0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;-><init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-direct {p0, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onErrorResult(Lcom/iMe/storage/domain/model/Result$Error;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;)V"
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getOriginThrowable()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final onSessionRequest(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V
    .locals 9

    .line 344
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    if-eqz v0, :cond_3

    .line 346
    new-instance v0, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 347
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCClient;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetwork()Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Network;->getChainId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 349
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCClient;->getPeerId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    .line 350
    :cond_1
    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCClient;->getRemotePeerId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    const/4 v7, 0x1

    .line 353
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    move-object v1, v0

    move-object v6, p2

    .line 346
    invoke-direct/range {v1 .. v8}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;-><init>(Lcom/trustwallet/walletconnect/models/session/WCSession;ILjava/lang/String;Ljava/lang/String;Lcom/trustwallet/walletconnect/models/WCPeerMeta;ZLjava/util/Date;)V

    .line 355
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onSessionRequest(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    goto :goto_0

    .line 357
    :cond_3
    new-instance p2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;

    invoke-direct {p2, p1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;-><init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;Z)V
    .locals 16

    move-object/from16 v6, p0

    .line 373
    iget-object v0, v6, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 375
    new-instance v1, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;

    .line 376
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getFrom()Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getTo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    move-object v9, v2

    .line 378
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {v2}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v2, "value?.hexToBigIntegerOrNull().orZero().toString()"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getData()Ljava/lang/String;

    move-result-object v11

    .line 380
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getGas()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v12, v2

    goto :goto_1

    :cond_2
    move-object v12, v3

    .line 381
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getGasPrice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v4, Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;->GWEI:Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;

    invoke-static {v2, v4}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->convertFromWei(Ljava/lang/Number;Lcom/iMe/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v13, v2

    goto :goto_2

    :cond_3
    move-object v13, v3

    .line 382
    :goto_2
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getNonce()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->hexToBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v14, v2

    goto :goto_3

    :cond_4
    move-object v14, v3

    .line 383
    :goto_3
    iget-object v2, v6, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v2}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkId()Ljava/lang/String;

    move-result-object v15

    move-object v7, v1

    .line 375
    invoke-direct/range {v7 .. v15}, Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->getWalletConnectParamsForCryptoTransaction(Lcom/iMe/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 386
    iget-object v1, v6, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v7

    .line 387
    new-instance v8, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Z)V

    .line 388
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, v8}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda8;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 387
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$2;

    invoke-direct {v1, v6}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onTransactionProcessing$1$2;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    .line 401
    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda10;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 387
    invoke-virtual {v7, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "private fun onTransactio\u2026riptions)\n        }\n    }"

    .line 401
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iget-object v1, v6, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final onTransactionProcessing$lambda$21$lambda$19(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onTransactionProcessing$lambda$21$lambda$20(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final processError(Ljava/lang/Throwable;)V
    .locals 1

    .line 416
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 417
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 409
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 1

    .line 242
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;

    invoke-direct {v0, p0, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnDisconnect(Lkotlin/jvm/functions/Function2;)V

    .line 255
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;-><init>(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnFailure(Lkotlin/jvm/functions/Function1;)V

    .line 263
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$3;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$3;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnSessionRequest(Lkotlin/jvm/functions/Function2;)V

    .line 266
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;

    invoke-direct {v0, p0, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSign(Lkotlin/jvm/functions/Function2;)V

    .line 273
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$5;

    invoke-direct {v0, p0, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$5;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSignTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 281
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$6;

    invoke-direct {v0, p0, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$6;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSendTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 289
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnWalletChangeNetwork(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final subscribeToErrors()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 312
    invoke-virtual {v0}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$1;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$1;

    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->groupBy(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;

    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda13;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$3;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$3;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "private fun subscribeToE\u2026pose(subscriptions)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final subscribeToErrors$lambda$15(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method

.method private static final subscribeToErrors$lambda$16(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/Observable;

    return-object p0
.end method

.method private static final subscribeToErrors$lambda$17(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final subscribeToRxEvents()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/RxEvent;

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

    .line 325
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToRxEvents$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToRxEvents$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "private fun subscribeToR\u2026pose(subscriptions)\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final subscribeToRxEvents$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final updateSessionsChain()V
    .locals 1

    .line 332
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public approveNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 3

    const-string v0, "sessionStoreItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/WCClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, v0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    .line 136
    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveNewSession$1$1;

    invoke-direct {v2, v0, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveNewSession$1$1;-><init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, v2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    .line 134
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 144
    :cond_1
    iput-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 145
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 146
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->insertWalletConnectSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)Lio/reactivex/Completable;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda2;

    .line 148
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveNewSession$3;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveNewSession$3;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    .line 152
    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 148
    invoke-virtual {p1, v0, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "override fun approveNewS\u2026pose(subscriptions)\n    }"

    .line 152
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public approveRequest(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "JTT;)V"
        }
    .end annotation

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public approveSign(Ljava/lang/String;JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 7

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1855
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/WCClient;

    .line 97
    sget-object v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$1;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$1;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnDisconnect(Lkotlin/jvm/functions/Function2;)V

    .line 98
    sget-object v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$2;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$2;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnFailure(Lkotlin/jvm/functions/Function1;)V

    .line 99
    sget-object v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$3;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$3;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnSessionRequest(Lkotlin/jvm/functions/Function2;)V

    .line 100
    sget-object v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSign(Lkotlin/jvm/functions/Function2;)V

    .line 101
    sget-object v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$5;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$5;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSignTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 102
    sget-object v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$6;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$6;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSendTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 103
    sget-object v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$7;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$7;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnWalletChangeNetwork(Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public connectToStoredSessions()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->clear()V

    .line 76
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 77
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->getWalletConnectSavedSessionsFirst()Lio/reactivex/Flowable;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lio/reactivex/Flowable;->singleOrError()Lio/reactivex/Single;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    .line 81
    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$2;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connectToStoredSessions$2;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    .line 88
    new-instance v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda7;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 80
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "override fun connectToSt\u2026pose(subscriptions)\n    }"

    .line 88
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    .line 202
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 203
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->deleteWalletConnectSession(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 205
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$3;

    invoke-direct {p1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$3;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    .line 207
    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda9;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "override fun disconnect(\u2026pose(subscriptions)\n    }"

    .line 207
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public disconnectAll()V
    .locals 4

    .line 213
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    .line 214
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 215
    invoke-virtual {v0}, Lcom/iMe/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->deleteAllWalletConnectSessions()Lio/reactivex/Completable;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    new-instance v2, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$3;

    invoke-direct {v2, p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$3;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    .line 219
    new-instance v3, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;

    invoke-direct {v3, v2}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 217
    invoke-virtual {v0, v1, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "override fun disconnectA\u2026pose(subscriptions)\n    }"

    .line 219
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/iMe/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public getEventsDelegate()Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->eventsDelegate:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->clear()V

    .line 226
    iget-object v0, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public rejectNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectNewSession$1;

    invoke-direct {v0, p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectNewSession$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public rejectRequest(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectRequest$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectRequest$1;-><init>(Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setEventsDelegate(Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->eventsDelegate:Lcom/iMe/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    return-void
.end method
