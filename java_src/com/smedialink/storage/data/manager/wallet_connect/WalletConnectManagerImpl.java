package com.smedialink.storage.data.manager.wallet_connect;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.smedialink.storage.data.utils.extentions.NumberExtKt;
import com.smedialink.storage.data.utils.extentions.RxExtKt;
import com.smedialink.storage.data.utils.extentions.StringExtKt;
import com.smedialink.storage.domain.interactor.crypto.wallet_connect.WalletConnectInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate;
import com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.crypto.Wallet;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectProcessedTransaction;
import com.smedialink.storage.domain.model.crypto.wallet_connect.WalletConnectTransaction;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.crypto.Convert;
import com.smedialink.storage.domain.utils.p030rx.RxEventBus;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.p030rx.event.RxEvent;
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
import java.math.BigDecimal;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsJVMKt;
import okhttp3.OkHttpClient;
import org.web3j.utils.Numeric;
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

    static {
        new Companion(null);
    }

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
        this.eventsDelegate = new WalletConnectEventsDelegate() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$eventsDelegate$1
            @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public void onEthSign(long j, WCSessionStoreItem wCSessionStoreItem, WCEthereumSignMessage wCEthereumSignMessage) {
                WalletConnectEventsDelegate.DefaultImpls.onEthSign(this, j, wCSessionStoreItem, wCEthereumSignMessage);
            }

            @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public void onFailure(Throwable th) {
                WalletConnectEventsDelegate.DefaultImpls.onFailure(this, th);
            }

            @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public void onSessionRequest(WCSessionStoreItem wCSessionStoreItem) {
                WalletConnectEventsDelegate.DefaultImpls.onSessionRequest(this, wCSessionStoreItem);
            }

            @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public void onSuccess(int i) {
                WalletConnectEventsDelegate.DefaultImpls.onSuccess(this, i);
            }

            @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public void onTransactionProcessing(long j, WCSessionStoreItem wCSessionStoreItem, WalletConnectProcessedTransaction walletConnectProcessedTransaction, boolean z) {
                WalletConnectEventsDelegate.DefaultImpls.onTransactionProcessing(this, j, wCSessionStoreItem, walletConnectProcessedTransaction, z);
            }

            @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public void onWalletChangeNetwork(long j, WCSessionStoreItem wCSessionStoreItem, NetworkType networkType) {
                WalletConnectEventsDelegate.DefaultImpls.onWalletChangeNetwork(this, j, wCSessionStoreItem, networkType);
            }

            @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectEventsDelegate
            public void onWalletChangeUnsupportedNetwork() {
                WalletConnectEventsDelegate.DefaultImpls.onWalletChangeUnsupportedNetwork(this);
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

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
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

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public void connectToStoredSessions() {
        if (this.cryptoAccessManager.isWalletCreated(BlockchainType.EVM)) {
            clear();
            Single<Result<List<WCSessionStoreItem>>> subscribeOn = this.walletConnectInteractor.getWalletConnectSavedSessionsFirst().singleOrError().subscribeOn(this.schedulersProvider.mo708io());
            final WalletConnectManagerImpl$connectToStoredSessions$1 walletConnectManagerImpl$connectToStoredSessions$1 = new WalletConnectManagerImpl$connectToStoredSessions$1(this);
            Consumer<? super Result<List<WCSessionStoreItem>>> consumer = new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda7
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    WalletConnectManagerImpl.connectToStoredSessions$lambda$0(Function1.this, obj);
                }
            };
            final WalletConnectManagerImpl$connectToStoredSessions$2 walletConnectManagerImpl$connectToStoredSessions$2 = new WalletConnectManagerImpl$connectToStoredSessions$2(this);
            Disposable subscribe = subscribeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda6
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

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
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

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public void connect(String uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        runWithErrorHandle(new WalletConnectManagerImpl$connect$1(this, uri));
    }

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
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
        Completable observeOn = this.walletConnectInteractor.insertWalletConnectSession(sessionStoreItem).observeOn(this.schedulersProvider.mo707ui());
        WalletConnectManagerImpl$$ExternalSyntheticLambda2 walletConnectManagerImpl$$ExternalSyntheticLambda2 = WalletConnectManagerImpl$$ExternalSyntheticLambda2.INSTANCE;
        final WalletConnectManagerImpl$approveNewSession$3 walletConnectManagerImpl$approveNewSession$3 = new WalletConnectManagerImpl$approveNewSession$3(this);
        Disposable subscribe = observeOn.subscribe(walletConnectManagerImpl$$ExternalSyntheticLambda2, new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda10
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

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public void rejectNewSession(WCSessionStoreItem sessionItem) {
        Intrinsics.checkNotNullParameter(sessionItem, "sessionItem");
        runWithErrorHandle(new WalletConnectManagerImpl$rejectNewSession$1(this, sessionItem));
    }

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public void approveSign(String sessionKey, long j, WCEthereumSignMessage message) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        Intrinsics.checkNotNullParameter(message, "message");
        runWithErrorHandle(new WalletConnectManagerImpl$approveSign$1(this, message, sessionKey, j));
    }

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public <T> void approveRequest(String sessionKey, long j, T t) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new WalletConnectManagerImpl$approveRequest$1(this, sessionKey, j, t));
    }

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public void rejectRequest(String sessionKey, long j) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new WalletConnectManagerImpl$rejectRequest$1(this, sessionKey, j));
    }

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public void disconnect(final String sessionKey) {
        Intrinsics.checkNotNullParameter(sessionKey, "sessionKey");
        runWithErrorHandle(new WalletConnectManagerImpl$disconnect$1(this, sessionKey));
        Completable observeOn = this.walletConnectInteractor.deleteWalletConnectSession(sessionKey).observeOn(this.schedulersProvider.mo707ui());
        Action action = new Action() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletConnectManagerImpl.disconnect$lambda$8(WalletConnectManagerImpl.this, sessionKey);
            }
        };
        final WalletConnectManagerImpl$disconnect$3 walletConnectManagerImpl$disconnect$3 = new WalletConnectManagerImpl$disconnect$3(this);
        Disposable subscribe = observeOn.subscribe(action, new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda3
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
        CollectionsKt__MutableCollectionsKt.removeAll(this$0.sessionStoreItems, new WalletConnectManagerImpl$disconnect$2$1(sessionKey));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void disconnect$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
    public void disconnectAll() {
        runWithErrorHandle(new WalletConnectManagerImpl$disconnectAll$1(this));
        Completable observeOn = this.walletConnectInteractor.deleteAllWalletConnectSessions().observeOn(this.schedulersProvider.mo707ui());
        Action action = new Action() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                WalletConnectManagerImpl.disconnectAll$lambda$10(WalletConnectManagerImpl.this);
            }
        };
        final WalletConnectManagerImpl$disconnectAll$3 walletConnectManagerImpl$disconnectAll$3 = new WalletConnectManagerImpl$disconnectAll$3(this);
        Disposable subscribe = observeOn.subscribe(action, new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda4
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

    @Override // com.smedialink.storage.domain.manager.wallet_connect.WalletConnectManager
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
        wCClient.setOnEthSign(new WalletConnectManagerImpl$setupClientListeners$1$4(wCClient, this, wCSessionStoreItem));
        wCClient.setOnEthSignTransaction(new WalletConnectManagerImpl$setupClientListeners$1$5(this, wCSessionStoreItem));
        wCClient.setOnEthSendTransaction(new WalletConnectManagerImpl$setupClientListeners$1$6(this, wCSessionStoreItem));
        wCClient.setOnWalletChangeNetwork(new WalletConnectManagerImpl$setupClientListeners$1$7(this, wCClient, wCSessionStoreItem));
    }

    private final void subscribeToErrors() {
        Observable<Throwable> hide = this.errorsSubject.hide();
        final WalletConnectManagerImpl$subscribeToErrors$1 walletConnectManagerImpl$subscribeToErrors$1 = WalletConnectManagerImpl$subscribeToErrors$1.INSTANCE;
        Observable<GroupedObservable<K, Throwable>> groupBy = hide.groupBy(new Function() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda12
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Class subscribeToErrors$lambda$15;
                subscribeToErrors$lambda$15 = WalletConnectManagerImpl.subscribeToErrors$lambda$15(Function1.this, obj);
                return subscribeToErrors$lambda$15;
            }
        });
        final WalletConnectManagerImpl$subscribeToErrors$2 walletConnectManagerImpl$subscribeToErrors$2 = WalletConnectManagerImpl$subscribeToErrors$2.INSTANCE;
        Observable observeOn = Observable.merge(groupBy.map(new Function() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda13
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Observable subscribeToErrors$lambda$16;
                subscribeToErrors$lambda$16 = WalletConnectManagerImpl.subscribeToErrors$lambda$16(Function1.this, obj);
                return subscribeToErrors$lambda$16;
            }
        })).subscribeOn(this.schedulersProvider.mo708io()).observeOn(this.schedulersProvider.mo707ui());
        final WalletConnectManagerImpl$subscribeToErrors$3 walletConnectManagerImpl$subscribeToErrors$3 = new WalletConnectManagerImpl$subscribeToErrors$3(this);
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda11
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
        Observable observeOn = rxEventBus.getPublisher().ofType(RxEvent.class).observeOn(rxEventBus.getSchedulersProvider().mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Observable observeOn2 = observeOn.subscribeOn(this.schedulersProvider.mo708io()).observeOn(this.schedulersProvider.mo707ui());
        final WalletConnectManagerImpl$subscribeToRxEvents$1 walletConnectManagerImpl$subscribeToRxEvents$1 = new WalletConnectManagerImpl$subscribeToRxEvents$1(this);
        Disposable subscribe = observeOn2.subscribe(new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda9
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
            int chainId = (int) this.cryptoPreferenceHelper.getNetworkType().getChainId();
            String peerId = wCClient.getPeerId();
            if (peerId == null || (remotePeerId = wCClient.getRemotePeerId()) == null) {
                return;
            }
            getEventsDelegate().onSessionRequest(new WCSessionStoreItem(session, chainId, peerId, remotePeerId, wCPeerMeta, true, new Date()));
            return;
        }
        runWithErrorHandle(new WalletConnectManagerImpl$onSessionRequest$1(wCClient, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTransactionProcessing(long j, WCSessionStoreItem wCSessionStoreItem, WCEthereumTransaction wCEthereumTransaction, boolean z) {
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger bigIntegerOrNull;
        WalletConnectInteractor walletConnectInteractor = this.walletConnectInteractor;
        String from = wCEthereumTransaction.getFrom();
        String to = wCEthereumTransaction.getTo();
        if (to == null) {
            to = "";
        }
        String str = to;
        BigInteger bigInt = Numeric.toBigInt(StringExtKt.orZero(wCEthereumTransaction.getValue()));
        Intrinsics.checkNotNullExpressionValue(bigInt, "toBigInt(value.orZero())");
        String plainString = Convert.fromWei(new BigDecimal(bigInt), Convert.Unit.ETHER).toPlainString();
        Intrinsics.checkNotNullExpressionValue(plainString, "fromWei(\n               …        ).toPlainString()");
        String data = wCEthereumTransaction.getData();
        BigInteger bigInt2 = wCEthereumTransaction.getGas() != null ? Numeric.toBigInt(wCEthereumTransaction.getGas()) : null;
        if (wCEthereumTransaction.getGasPrice() != null) {
            BigInteger bigInt3 = Numeric.toBigInt(wCEthereumTransaction.getGasPrice());
            Intrinsics.checkNotNullExpressionValue(bigInt3, "toBigInt(gasPrice)");
            bigInteger = NumberExtKt.convertFromWei(bigInt3, Convert.Unit.GWEI);
        } else {
            bigInteger = null;
        }
        String nonce = wCEthereumTransaction.getNonce();
        if (nonce != null) {
            bigIntegerOrNull = StringsKt__StringNumberConversionsJVMKt.toBigIntegerOrNull(nonce);
            bigInteger2 = bigIntegerOrNull;
        } else {
            bigInteger2 = null;
        }
        Observable<Result<WalletConnectProcessedTransaction>> observeOn = walletConnectInteractor.getWalletConnectParamsForCryptoTransaction(new WalletConnectTransaction(from, str, plainString, data, bigInt2, bigInteger, bigInteger2, this.cryptoPreferenceHelper.getNetworkType())).observeOn(this.schedulersProvider.mo707ui());
        final WalletConnectManagerImpl$onTransactionProcessing$1$3 walletConnectManagerImpl$onTransactionProcessing$1$3 = new WalletConnectManagerImpl$onTransactionProcessing$1$3(this, j, wCSessionStoreItem, z);
        Consumer<? super Result<WalletConnectProcessedTransaction>> consumer = new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.onTransactionProcessing$lambda$23$lambda$21(Function1.this, obj);
            }
        };
        final WalletConnectManagerImpl$onTransactionProcessing$1$4 walletConnectManagerImpl$onTransactionProcessing$1$4 = new WalletConnectManagerImpl$onTransactionProcessing$1$4(this);
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.storage.data.manager.wallet_connect.WalletConnectManagerImpl$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                WalletConnectManagerImpl.onTransactionProcessing$lambda$23$lambda$22(Function1.this, obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "private fun onTransactio…riptions)\n        }\n    }");
        RxExtKt.autoDispose(subscribe, this.subscriptions);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTransactionProcessing$lambda$23$lambda$21(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTransactionProcessing$lambda$23$lambda$22(Function1 tmp0, Object obj) {
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
        Timber.m4e(th);
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

    /* compiled from: WalletConnectManagerImpl.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
