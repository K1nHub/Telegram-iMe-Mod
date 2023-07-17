package com.iMe.storage.data.manager.wallet_connect;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.data.utils.extentions.RxExtKt;
import com.iMe.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate;
import com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
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
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
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
        lazy = LazyKt__LazyJVMKt.lazy(new WalletConnectManagerImpl$gsonBuilder$2(this));
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
            Single<Result<List<WCSessionStoreItem>>> subscribeOn = this.walletConnectInteractor.getWalletConnectSavedSessionsFirst().singleOrError().subscribeOn(this.schedulersProvider.mo699io());
            final WalletConnectManagerImpl$connectToStoredSessions$1 walletConnectManagerImpl$connectToStoredSessions$1 = new WalletConnectManagerImpl$connectToStoredSessions$1(this);
            Consumer<? super Result<List<WCSessionStoreItem>>> consumer = new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda3
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletConnectManagerImpl.connectToStoredSessions$lambda$0(Function1.this, obj);
                }
            };
            final WalletConnectManagerImpl$connectToStoredSessions$2 walletConnectManagerImpl$connectToStoredSessions$2 = new WalletConnectManagerImpl$connectToStoredSessions$2(this);
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
            wCClient.setOnDisconnect(WalletConnectManagerImpl$clear$1$1$1$1.INSTANCE);
            wCClient.setOnFailure(WalletConnectManagerImpl$clear$1$1$1$2.INSTANCE);
            wCClient.setOnSessionRequest(WalletConnectManagerImpl$clear$1$1$1$3.INSTANCE);
            wCClient.setOnEthSign(WalletConnectManagerImpl$clear$1$1$1$4.INSTANCE);
            wCClient.setOnEthSignTransaction(WalletConnectManagerImpl$clear$1$1$1$5.INSTANCE);
            wCClient.setOnEthSendTransaction(WalletConnectManagerImpl$clear$1$1$1$6.INSTANCE);
            wCClient.setOnWalletChangeNetwork(WalletConnectManagerImpl$clear$1$1$1$7.INSTANCE);
        }
        map.clear();
        this.sessionStoreItems.clear();
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void connect(String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        runWithErrorHandle(new WalletConnectManagerImpl$connect$1(this, uri));
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void approveNewSession(WCSessionStoreItem sessionStoreItem) {
        Unit unit;
        Intrinsics.checkNotNullParameter(sessionStoreItem, "sessionStoreItem");
        WCClient wCClient = this.wcClients.get(sessionStoreItem.getSession().getKey());
        if (wCClient != null) {
            setupClientListeners(wCClient, sessionStoreItem);
            runWithErrorHandle(new WalletConnectManagerImpl$approveNewSession$1$1(wCClient, this));
            unit = Unit.INSTANCE;
        } else {
            unit = null;
        }
        if (unit == null) {
            return;
        }
        this.pendingSessionStoreItem = null;
        Completable observeOn = this.walletConnectInteractor.insertWalletConnectSession(sessionStoreItem).observeOn(this.schedulersProvider.mo698ui());
        WalletConnectManagerImpl$$ExternalSyntheticLambda2 walletConnectManagerImpl$$ExternalSyntheticLambda2 = WalletConnectManagerImpl$$ExternalSyntheticLambda2.INSTANCE;
        final WalletConnectManagerImpl$approveNewSession$3 walletConnectManagerImpl$approveNewSession$3 = new WalletConnectManagerImpl$approveNewSession$3(this);
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
    public void rejectNewSession(WCSessionStoreItem sessionItem) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        runWithErrorHandle(new WalletConnectManagerImpl$rejectNewSession$1(this, sessionItem));
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void approveSign(String sessionKey, long j, WCEthereumSignMessage message) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        Intrinsics.checkNotNullParameter(message, "message");
        runWithErrorHandle(new WalletConnectManagerImpl$approveSign$1(this, message, sessionKey, j));
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public <T> void approveRequest(String sessionKey, long j, T t) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new WalletConnectManagerImpl$approveRequest$1(this, sessionKey, j, t));
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void rejectRequest(String sessionKey, long j) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new WalletConnectManagerImpl$rejectRequest$1(this, sessionKey, j));
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void disconnect(final String sessionKey) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new WalletConnectManagerImpl$disconnect$1(this, sessionKey));
        Completable observeOn = this.walletConnectInteractor.deleteWalletConnectSession(sessionKey).observeOn(this.schedulersProvider.mo698ui());
        Action action = new Action() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletConnectManagerImpl.disconnect$lambda$8(WalletConnectManagerImpl.this, sessionKey);
            }
        };
        final WalletConnectManagerImpl$disconnect$3 walletConnectManagerImpl$disconnect$3 = new WalletConnectManagerImpl$disconnect$3(this);
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
    public static final void disconnect$lambda$8(WalletConnectManagerImpl this$0, String sessionKey) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sessionKey, "$sessionKey");
        CollectionsKt__MutableCollectionsKt.removeAll((List) this$0.sessionStoreItems, (Function1) new WalletConnectManagerImpl$disconnect$2$1(sessionKey));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disconnect$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.iMe.storage.domain.manager.wallet_connect.WalletConnectManager
    public void disconnectAll() {
        runWithErrorHandle(new WalletConnectManagerImpl$disconnectAll$1(this));
        Completable observeOn = this.walletConnectInteractor.deleteAllWalletConnectSessions().observeOn(this.schedulersProvider.mo698ui());
        Action action = new Action() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletConnectManagerImpl.disconnectAll$lambda$10(WalletConnectManagerImpl.this);
            }
        };
        final WalletConnectManagerImpl$disconnectAll$3 walletConnectManagerImpl$disconnectAll$3 = new WalletConnectManagerImpl$disconnectAll$3(this);
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
    public final void mapSessionStoreItem(WCSessionStoreItem wCSessionStoreItem) {
        this.sessionStoreItems.add(wCSessionStoreItem);
        WCClient wCClient = new WCClient(getGsonBuilder(), this.okHttpClient);
        setupClientListeners(wCClient, wCSessionStoreItem);
        this.wcClients.put(wCSessionStoreItem.getSession().getKey(), wCClient);
        runWithErrorHandle(new WalletConnectManagerImpl$mapSessionStoreItem$1$1$1(wCClient, wCSessionStoreItem));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupClientListeners(WCClient wCClient, WCSessionStoreItem wCSessionStoreItem) {
        wCClient.setOnDisconnect(new WalletConnectManagerImpl$setupClientListeners$1$1(this, wCSessionStoreItem));
        wCClient.setOnFailure(new WalletConnectManagerImpl$setupClientListeners$1$2(wCSessionStoreItem, this, wCClient));
        wCClient.setOnSessionRequest(new WalletConnectManagerImpl$setupClientListeners$1$3(this, wCClient));
        wCClient.setOnEthSign(new WalletConnectManagerImpl$setupClientListeners$1$4(this, wCSessionStoreItem));
        wCClient.setOnEthSignTransaction(new WalletConnectManagerImpl$setupClientListeners$1$5(this, wCSessionStoreItem));
        wCClient.setOnEthSendTransaction(new WalletConnectManagerImpl$setupClientListeners$1$6(this, wCSessionStoreItem));
        wCClient.setOnWalletChangeNetwork(new WalletConnectManagerImpl$setupClientListeners$1$7(this, wCClient, wCSessionStoreItem));
    }

    private final void subscribeToErrors() {
        Observable<Throwable> hide = this.errorsSubject.hide();
        final WalletConnectManagerImpl$subscribeToErrors$1 walletConnectManagerImpl$subscribeToErrors$1 = WalletConnectManagerImpl$subscribeToErrors$1.INSTANCE;
        Observable<GroupedObservable<K, Throwable>> groupBy = hide.groupBy(new Function() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Class subscribeToErrors$lambda$15;
                subscribeToErrors$lambda$15 = WalletConnectManagerImpl.subscribeToErrors$lambda$15(Function1.this, obj);
                return subscribeToErrors$lambda$15;
            }
        });
        final WalletConnectManagerImpl$subscribeToErrors$2 walletConnectManagerImpl$subscribeToErrors$2 = WalletConnectManagerImpl$subscribeToErrors$2.INSTANCE;
        Observable observeOn = Observable.merge(groupBy.map(new Function() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable subscribeToErrors$lambda$16;
                subscribeToErrors$lambda$16 = WalletConnectManagerImpl.subscribeToErrors$lambda$16(Function1.this, obj);
                return subscribeToErrors$lambda$16;
            }
        })).subscribeOn(this.schedulersProvider.mo699io()).observeOn(this.schedulersProvider.mo698ui());
        final WalletConnectManagerImpl$subscribeToErrors$3 walletConnectManagerImpl$subscribeToErrors$3 = new WalletConnectManagerImpl$subscribeToErrors$3(this);
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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Observable observeOn2 = observeOn.subscribeOn(this.schedulersProvider.mo699io()).observeOn(this.schedulersProvider.mo698ui());
        final WalletConnectManagerImpl$subscribeToRxEvents$1 walletConnectManagerImpl$subscribeToRxEvents$1 = new WalletConnectManagerImpl$subscribeToRxEvents$1(this);
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
        runWithErrorHandle(new WalletConnectManagerImpl$updateSessionsChain$1(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSessionRequest(WCClient wCClient, WCPeerMeta wCPeerMeta) {
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
        runWithErrorHandle(new WalletConnectManagerImpl$onSessionRequest$1(wCClient, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTransactionProcessing(long j, WCSessionStoreItem wCSessionStoreItem, WCEthereumTransaction wCEthereumTransaction, boolean z) {
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
        Observable<Result<WalletConnectProcessedTransaction>> observeOn = walletConnectInteractor.getWalletConnectParamsForCryptoTransaction(new WalletConnectTransaction(from, str, bigInteger, data, hexToBigIntegerOrNull2, convertFromWei, nonce != null ? CryptoExtKt.hexToBigIntegerOrNull(nonce) : null, this.cryptoPreferenceHelper.getNetworkId())).observeOn(this.schedulersProvider.mo698ui());
        final WalletConnectManagerImpl$onTransactionProcessing$1$1 walletConnectManagerImpl$onTransactionProcessing$1$1 = new WalletConnectManagerImpl$onTransactionProcessing$1$1(this, j, wCSessionStoreItem, z);
        Consumer<? super Result<WalletConnectProcessedTransaction>> consumer = new Consumer() { // from class: com.iMe.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.onTransactionProcessing$lambda$21$lambda$19(Function1.this, obj);
            }
        };
        final WalletConnectManagerImpl$onTransactionProcessing$1$2 walletConnectManagerImpl$onTransactionProcessing$1$2 = new WalletConnectManagerImpl$onTransactionProcessing$1$2(this);
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
