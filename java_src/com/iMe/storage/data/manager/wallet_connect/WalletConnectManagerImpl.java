package com.iMe.storage.data.manager.wallet_connect;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.iMe.storage.R$string;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.iMe.storage.domain.model.crypto.wallet_connect.WalletConnectTransaction;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.crypto.Convert;
import com.iMe.storage.domain.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.RxEvent;
import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.exceptions.InvalidSessionException;
import com.trustwallet.walletconnect.models.WCPeerMeta;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumTransaction;
import com.trustwallet.walletconnect.models.session.WCSession;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.observables.GroupedObservable;
import io.reactivex.subjects.PublishSubject;
import java.math.BigInteger;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import timber.log.Timber;
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl implements WalletConnectManager {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final PublishSubject<Throwable> errorsSubject;
    private WalletConnectEventsDelegate eventsDelegate;
    private final Gson gson;
    private final Lazy gsonBuilder$delegate;
    private final OkHttpClient okHttpClient;
    private WCSessionStoreItem pendingSessionStoreItem;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final List<WCSessionStoreItem> sessionStoreItems;
    private final CompositeDisposable subscriptions;
    private final WalletConnectInteractor walletConnectInteractor;
    private final Map<String, WCClient> wcClients;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void approveNewSession$lambda$6() {
    }

    public WalletConnectManagerImpl(CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, Gson gson, OkHttpClient okHttpClient, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, WalletConnectInteractor walletConnectInteractor) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletConnectInteractor, "walletConnectInteractor");
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.gson = gson;
        this.okHttpClient = okHttpClient;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.walletConnectInteractor = walletConnectInteractor;
        this.eventsDelegate = new WalletConnectEventsDelegate() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$eventsDelegate$1
            @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public /* synthetic */ void onEthSign(long j, WCSessionStoreItem wCSessionStoreItem, WCEthereumSignMessage wCEthereumSignMessage) {
                WalletConnectEventsDelegate.CC.$default$onEthSign(this, j, wCSessionStoreItem, wCEthereumSignMessage);
            }

            @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public /* synthetic */ void onFailure(Throwable th) {
                Intrinsics.checkNotNullParameter(th, "throwable");
            }

            @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public /* synthetic */ void onSessionRequest(WCSessionStoreItem wCSessionStoreItem) {
                Intrinsics.checkNotNullParameter(wCSessionStoreItem, "sessionItem");
            }

            @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public /* synthetic */ void onSuccess(int i) {
                WalletConnectEventsDelegate.CC.$default$onSuccess(this, i);
            }

            @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public /* synthetic */ void onTransactionProcessing(long j, WCSessionStoreItem wCSessionStoreItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, boolean z) {
                WalletConnectEventsDelegate.CC.$default$onTransactionProcessing(this, j, wCSessionStoreItem, walletConnectProcessedTransaction, z);
            }

            @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public /* synthetic */ void onWalletChangeNetwork(long j, WCSessionStoreItem wCSessionStoreItem, String str) {
                WalletConnectEventsDelegate.CC.$default$onWalletChangeNetwork(this, j, wCSessionStoreItem, str);
            }

            @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public /* synthetic */ void onWalletChangeUnsupportedNetwork() {
                WalletConnectEventsDelegate.CC.$default$onWalletChangeUnsupportedNetwork(this);
            }
        };
        PublishSubject<Throwable> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create<Throwable>()");
        this.errorsSubject = create;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<GsonBuilder>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$gsonBuilder$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final GsonBuilder invoke() {
                Gson gson2;
                gson2 = WalletConnectManagerImpl.this.gson;
                return gson2.newBuilder();
            }
        });
        this.gsonBuilder$delegate = lazy;
        this.sessionStoreItems = new ArrayList();
        this.wcClients = new LinkedHashMap();
        this.subscriptions = new CompositeDisposable();
        subscribeToErrors();
        subscribeToRxEvents();
    }

    public WalletConnectEventsDelegate getEventsDelegate() {
        return this.eventsDelegate;
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void setEventsDelegate(WalletConnectEventsDelegate walletConnectEventsDelegate) {
        Intrinsics.checkNotNullParameter(walletConnectEventsDelegate, "<set-?>");
        this.eventsDelegate = walletConnectEventsDelegate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final GsonBuilder getGsonBuilder() {
        Object value = this.gsonBuilder$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-gsonBuilder>(...)");
        return (GsonBuilder) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Wallet.EVM getWallet() {
        return (Wallet.EVM) this.cryptoAccessManager.getWallet(BlockchainType.EVM);
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void connectToStoredSessions() {
        if (this.cryptoAccessManager.isWalletCreated(BlockchainType.EVM)) {
            clear();
            Single<Result<List<WCSessionStoreItem>>> subscribeOn = this.walletConnectInteractor.getWalletConnectSavedSessionsFirst().singleOrError().subscribeOn(this.schedulersProvider.mo717io());
            final Function1<Result<? extends List<? extends WCSessionStoreItem>>, Unit> function1 = new Function1<Result<? extends List<? extends WCSessionStoreItem>>, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$connectToStoredSessions$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends WCSessionStoreItem>> result) {
                    invoke2((Result<? extends List<WCSessionStoreItem>>) result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Result<? extends List<WCSessionStoreItem>> result) {
                    int collectionSizeOrDefault;
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            WalletConnectManagerImpl walletConnectManagerImpl = WalletConnectManagerImpl.this;
                            Intrinsics.checkNotNullExpressionValue(result, "result");
                            walletConnectManagerImpl.onErrorResult((Result.Error) result);
                            return;
                        }
                        return;
                    }
                    Iterable<WCSessionStoreItem> iterable = (Iterable) ((Result.Success) result).getData();
                    WalletConnectManagerImpl walletConnectManagerImpl2 = WalletConnectManagerImpl.this;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (WCSessionStoreItem wCSessionStoreItem : iterable) {
                        walletConnectManagerImpl2.mapSessionStoreItem(wCSessionStoreItem);
                        arrayList.add(Unit.INSTANCE);
                    }
                }
            };
            Consumer<? super Result<List<WCSessionStoreItem>>> consumer = new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletConnectManagerImpl.connectToStoredSessions$lambda$0(Function1.this, obj);
                }
            };
            final Function1<Throwable, Unit> function12 = new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$connectToStoredSessions$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    PublishSubject publishSubject;
                    publishSubject = WalletConnectManagerImpl.this.errorsSubject;
                    publishSubject.onNext(th);
                }
            };
            Disposable subscribe = subscribeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda7
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletConnectManagerImpl.connectToStoredSessions$lambda$1(Function1.this, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(subscribe, "override fun connectToSt…pose(subscriptions)\n    }");
            RxExtKt.autoDispose(subscribe, this.subscriptions);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void connectToStoredSessions$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void connectToStoredSessions$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void clear() {
        Map<String, WCClient> map = this.wcClients;
        for (WCClient wCClient : map.values()) {
            wCClient.setOnDisconnect(new Function2<Integer, String, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$clear$1$1$1$1
                public final void invoke(int i, String str) {
                    Intrinsics.checkNotNullParameter(str, "<anonymous parameter 1>");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str) {
                    invoke(num.intValue(), str);
                    return Unit.INSTANCE;
                }
            });
            wCClient.setOnFailure(new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$clear$1$1$1$2
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }
            });
            wCClient.setOnSessionRequest(new Function2<Long, WCPeerMeta, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$clear$1$1$1$3
                public final void invoke(long j, WCPeerMeta wCPeerMeta) {
                    Intrinsics.checkNotNullParameter(wCPeerMeta, "<anonymous parameter 1>");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Long l, WCPeerMeta wCPeerMeta) {
                    invoke(l.longValue(), wCPeerMeta);
                    return Unit.INSTANCE;
                }
            });
            wCClient.setOnEthSign(new Function2<Long, WCEthereumSignMessage, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$clear$1$1$1$4
                public final void invoke(long j, WCEthereumSignMessage wCEthereumSignMessage) {
                    Intrinsics.checkNotNullParameter(wCEthereumSignMessage, "<anonymous parameter 1>");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumSignMessage wCEthereumSignMessage) {
                    invoke(l.longValue(), wCEthereumSignMessage);
                    return Unit.INSTANCE;
                }
            });
            wCClient.setOnEthSignTransaction(new Function2<Long, WCEthereumTransaction, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$clear$1$1$1$5
                public final void invoke(long j, WCEthereumTransaction wCEthereumTransaction) {
                    Intrinsics.checkNotNullParameter(wCEthereumTransaction, "<anonymous parameter 1>");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumTransaction wCEthereumTransaction) {
                    invoke(l.longValue(), wCEthereumTransaction);
                    return Unit.INSTANCE;
                }
            });
            wCClient.setOnEthSendTransaction(new Function2<Long, WCEthereumTransaction, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$clear$1$1$1$6
                public final void invoke(long j, WCEthereumTransaction wCEthereumTransaction) {
                    Intrinsics.checkNotNullParameter(wCEthereumTransaction, "<anonymous parameter 1>");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumTransaction wCEthereumTransaction) {
                    invoke(l.longValue(), wCEthereumTransaction);
                    return Unit.INSTANCE;
                }
            });
            wCClient.setOnWalletChangeNetwork(new Function2<Long, Integer, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$clear$1$1$1$7
                public final void invoke(long j, int i) {
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Long l, Integer num) {
                    invoke(l.longValue(), num.intValue());
                    return Unit.INSTANCE;
                }
            });
        }
        map.clear();
        this.sessionStoreItems.clear();
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void connect(final String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$connect$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                GsonBuilder gsonBuilder;
                OkHttpClient okHttpClient;
                Map map;
                WCPeerMeta wCPeerMeta = new WCPeerMeta("iMe", "https://imem.app", null, null, 12, null);
                WalletConnectManagerImpl walletConnectManagerImpl = WalletConnectManagerImpl.this;
                WCSession.Companion companion = WCSession.Companion;
                WCSession from = companion.from(uri);
                if (from != null) {
                    cryptoPreferenceHelper = WalletConnectManagerImpl.this.cryptoPreferenceHelper;
                    WCSessionStoreItem wCSessionStoreItem = new WCSessionStoreItem(from, (int) NumberExtKt.orZero(cryptoPreferenceHelper.getNetwork().getChainId()), "", "", wCPeerMeta, false, null, 96, null);
                    WalletConnectManagerImpl walletConnectManagerImpl2 = WalletConnectManagerImpl.this;
                    String str = uri;
                    gsonBuilder = walletConnectManagerImpl2.getGsonBuilder();
                    okHttpClient = walletConnectManagerImpl2.okHttpClient;
                    WCClient wCClient = new WCClient(gsonBuilder, okHttpClient);
                    walletConnectManagerImpl2.setupClientListeners(wCClient, wCSessionStoreItem);
                    map = walletConnectManagerImpl2.wcClients;
                    map.put(wCSessionStoreItem.getSession().getKey(), wCClient);
                    WCSession from2 = companion.from(str);
                    if (from2 != null) {
                        WCClient.connect$default(wCClient, from2, wCPeerMeta, null, null, 12, null);
                        walletConnectManagerImpl.pendingSessionStoreItem = wCSessionStoreItem;
                        return;
                    }
                    throw new InvalidSessionException();
                }
                throw new InvalidSessionException();
            }
        });
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void approveNewSession(WCSessionStoreItem sessionStoreItem) {
        Unit unit;
        Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
        final WCClient wCClient = this.wcClients.get(sessionStoreItem.getSession().getKey());
        if (wCClient != null) {
            setupClientListeners(wCClient, sessionStoreItem);
            runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveNewSession$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Wallet.EVM wallet2;
                    List<String> listOf;
                    CryptoPreferenceHelper cryptoPreferenceHelper;
                    WCClient wCClient2 = WCClient.this;
                    wallet2 = this.getWallet();
                    String address = wallet2 != null ? wallet2.getAddress() : null;
                    if (address == null) {
                        address = "";
                    }
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(address);
                    cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                    wCClient2.approveSession(listOf, (int) NumberExtKt.orZero(cryptoPreferenceHelper.getNetwork().getChainId()));
                    this.getEventsDelegate().onSuccess(R$string.wallet_connect_new_session_success);
                }
            });
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            return;
        }
        this.pendingSessionStoreItem = null;
        Completable observeOn = this.walletConnectInteractor.insertWalletConnectSession(sessionStoreItem).observeOn(this.schedulersProvider.mo716ui());
        WalletConnectManagerImpl$$ExternalSyntheticLambda2 walletConnectManagerImpl$$ExternalSyntheticLambda2 = new Action() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletConnectManagerImpl.approveNewSession$lambda$6();
            }
        };
        final Function1<Throwable, Unit> function1 = new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveNewSession$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                PublishSubject publishSubject;
                publishSubject = WalletConnectManagerImpl.this.errorsSubject;
                publishSubject.onNext(th);
            }
        };
        Disposable subscribe = observeOn.subscribe(walletConnectManagerImpl$$ExternalSyntheticLambda2, new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda6
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.approveNewSession$lambda$7(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "override fun approveNewS…pose(subscriptions)\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void approveNewSession$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void rejectNewSession(final WCSessionStoreItem sessionItem) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$rejectNewSession$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Map map;
                Map map2;
                map = WalletConnectManagerImpl.this.wcClients;
                WCClient wCClient = (WCClient) map.get(sessionItem.getSession().getKey());
                if (wCClient != null) {
                    WCClient.rejectSession$default(wCClient, null, 1, null);
                    wCClient.disconnect();
                }
                map2 = WalletConnectManagerImpl.this.wcClients;
                map2.remove(sessionItem.getSession().getKey());
                WalletConnectManagerImpl.this.pendingSessionStoreItem = null;
            }
        });
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void approveSign(final String sessionKey, final long j, final WCEthereumSignMessage message) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        Intrinsics.checkNotNullParameter(message, "message");
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveSign$1

            /* compiled from: WalletConnectManagerImpl.kt */
            /* loaded from: classes3.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[WCEthereumSignMessage.WCSignType.values().length];
                    try {
                        iArr[WCEthereumSignMessage.WCSignType.MESSAGE.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[WCEthereumSignMessage.WCSignType.PERSONAL_MESSAGE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[WCEthereumSignMessage.WCSignType.TYPED_MESSAGE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
                r0 = r5.this$0.getWallet();
             */
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void invoke2() {
                /*
                    r5 = this;
                    com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl r0 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl.this
                    com.iMe.storage.domain.manager.crypto.CryptoAccessManager r0 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl.access$getCryptoAccessManager$p(r0)
                    com.iMe.storage.domain.model.crypto.BlockchainType r1 = com.iMe.storage.domain.model.crypto.BlockchainType.EVM
                    boolean r0 = r0.isWalletCreated(r1)
                    if (r0 == 0) goto L61
                    com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl r0 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl.this
                    com.iMe.storage.domain.model.crypto.Wallet$EVM r0 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl.access$getWallet(r0)
                    if (r0 == 0) goto L61
                    wallet.core.jni.HDWallet r0 = r0.getHdWallet()
                    if (r0 == 0) goto L61
                    wallet.core.jni.CoinType r1 = wallet.core.jni.CoinType.ETHEREUM
                    wallet.core.jni.PrivateKey r0 = com.iMe.storage.domain.utils.extentions.CryptoExtKt.getPrivateKey(r0, r1)
                    if (r0 != 0) goto L25
                    goto L61
                L25:
                    com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage r1 = r2
                    com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage$WCSignType r1 = r1.getType()
                    int[] r2 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveSign$1.WhenMappings.$EnumSwitchMapping$0
                    int r1 = r1.ordinal()
                    r1 = r2[r1]
                    r2 = 1
                    if (r1 == r2) goto L4d
                    r2 = 2
                    if (r1 == r2) goto L4d
                    r2 = 3
                    if (r1 != r2) goto L47
                    com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage r1 = r2
                    java.lang.String r1 = r1.getData()
                    java.lang.String r0 = wallet.core.jni.EthereumMessageSigner.signTypedMessage(r0, r1)
                    goto L57
                L47:
                    kotlin.NoWhenBranchMatchedException r0 = new kotlin.NoWhenBranchMatchedException
                    r0.<init>()
                    throw r0
                L4d:
                    com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage r1 = r2
                    java.lang.String r1 = r1.getData()
                    java.lang.String r0 = wallet.core.jni.EthereumMessageSigner.signMessage(r0, r1)
                L57:
                    com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl r1 = com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl.this
                    java.lang.String r2 = r3
                    long r3 = r4
                    r1.approveRequest(r2, r3, r0)
                L61:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveSign$1.invoke2():void");
            }
        });
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public <T> void approveRequest(final String sessionKey, final long j, final T t) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new Function0<Unit>(this) { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$approveRequest$1
            final /* synthetic */ WalletConnectManagerImpl this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Map map;
                map = this.this$0.wcClients;
                WCClient wCClient = (WCClient) map.get(sessionKey);
                if (wCClient != null) {
                    wCClient.approveRequest(j, t);
                }
            }
        });
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void rejectRequest(final String sessionKey, final long j) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$rejectRequest$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Map map;
                map = WalletConnectManagerImpl.this.wcClients;
                WCClient wCClient = (WCClient) map.get(sessionKey);
                if (wCClient != null) {
                    WCClient.rejectRequest$default(wCClient, j, null, 2, null);
                }
            }
        });
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void disconnect(final String sessionKey) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$disconnect$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Map map;
                map = WalletConnectManagerImpl.this.wcClients;
                String str = sessionKey;
                WCClient wCClient = (WCClient) map.get(str);
                if (wCClient != null) {
                    wCClient.killSession();
                }
                map.remove(str);
            }
        });
        Completable observeOn = this.walletConnectInteractor.deleteWalletConnectSession(sessionKey).observeOn(this.schedulersProvider.mo716ui());
        Action action = new Action() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletConnectManagerImpl.disconnect$lambda$8(WalletConnectManagerImpl.this, sessionKey);
            }
        };
        final Function1<Throwable, Unit> function1 = new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$disconnect$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                PublishSubject publishSubject;
                publishSubject = WalletConnectManagerImpl.this.errorsSubject;
                publishSubject.onNext(th);
            }
        };
        Disposable subscribe = observeOn.subscribe(action, new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda9
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.disconnect$lambda$9(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "override fun disconnect(…pose(subscriptions)\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disconnect$lambda$8(WalletConnectManagerImpl this$0, final String sessionKey) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sessionKey, "$sessionKey");
        CollectionsKt__MutableCollectionsKt.removeAll((List) this$0.sessionStoreItems, (Function1) new Function1<WCSessionStoreItem, Boolean>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$disconnect$2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(WCSessionStoreItem it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.valueOf(Intrinsics.areEqual(it.getSession().getKey(), sessionKey));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disconnect$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void disconnectAll() {
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$disconnectAll$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Map map;
                map = WalletConnectManagerImpl.this.wcClients;
                for (WCClient wCClient : map.values()) {
                    wCClient.killSession();
                }
            }
        });
        Completable observeOn = this.walletConnectInteractor.deleteAllWalletConnectSessions().observeOn(this.schedulersProvider.mo716ui());
        Action action = new Action() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletConnectManagerImpl.disconnectAll$lambda$10(WalletConnectManagerImpl.this);
            }
        };
        final Function1<Throwable, Unit> function1 = new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$disconnectAll$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                PublishSubject publishSubject;
                publishSubject = WalletConnectManagerImpl.this.errorsSubject;
                publishSubject.onNext(th);
            }
        };
        Disposable subscribe = observeOn.subscribe(action, new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda11
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.disconnectAll$lambda$11(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "override fun disconnectA…pose(subscriptions)\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disconnectAll$lambda$10(WalletConnectManagerImpl this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disconnectAll$lambda$11(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void onDestroy() {
        clear();
        this.subscriptions.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void mapSessionStoreItem(final WCSessionStoreItem wCSessionStoreItem) {
        this.sessionStoreItems.add(wCSessionStoreItem);
        final WCClient wCClient = new WCClient(getGsonBuilder(), this.okHttpClient);
        setupClientListeners(wCClient, wCSessionStoreItem);
        this.wcClients.put(wCSessionStoreItem.getSession().getKey(), wCClient);
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$mapSessionStoreItem$1$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                WCClient.this.connect(wCSessionStoreItem.getSession(), wCSessionStoreItem.getRemotePeerMeta(), wCSessionStoreItem.getPeerId(), wCSessionStoreItem.getRemotePeerId());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupClientListeners(final WCClient wCClient, final WCSessionStoreItem wCSessionStoreItem) {
        wCClient.setOnDisconnect(new WalletConnectManagerImpl$setupClientListeners$1$1(this, wCSessionStoreItem));
        wCClient.setOnFailure(new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable it) {
                PublishSubject publishSubject;
                Intrinsics.checkNotNullParameter(it, "it");
                if ((it instanceof SocketException) || (it instanceof SocketTimeoutException)) {
                    WCSessionStoreItem wCSessionStoreItem2 = WCSessionStoreItem.this;
                    wCClient.connect(wCSessionStoreItem2.getSession(), wCSessionStoreItem2.getRemotePeerMeta(), wCSessionStoreItem2.getPeerId(), wCSessionStoreItem2.getRemotePeerId());
                }
                publishSubject = this.errorsSubject;
                publishSubject.onNext(it);
            }
        });
        wCClient.setOnSessionRequest(new Function2<Long, WCPeerMeta, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Long l, WCPeerMeta wCPeerMeta) {
                invoke(l.longValue(), wCPeerMeta);
                return Unit.INSTANCE;
            }

            public final void invoke(long j, WCPeerMeta peerMeta) {
                Intrinsics.checkNotNullParameter(peerMeta, "peerMeta");
                WalletConnectManagerImpl.this.onSessionRequest(wCClient, peerMeta);
            }
        });
        wCClient.setOnEthSign(new Function2<Long, WCEthereumSignMessage, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumSignMessage wCEthereumSignMessage) {
                invoke(l.longValue(), wCEthereumSignMessage);
                return Unit.INSTANCE;
            }

            public final void invoke(long j, WCEthereumSignMessage message) {
                Intrinsics.checkNotNullParameter(message, "message");
                WalletConnectManagerImpl.this.getEventsDelegate().onEthSign(j, wCSessionStoreItem, message);
            }
        });
        wCClient.setOnEthSignTransaction(new Function2<Long, WCEthereumTransaction, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$5
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumTransaction wCEthereumTransaction) {
                invoke(l.longValue(), wCEthereumTransaction);
                return Unit.INSTANCE;
            }

            public final void invoke(long j, WCEthereumTransaction transaction) {
                Intrinsics.checkNotNullParameter(transaction, "transaction");
                WalletConnectManagerImpl.this.onTransactionProcessing(j, wCSessionStoreItem, transaction, true);
            }
        });
        wCClient.setOnEthSendTransaction(new Function2<Long, WCEthereumTransaction, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$6
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumTransaction wCEthereumTransaction) {
                invoke(l.longValue(), wCEthereumTransaction);
                return Unit.INSTANCE;
            }

            public final void invoke(long j, WCEthereumTransaction transaction) {
                Intrinsics.checkNotNullParameter(transaction, "transaction");
                WalletConnectManagerImpl.this.onTransactionProcessing(j, wCSessionStoreItem, transaction, false);
            }
        });
        wCClient.setOnWalletChangeNetwork(new Function2<Long, Integer, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$setupClientListeners$1$7
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Long l, Integer num) {
                invoke(l.longValue(), num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j, int i) {
                NetworksHelper networksHelper = NetworksHelper.INSTANCE;
                Network networkByChainId = networksHelper.getNetworkByChainId(i);
                if (Intrinsics.areEqual(networkByChainId, networksHelper.getDefault())) {
                    WalletConnectManagerImpl.this.getEventsDelegate().onWalletChangeUnsupportedNetwork();
                    wCClient.rejectRequest(j, wCSessionStoreItem.getSession().getKey());
                    return;
                }
                WalletConnectManagerImpl.this.getEventsDelegate().onWalletChangeNetwork(j, wCSessionStoreItem, networkByChainId.getId());
            }
        });
    }

    private final void subscribeToErrors() {
        Observable<Throwable> hide = this.errorsSubject.hide();
        final WalletConnectManagerImpl$subscribeToErrors$1 walletConnectManagerImpl$subscribeToErrors$1 = new Function1<Throwable, Class<Throwable>>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$subscribeToErrors$1
            @Override // kotlin.jvm.functions.Function1
            public final Class<Throwable> invoke(Throwable it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getClass();
            }
        };
        Observable<GroupedObservable<K, Throwable>> groupBy = hide.groupBy(new Function() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Class subscribeToErrors$lambda$15;
                subscribeToErrors$lambda$15 = WalletConnectManagerImpl.subscribeToErrors$lambda$15(Function1.this, obj);
                return subscribeToErrors$lambda$15;
            }
        });
        final WalletConnectManagerImpl$subscribeToErrors$2 walletConnectManagerImpl$subscribeToErrors$2 = new Function1<GroupedObservable<Class<Throwable>, Throwable>, Observable<Throwable>>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$subscribeToErrors$2
            @Override // kotlin.jvm.functions.Function1
            public final Observable<Throwable> invoke(GroupedObservable<Class<Throwable>, Throwable> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.debounce(1L, TimeUnit.SECONDS);
            }
        };
        Observable observeOn = Observable.merge(groupBy.map(new Function() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable subscribeToErrors$lambda$16;
                subscribeToErrors$lambda$16 = WalletConnectManagerImpl.subscribeToErrors$lambda$16(Function1.this, obj);
                return subscribeToErrors$lambda$16;
            }
        })).subscribeOn(this.schedulersProvider.mo717io()).observeOn(this.schedulersProvider.mo716ui());
        final Function1<Throwable, Unit> function1 = new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$subscribeToErrors$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable it) {
                WalletConnectManagerImpl walletConnectManagerImpl = WalletConnectManagerImpl.this;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                walletConnectManagerImpl.processError(it);
            }
        };
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.subscribeToErrors$lambda$17(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun subscribeToE…pose(subscriptions)\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Class subscribeToErrors$lambda$15(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Class) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Observable subscribeToErrors$lambda$16(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Observable) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToErrors$lambda$17(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void subscribeToRxEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Observable observeOn2 = observeOn.subscribeOn(this.schedulersProvider.mo717io()).observeOn(this.schedulersProvider.mo716ui());
        final Function1<RxEvent, Unit> function1 = new Function1<RxEvent, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$subscribeToRxEvents$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(RxEvent rxEvent) {
                invoke2(rxEvent);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(RxEvent rxEvent) {
                WalletConnectManagerImpl.this.updateSessionsChain();
            }
        };
        Disposable subscribe = observeOn2.subscribe(new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.subscribeToRxEvents$lambda$18(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun subscribeToR…pose(subscriptions)\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToRxEvents$lambda$18(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateSessionsChain() {
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$updateSessionsChain$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Map map;
                Wallet.EVM wallet2;
                List<String> listOf;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                map = WalletConnectManagerImpl.this.wcClients;
                Collection<WCClient> values = map.values();
                WalletConnectManagerImpl walletConnectManagerImpl = WalletConnectManagerImpl.this;
                for (WCClient wCClient : values) {
                    wallet2 = walletConnectManagerImpl.getWallet();
                    String address = wallet2 != null ? wallet2.getAddress() : null;
                    if (address == null) {
                        address = "";
                    }
                    listOf = CollectionsKt__CollectionsJVMKt.listOf(address);
                    cryptoPreferenceHelper = walletConnectManagerImpl.cryptoPreferenceHelper;
                    wCClient.updateSession(listOf, Integer.valueOf((int) NumberExtKt.orZero(cryptoPreferenceHelper.getNetwork().getChainId())), true);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSessionRequest(final WCClient wCClient, WCPeerMeta wCPeerMeta) {
        String remotePeerId;
        if (this.pendingSessionStoreItem != null) {
            WCSession session = wCClient.getSession();
            if (session == null) {
                return;
            }
            int orZero = (int) NumberExtKt.orZero(this.cryptoPreferenceHelper.getNetwork().getChainId());
            String peerId = wCClient.getPeerId();
            if (peerId == null || (remotePeerId = wCClient.getRemotePeerId()) == null) {
                return;
            }
            getEventsDelegate().onSessionRequest(new WCSessionStoreItem(session, orZero, peerId, remotePeerId, wCPeerMeta, true, new Date()));
            return;
        }
        runWithErrorHandle(new Function0<Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$onSessionRequest$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Wallet.EVM wallet2;
                List<String> listOf;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                WCClient wCClient2 = WCClient.this;
                wallet2 = this.getWallet();
                String address = wallet2 != null ? wallet2.getAddress() : null;
                if (address == null) {
                    address = "";
                }
                listOf = CollectionsKt__CollectionsJVMKt.listOf(address);
                cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                wCClient2.approveSession(listOf, (int) NumberExtKt.orZero(cryptoPreferenceHelper.getNetwork().getChainId()));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTransactionProcessing(final long j, final WCSessionStoreItem wCSessionStoreItem, WCEthereumTransaction wCEthereumTransaction, final boolean z) {
        BigInteger hexToBigIntegerOrNull;
        WalletConnectInteractor walletConnectInteractor = this.walletConnectInteractor;
        String from = wCEthereumTransaction.getFrom();
        String to = wCEthereumTransaction.getTo();
        if (to == null) {
            to = "";
        }
        String str = to;
        String value = wCEthereumTransaction.getValue();
        String bigInteger = NumberExtKt.orZero(value != null ? CryptoExtKt.hexToBigIntegerOrNull(value) : null).toString();
        Intrinsics.checkNotNullExpressionValue(bigInteger, "value?.hexToBigIntegerOrNull().orZero().toString()");
        String data = wCEthereumTransaction.getData();
        String gas = wCEthereumTransaction.getGas();
        BigInteger hexToBigIntegerOrNull2 = gas != null ? CryptoExtKt.hexToBigIntegerOrNull(gas) : null;
        String gasPrice = wCEthereumTransaction.getGasPrice();
        BigInteger convertFromWei = (gasPrice == null || (hexToBigIntegerOrNull = CryptoExtKt.hexToBigIntegerOrNull(gasPrice)) == null) ? null : NumberExtKt.convertFromWei(hexToBigIntegerOrNull, Convert.Unit.GWEI);
        String nonce = wCEthereumTransaction.getNonce();
        Observable<Result<WalletConnectProcessedTransaction>> observeOn = walletConnectInteractor.getWalletConnectParamsForCryptoTransaction(new WalletConnectTransaction(from, str, bigInteger, data, hexToBigIntegerOrNull2, convertFromWei, nonce != null ? CryptoExtKt.hexToBigIntegerOrNull(nonce) : null, this.cryptoPreferenceHelper.getNetworkId())).observeOn(this.schedulersProvider.mo716ui());
        final Function1<Result<? extends WalletConnectProcessedTransaction>, Unit> function1 = new Function1<Result<? extends WalletConnectProcessedTransaction>, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$onTransactionProcessing$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends WalletConnectProcessedTransaction> result) {
                invoke2((Result<WalletConnectProcessedTransaction>) result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Result<WalletConnectProcessedTransaction> result) {
                if (result instanceof Result.Success) {
                    WalletConnectManagerImpl.this.getEventsDelegate().onTransactionProcessing(j, wCSessionStoreItem, (WalletConnectProcessedTransaction) ((Result.Success) result).getData(), z);
                } else if (result instanceof Result.Error) {
                    WalletConnectManagerImpl walletConnectManagerImpl = WalletConnectManagerImpl.this;
                    Intrinsics.checkNotNullExpressionValue(result, "result");
                    walletConnectManagerImpl.onErrorResult((Result.Error) result);
                }
            }
        };
        Consumer<? super Result<WalletConnectProcessedTransaction>> consumer = new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.onTransactionProcessing$lambda$21$lambda$19(Function1.this, obj);
            }
        };
        final Function1<Throwable, Unit> function12 = new Function1<Throwable, Unit>() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$onTransactionProcessing$1$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                PublishSubject publishSubject;
                publishSubject = WalletConnectManagerImpl.this.errorsSubject;
                publishSubject.onNext(th);
            }
        };
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda10
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.onTransactionProcessing$lambda$21$lambda$20(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun onTransactio…riptions)\n        }\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTransactionProcessing$lambda$21$lambda$19(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTransactionProcessing$lambda$21$lambda$20(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final void runWithErrorHandle(Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (Exception e) {
            this.errorsSubject.onNext(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processError(Throwable th) {
        Timber.m6e(th);
        getEventsDelegate().onFailure(th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> void onErrorResult(Result.Error<? extends T> error) {
        PublishSubject<Throwable> publishSubject = this.errorsSubject;
        Throwable originThrowable = error.getError().getOriginThrowable();
        if (originThrowable == null) {
            originThrowable = new Throwable();
        }
        publishSubject.onNext(originThrowable);
    }
}
