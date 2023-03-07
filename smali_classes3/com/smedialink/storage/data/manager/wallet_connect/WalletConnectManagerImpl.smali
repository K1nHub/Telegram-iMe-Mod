.class public final Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;
.super Ljava/lang/Object;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletConnectManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,432:1\n1849#2,2:433\n1547#2:439\n1618#2,3:440\n16#3,3:435\n1#4:438\n*S KotlinDebug\n*F\n+ 1 WalletConnectManagerImpl.kt\ncom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl\n*L\n98#1:433,2\n87#1:439\n87#1:440,3\n324#1:435,3\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

.field private final errorsSubject:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private eventsDelegate:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

.field private final gson:Lcom/google/gson/Gson;

.field private final gsonBuilder$delegate:Lkotlin/Lazy;

.field private final okHttpClient:Lokhttp3/OkHttpClient;

.field private pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

.field private final rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

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

.field private final walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

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
.method public static synthetic $r8$lambda$AYigv4WULdSdTXsrmMMxAqqsS1Q(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveNewSession$lambda-8(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dj9oPDc2mB9M68ngGA3661OXyTY(Lio/reactivex/observables/GroupedObservable;)Lio/reactivex/Observable;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors$lambda-17(Lio/reactivex/observables/GroupedObservable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TaaS06FsmqqdVzTM58DU_uVzc-4(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;ZLcom/smedialink/storage/domain/model/Result;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onTransactionProcessing$lambda-24$lambda-22(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;ZLcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHwOuyt_iL0lpXhkMeEj8t1oqlc(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToRxEvents$lambda-19(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WzOH6V610Cb-Sw81fW7IlrcOfb4()V
    .locals 0

    invoke-static {}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->approveNewSession$lambda-7()V

    return-void
.end method

.method public static synthetic $r8$lambda$_WVNZWZy6qvEa-kQDLfVVvbIdzw(Ljava/lang/Throwable;)Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors$lambda-16(Ljava/lang/Throwable;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d2OdnDBslNaB_6B0030fqrMGBeQ(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnect$lambda-9(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNW4UYG8LNNVDpEsD7zu-jntmt8(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/model/Result;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->connectToStoredSessions$lambda-1(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/model/Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nSxU2xO8ubuioYmIq3wCgNCEQQ4(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnectAll$lambda-11(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q38ZQQGJt5pomQ3iepQs4TWy_Ik(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onTransactionProcessing$lambda-24$lambda-23(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uKbEp4Dm5GvnTfgPw7ijwIh5kC8(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->connectToStoredSessions$lambda-2(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wCxJLgL9N4MgFqDhpVJiF7dkoK0(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnect$lambda-10(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wFEYG-_p3aNSoDBi6bHu345zLDo(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors$lambda-18(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ybACHdU5SGwNdIqijOlWYpXhUHc(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->disconnectAll$lambda-12(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;)V
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

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    .line 47
    iput-object p2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    .line 48
    iput-object p3, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gson:Lcom/google/gson/Gson;

    .line 49
    iput-object p4, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 50
    iput-object p5, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 51
    iput-object p6, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 52
    iput-object p7, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 56
    new-instance p1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$eventsDelegate$1;

    invoke-direct {p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$eventsDelegate$1;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->eventsDelegate:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    .line 59
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object p1

    const-string p2, "create<Throwable>()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 60
    new-instance p1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;

    invoke-direct {p1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$gsonBuilder$2;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gsonBuilder$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    .line 62
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    .line 63
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 69
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors()V

    .line 70
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToRxEvents()V

    return-void
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$getErrorsSubject$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method public static final synthetic access$getGson$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/google/gson/Gson;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getGsonBuilder(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/google/gson/GsonBuilder;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOkHttpClient$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$getSessionStoreItems$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/List;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getSubscriptions$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$getWallet(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletConnectInteractor$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    return-object p0
.end method

.method public static final synthetic access$getWcClients$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$onSessionRequest(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onSessionRequest(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/models/WCPeerMeta;)V

    return-void
.end method

.method public static final synthetic access$onTransactionProcessing(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;Z)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;Z)V

    return-void
.end method

.method public static final synthetic access$setPendingSessionStoreItem$p(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    return-void
.end method

.method public static final synthetic access$setupClientListeners(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    return-void
.end method

.method private static final approveNewSession$lambda-7()V
    .locals 0

    return-void
.end method

.method private static final approveNewSession$lambda-8(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static final connectToStoredSessions$lambda-1(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/model/Result;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1547
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1619
    check-cast v1, Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 87
    invoke-direct {p0, v1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->mapSessionStoreItem(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onErrorResult(Lcom/smedialink/storage/domain/model/Result$Error;)V

    :cond_1
    return-void
.end method

.method private static final connectToStoredSessions$lambda-2(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static final disconnect$lambda-10(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static final disconnect$lambda-9(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$2$1;

    invoke-direct {v0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$2$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void
.end method

.method private static final disconnectAll$lambda-11(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->clear()V

    return-void
.end method

.method private static final disconnectAll$lambda-12(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final getGsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->gsonBuilder$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-gsonBuilder>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/GsonBuilder;

    return-object v0
.end method

.method private final getWallet()Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/storage/domain/model/crypto/Wallet;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/model/crypto/Wallet$EVM;

    return-object v0
.end method

.method private final mapSessionStoreItem(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance v0, Lcom/trustwallet/walletconnect/WCClient;

    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getGsonBuilder()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v1, v2}, Lcom/trustwallet/walletconnect/WCClient;-><init>(Lcom/google/gson/GsonBuilder;Lokhttp3/OkHttpClient;)V

    .line 231
    invoke-direct {p0, v0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    .line 232
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;

    invoke-direct {v1, v0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$mapSessionStoreItem$1$1$1;-><init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-direct {p0, v1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final onErrorResult(Lcom/smedialink/storage/domain/model/Result$Error;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/storage/domain/model/Result$Error<",
            "+TT;>;)V"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getOriginThrowable()Ljava/lang/Throwable;

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
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

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
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->getChainId()J

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
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onSessionRequest(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    goto :goto_0

    .line 357
    :cond_3
    new-instance p2, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;

    invoke-direct {p2, p1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$onSessionRequest$1;-><init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    :goto_0
    return-void
.end method

.method private final onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;Z)V
    .locals 16

    move-object/from16 v6, p0

    .line 373
    iget-object v0, v6, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 376
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getFrom()Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getTo()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    move-object v9, v1

    .line 379
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smedialink/storage/data/utils/extentions/StringExtKt;->orZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/utils/Numeric;->toBigInt(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v2, "toBigInt(value.orZero())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 380
    sget-object v1, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    .line 378
    invoke-static {v2, v1}, Lcom/smedialink/storage/domain/utils/crypto/Convert;->fromWei(Ljava/math/BigDecimal;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 381
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v10

    const-string v1, "fromWei(\n               \u2026        ).toPlainString()"

    .line 379
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getData()Ljava/lang/String;

    move-result-object v11

    .line 383
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getGas()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v12, v2

    goto :goto_0

    :cond_1
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getGas()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/utils/Numeric;->toBigInt(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v12, v1

    .line 384
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getGasPrice()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v13, v2

    goto :goto_1

    .line 385
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getGasPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/utils/Numeric;->toBigInt(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    const-string v3, "toBigInt(gasPrice)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->GWEI:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    invoke-static {v1, v3}, Lcom/smedialink/storage/data/utils/extentions/NumberExtKt;->convertFromWei(Ljava/lang/Number;Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v13, v1

    .line 387
    :goto_1
    invoke-virtual/range {p4 .. p4}, Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumTransaction;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v14, v2

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/text/StringsKt;->toBigIntegerOrNull(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v14, v1

    .line 388
    :goto_2
    iget-object v1, v6, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoPreferenceHelper:Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v15

    .line 375
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 374
    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->getWalletConnectParamsForCryptoTransaction(Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectTransaction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 391
    iget-object v1, v6, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v7

    .line 392
    new-instance v8, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;

    move-object v0, v8

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda11;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;Z)V

    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, v6}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda6;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {v7, v8, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "walletConnectInteractor\n\u2026) }\n                    )"

    .line 379
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v1, v6, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final onTransactionProcessing$lambda-24$lambda-22(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;JLcom/trustwallet/walletconnect/WCSessionStoreItem;ZLcom/smedialink/storage/domain/model/Result;)V
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sessionStoreItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    instance-of v0, p5, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object v1

    .line 398
    check-cast p5, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p5}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    .line 395
    invoke-interface/range {v1 .. v6}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onTransactionProcessing(JLcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/domain/model/crypto/wallet_connect/WalletConnectProcessedTransaction;Z)V

    goto :goto_0

    .line 401
    :cond_0
    instance-of p1, p5, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz p1, :cond_1

    const-string p1, "result"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p5, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-direct {p0, p5}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->onErrorResult(Lcom/smedialink/storage/domain/model/Result$Error;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onTransactionProcessing$lambda-24$lambda-23(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iget-object p0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {p0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private final processError(Ljava/lang/Throwable;)V
    .locals 1

    .line 419
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    .line 420
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->getEventsDelegate()Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;->onFailure(Ljava/lang/Throwable;)V

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

    .line 412
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 1

    .line 240
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnDisconnect(Lkotlin/jvm/functions/Function2;)V

    .line 253
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;

    invoke-direct {v0, p2, p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$2;-><init>(Lcom/trustwallet/walletconnect/WCSessionStoreItem;Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnFailure(Lkotlin/jvm/functions/Function1;)V

    .line 261
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$3;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$3;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnSessionRequest(Lkotlin/jvm/functions/Function2;)V

    .line 264
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;

    invoke-direct {v0, p1, p0, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$4;-><init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSign(Lkotlin/jvm/functions/Function2;)V

    .line 274
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$5;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$5;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSignTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 282
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$6;

    invoke-direct {v0, p0, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$6;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSendTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 290
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$setupClientListeners$1$7;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-virtual {p1, v0}, Lcom/trustwallet/walletconnect/WCClient;->setOnWalletChangeNetwork(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private final subscribeToErrors()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->errorsSubject:Lio/reactivex/subjects/PublishSubject;

    .line 312
    invoke-virtual {v0}, Lio/reactivex/Observable;->hide()Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda13;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda13;

    .line 313
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->groupBy(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda12;

    .line 314
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 310
    invoke-static {v0}, Lio/reactivex/Observable;->merge(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda9;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "merge(\n                 \u2026ribe { processError(it) }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final subscribeToErrors$lambda-16(Ljava/lang/Throwable;)Ljava/lang/Class;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static final subscribeToErrors$lambda-17(Lio/reactivex/observables/GroupedObservable;)Lio/reactivex/Observable;
    .locals 3

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2, v0}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final subscribeToErrors$lambda-18(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 318
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->processError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private final subscribeToRxEvents()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->rxEventBus:Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;

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

    .line 325
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 327
    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "rxEventBus\n             \u2026{ updateSessionsChain() }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method private static final subscribeToRxEvents$lambda-19(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->updateSessionsChain()V

    return-void
.end method

.method private final updateSessionsChain()V
    .locals 1

    .line 332
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$updateSessionsChain$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public approveNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 3

    const-string v0, "sessionStoreItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/trustwallet/walletconnect/WCSessionStoreItem;->getSession()Lcom/trustwallet/walletconnect/models/session/WCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/trustwallet/walletconnect/models/session/WCSession;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/trustwallet/walletconnect/WCClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->setupClientListeners(Lcom/trustwallet/walletconnect/WCClient;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    .line 136
    new-instance v2, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveNewSession$1$1;

    invoke-direct {v2, v0, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveNewSession$1$1;-><init>(Lcom/trustwallet/walletconnect/WCClient;Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, v2}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    .line 134
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 144
    :cond_1
    iput-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->pendingSessionStoreItem:Lcom/trustwallet/walletconnect/WCSessionStoreItem;

    .line 145
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 146
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->insertWalletConnectSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)Lio/reactivex/Completable;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p1

    sget-object v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda2;

    .line 148
    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "walletConnectInteractor\n\u2026t(it) }\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

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

    .line 182
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveRequest$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public approveSign(Ljava/lang/String;JLcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;)V
    .locals 7

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$approveSign$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/models/ethereum/WCEthereumSignMessage;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public clear()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->wcClients:Ljava/util/Map;

    .line 98
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1849
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/trustwallet/walletconnect/WCClient;

    .line 100
    sget-object v3, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$1;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$1;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnDisconnect(Lkotlin/jvm/functions/Function2;)V

    .line 101
    sget-object v3, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$2;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$2;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnFailure(Lkotlin/jvm/functions/Function1;)V

    .line 102
    sget-object v3, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$3;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$3;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnSessionRequest(Lkotlin/jvm/functions/Function2;)V

    .line 103
    sget-object v3, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$4;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSign(Lkotlin/jvm/functions/Function2;)V

    .line 104
    sget-object v3, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$5;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$5;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSignTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 105
    sget-object v3, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$6;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$6;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnEthSendTransaction(Lkotlin/jvm/functions/Function2;)V

    .line 106
    sget-object v3, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$7;->INSTANCE:Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$clear$1$1$1$7;

    invoke-virtual {v2, v3}, Lcom/trustwallet/walletconnect/WCClient;->setOnWalletChangeNetwork(Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->sessionStoreItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$connect$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public connectToStoredSessions()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->cryptoAccessManager:Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/BlockchainType;->EVM:Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->isWalletCreated(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->clear()V

    .line 80
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 81
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->getWalletConnectSavedSessionsFirst()Lio/reactivex/Flowable;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lio/reactivex/Flowable;->singleOrError()Lio/reactivex/Single;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    new-instance v2, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda7;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "walletConnectInteractor\n\u2026t(it) }\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnect$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    .line 196
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 197
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->deleteWalletConnectSession(Ljava/lang/String;)Lio/reactivex/Completable;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;)V

    new-instance p1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda8;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "walletConnectInteractor\n\u2026t(it) }\n                )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {p1, v0}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public disconnectAll()V
    .locals 3

    .line 207
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;

    invoke-direct {v0, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$disconnectAll$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    .line 208
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->walletConnectInteractor:Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;

    .line 209
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/interactor/crypto/wallet_connect/WalletConnectInteractor;->deleteAllWalletConnectSessions()Lio/reactivex/Completable;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    new-instance v2, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$$ExternalSyntheticLambda10;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "walletConnectInteractor\n\u2026t(it) }\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/smedialink/storage/data/utils/extentions/RxExtKt;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void
.end method

.method public getEventsDelegate()Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->eventsDelegate:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->clear()V

    .line 220
    iget-object v0, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public rejectNewSession(Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V
    .locals 1

    const-string v0, "sessionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectNewSession$1;

    invoke-direct {v0, p0, p1}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectNewSession$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Lcom/trustwallet/walletconnect/WCSessionStoreItem;)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public rejectRequest(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "sessionKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectRequest$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl$rejectRequest$1;-><init>(Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;Ljava/lang/String;J)V

    invoke-direct {p0, v0}, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->runWithErrorHandle(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public setEventsDelegate(Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/smedialink/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->eventsDelegate:Lcom/smedialink/storage/domain/manager/wallet_connect/WalletConnectEventsDelegate;

    return-void
.end method
