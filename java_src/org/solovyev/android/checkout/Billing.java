package org.solovyev.android.checkout;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import org.solovyev.android.checkout.Cache;
/* loaded from: classes4.dex */
public final class Billing {
    private static Logger sLogger;
    private static final EnumMap<State, List<State>> sPreviousStates;
    private Executor mBackground;
    private final ConcurrentCache mCache;
    private int mCheckoutCount;
    private final StaticConfiguration mConfiguration;
    private ServiceConnector mConnector;
    private final Context mContext;
    private final Object mLock;
    private CancellableExecutor mMainThread;
    private final PendingRequests mPendingRequests;
    private final PlayStoreBroadcastReceiver mPlayStoreBroadcastReceiver;
    private final PlayStoreListener mPlayStoreListener;
    private final BillingRequests mRequests;
    private IInAppBillingService mService;
    private State mState;

    /* loaded from: classes4.dex */
    public interface Configuration {
        Cache getCache();

        Inventory getFallbackInventory(Checkout checkout, Executor executor);

        String getPublicKey();

        PurchaseVerifier getPurchaseVerifier();

        boolean isAutoConnect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface ServiceConnector {
        boolean connect();

        void disconnect();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum State {
        INITIAL,
        CONNECTING,
        CONNECTED,
        DISCONNECTING,
        DISCONNECTED,
        FAILED
    }

    static {
        new EmptyRequestListener();
        EnumMap<State, List<State>> enumMap = new EnumMap<>(State.class);
        sPreviousStates = enumMap;
        sLogger = newLogger();
        State state = State.INITIAL;
        enumMap.put((EnumMap<State, List<State>>) state, (State) Collections.emptyList());
        State state2 = State.CONNECTING;
        State state3 = State.FAILED;
        State state4 = State.DISCONNECTED;
        State state5 = State.DISCONNECTING;
        enumMap.put((EnumMap<State, List<State>>) state2, (State) Arrays.asList(state, state3, state4, state5));
        State state6 = State.CONNECTED;
        enumMap.put((EnumMap<State, List<State>>) state6, (State) Collections.singletonList(state2));
        enumMap.put((EnumMap<State, List<State>>) state5, (State) Collections.singletonList(state6));
        enumMap.put((EnumMap<State, List<State>>) state4, (State) Arrays.asList(state5, state2));
        enumMap.put((EnumMap<State, List<State>>) state3, (State) Collections.singletonList(state2));
    }

    public Billing(Context context, Configuration configuration) {
        this(context, new Handler(), configuration);
    }

    public Billing(Context context, Handler handler, Configuration configuration) {
        Object obj = new Object();
        this.mLock = obj;
        this.mPendingRequests = new PendingRequests();
        this.mRequests = newRequestsBuilder().withTag(null).onBackgroundThread().create();
        this.mPlayStoreListener = new PlayStoreListener() { // from class: org.solovyev.android.checkout.Billing.1
            @Override // org.solovyev.android.checkout.PlayStoreListener
            public void onPurchasesChanged() {
                Billing.this.mCache.removeAll(RequestType.GET_PURCHASES.getCacheKeyType());
            }
        };
        this.mState = State.INITIAL;
        this.mBackground = Executors.newSingleThreadExecutor(new ThreadFactory(this) { // from class: org.solovyev.android.checkout.Billing.2
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                return new Thread(runnable, "RequestThread");
            }
        });
        this.mConnector = new DefaultServiceConnector();
        if (context instanceof Application) {
            this.mContext = context;
        } else {
            this.mContext = context.getApplicationContext();
        }
        this.mMainThread = new MainThread(handler);
        StaticConfiguration staticConfiguration = new StaticConfiguration(configuration);
        this.mConfiguration = staticConfiguration;
        staticConfiguration.getPublicKey();
        Cache cache = configuration.getCache();
        this.mCache = new ConcurrentCache(cache != null ? new SafeCache(cache) : null);
        this.mPlayStoreBroadcastReceiver = new PlayStoreBroadcastReceiver(this.mContext, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void error(String str) {
        sLogger.mo54e("Checkout", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void error(Exception exc) {
        error(exc.getMessage(), exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void error(String str, Exception exc) {
        if (exc instanceof BillingException) {
            int response = ((BillingException) exc).getResponse();
            if (response == 0 || response == 1 || response == 2) {
                sLogger.mo53e("Checkout", str, exc);
                return;
            } else {
                sLogger.mo53e("Checkout", str, exc);
                return;
            }
        }
        sLogger.mo53e("Checkout", str, exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void debug(String str, String str2) {
        Logger logger = sLogger;
        logger.mo55d("Checkout/" + str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void debug(String str) {
        sLogger.mo55d("Checkout", str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void warning(String str) {
        sLogger.mo52w("Checkout", str);
    }

    public static Cache newCache() {
        return new MapCache();
    }

    public static PurchaseVerifier newPurchaseVerifier(String str) {
        return new DefaultPurchaseVerifier(str);
    }

    public static Logger newLogger() {
        return new DefaultLogger();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void cancel(RequestListener<?> requestListener) {
        if (requestListener instanceof CancellableRequestListener) {
            ((CancellableRequestListener) requestListener).cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Configuration getConfiguration() {
        return this.mConfiguration;
    }

    void setService(IInAppBillingService iInAppBillingService, boolean z) {
        State state;
        State state2;
        State state3;
        synchronized (this.mLock) {
            if (z) {
                if (this.mState != State.CONNECTING) {
                    if (iInAppBillingService != null) {
                        this.mConnector.disconnect();
                    }
                    return;
                }
                state3 = iInAppBillingService == null ? State.FAILED : State.CONNECTED;
            } else {
                State state4 = this.mState;
                if (state4 != State.INITIAL && state4 != (state = State.DISCONNECTED) && state4 != (state2 = State.FAILED)) {
                    if (state4 == State.CONNECTED) {
                        setState(State.DISCONNECTING);
                    }
                    if (this.mState == State.DISCONNECTING) {
                        state3 = state;
                    } else {
                        State state5 = State.CONNECTING;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Unexpected state: ");
                        sb.append(this.mState);
                        state3 = state2;
                    }
                }
                return;
            }
            this.mService = iInAppBillingService;
            setState(state3);
        }
    }

    private void executePendingRequests() {
        this.mBackground.execute(this.mPendingRequests);
    }

    void setState(State state) {
        synchronized (this.mLock) {
            if (this.mState == state) {
                return;
            }
            sPreviousStates.get(state).contains(this.mState);
            StringBuilder sb = new StringBuilder();
            sb.append("State ");
            sb.append(state);
            sb.append(" can't come right after ");
            sb.append(this.mState);
            sb.append(" state");
            this.mState = state;
            int i = C30647.$SwitchMap$org$solovyev$android$checkout$Billing$State[state.ordinal()];
            if (i == 1) {
                this.mPlayStoreBroadcastReceiver.removeListener(this.mPlayStoreListener);
            } else if (i == 2) {
                this.mPlayStoreBroadcastReceiver.addListener(this.mPlayStoreListener);
                executePendingRequests();
            } else if (i == 3) {
                this.mPlayStoreBroadcastReceiver.contains(this.mPlayStoreListener);
                this.mMainThread.execute(new Runnable() { // from class: org.solovyev.android.checkout.Billing.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Billing.this.mPendingRequests.onConnectionFailed();
                    }
                });
            }
        }
    }

    public void connect() {
        synchronized (this.mLock) {
            State state = this.mState;
            if (state == State.CONNECTED) {
                executePendingRequests();
                return;
            }
            State state2 = State.CONNECTING;
            if (state == state2) {
                return;
            }
            if (this.mConfiguration.isAutoConnect() && this.mCheckoutCount <= 0) {
                warning("Auto connection feature is turned on. There is no need in calling Billing.connect() manually. See Billing.Configuration.isAutoConnect");
            }
            setState(state2);
            this.mMainThread.execute(new Runnable() { // from class: org.solovyev.android.checkout.Billing.4
                @Override // java.lang.Runnable
                public void run() {
                    Billing.this.connectOnMainThread();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void connectOnMainThread() {
        if (this.mConnector.connect()) {
            return;
        }
        setState(State.FAILED);
    }

    public void disconnect() {
        State state;
        synchronized (this.mLock) {
            State state2 = this.mState;
            State state3 = State.DISCONNECTED;
            if (state2 != state3 && state2 != (state = State.DISCONNECTING) && state2 != State.INITIAL) {
                if (state2 == State.FAILED) {
                    this.mPendingRequests.cancelAll();
                    return;
                }
                if (state2 == State.CONNECTED) {
                    setState(state);
                    this.mMainThread.execute(new Runnable() { // from class: org.solovyev.android.checkout.Billing.5
                        @Override // java.lang.Runnable
                        public void run() {
                            Billing.this.disconnectOnMainThread();
                        }
                    });
                } else {
                    setState(state3);
                }
                this.mPendingRequests.cancelAll();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnectOnMainThread() {
        this.mConnector.disconnect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int runWhenConnected(Request request, Object obj) {
        return runWhenConnected(request, null, obj);
    }

    <R> int runWhenConnected(Request<R> request, RequestListener<R> requestListener, Object obj) {
        if (requestListener != null) {
            if (this.mCache.hasCache()) {
                requestListener = new CachingRequestListener(request, requestListener);
            }
            request.setListener(requestListener);
        }
        if (obj != null) {
            request.setTag(obj);
        }
        this.mPendingRequests.add(onConnectedService(request));
        connect();
        return request.getId();
    }

    private RequestRunnable onConnectedService(Request request) {
        return new OnConnectedServiceRunnable(request);
    }

    public RequestsBuilder newRequestsBuilder() {
        return new RequestsBuilder();
    }

    public BillingRequests getRequests() {
        return this.mRequests;
    }

    public Requests getRequests(Object obj) {
        if (obj == null) {
            return (Requests) getRequests();
        }
        return (Requests) new RequestsBuilder().withTag(obj).onMainThread().create();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PurchaseFlow createPurchaseFlow(IntentStarter intentStarter, int i, RequestListener<Purchase> requestListener) {
        if (this.mCache.hasCache()) {
            requestListener = new RequestListenerWrapper<Purchase>(requestListener) { // from class: org.solovyev.android.checkout.Billing.6
                @Override // org.solovyev.android.checkout.RequestListenerWrapper, org.solovyev.android.checkout.RequestListener
                public void onSuccess(Purchase purchase) {
                    Billing.this.mCache.removeAll(RequestType.GET_PURCHASES.getCacheKeyType());
                    super.onSuccess((C30636) purchase);
                }
            };
        }
        return new PurchaseFlow(intentStarter, i, requestListener, this.mConfiguration.getPurchaseVerifier());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public <R> RequestListener<R> onMainThread(RequestListener<R> requestListener) {
        return new MainThreadRequestListener(this.mMainThread, requestListener);
    }

    public void onCheckoutStarted() {
        synchronized (this.mLock) {
            int i = this.mCheckoutCount + 1;
            this.mCheckoutCount = i;
            if (i > 0 && this.mConfiguration.isAutoConnect()) {
                connect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onCheckoutStopped() {
        synchronized (this.mLock) {
            int i = this.mCheckoutCount - 1;
            this.mCheckoutCount = i;
            if (i < 0) {
                this.mCheckoutCount = 0;
                warning("Billing#onCheckoutStopped is called more than Billing#onCheckoutStarted");
            }
            if (this.mCheckoutCount == 0 && this.mConfiguration.isAutoConnect()) {
                disconnect();
            }
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class DefaultConfiguration implements Configuration {
        @Override // org.solovyev.android.checkout.Billing.Configuration
        public Inventory getFallbackInventory(Checkout checkout, Executor executor) {
            return null;
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public boolean isAutoConnect() {
            return true;
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public Cache getCache() {
            return Billing.newCache();
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public PurchaseVerifier getPurchaseVerifier() {
            Billing.warning("Default purchase verification procedure is used, please read https://github.com/serso/android-checkout#purchase-verification");
            return Billing.newPurchaseVerifier(getPublicKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static final class StaticConfiguration implements Configuration {
        private final Configuration mOriginal;
        private final String mPublicKey;
        private PurchaseVerifier mPurchaseVerifier;

        private StaticConfiguration(Configuration configuration) {
            this.mOriginal = configuration;
            this.mPublicKey = configuration.getPublicKey();
            this.mPurchaseVerifier = configuration.getPurchaseVerifier();
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public String getPublicKey() {
            return this.mPublicKey;
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public Cache getCache() {
            return this.mOriginal.getCache();
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public PurchaseVerifier getPurchaseVerifier() {
            return this.mPurchaseVerifier;
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public Inventory getFallbackInventory(Checkout checkout, Executor executor) {
            return this.mOriginal.getFallbackInventory(checkout, executor);
        }

        @Override // org.solovyev.android.checkout.Billing.Configuration
        public boolean isAutoConnect() {
            return this.mOriginal.isAutoConnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public final class OnConnectedServiceRunnable implements RequestRunnable {
        private Request mRequest;

        public OnConnectedServiceRunnable(Request request) {
            this.mRequest = request;
        }

        @Override // org.solovyev.android.checkout.RequestRunnable
        public boolean run() {
            State state;
            IInAppBillingService iInAppBillingService;
            Request request = getRequest();
            if (request == null || checkCache(request)) {
                return true;
            }
            synchronized (Billing.this.mLock) {
                state = Billing.this.mState;
                iInAppBillingService = Billing.this.mService;
            }
            if (state == State.CONNECTED) {
                try {
                    request.start(iInAppBillingService, Billing.this.mContext.getPackageName());
                } catch (RemoteException | RuntimeException | RequestException e) {
                    request.onError(e);
                }
            } else if (state != State.FAILED) {
                Billing.this.connect();
                return false;
            } else {
                request.onError(10000);
            }
            return true;
        }

        private boolean checkCache(Request request) {
            String cacheKey;
            Cache.Entry entry;
            if (!Billing.this.mCache.hasCache() || (cacheKey = request.getCacheKey()) == null || (entry = Billing.this.mCache.get(request.getType().getCacheKey(cacheKey))) == null) {
                return false;
            }
            request.onSuccess(entry.data);
            return true;
        }

        @Override // org.solovyev.android.checkout.RequestRunnable
        public Request getRequest() {
            Request request;
            synchronized (this) {
                request = this.mRequest;
            }
            return request;
        }

        @Override // org.solovyev.android.checkout.RequestRunnable
        public void cancel() {
            synchronized (this) {
                if (this.mRequest != null) {
                    Billing.debug("Cancelling request: " + this.mRequest);
                    this.mRequest.cancel();
                }
                this.mRequest = null;
            }
        }

        @Override // org.solovyev.android.checkout.RequestRunnable
        public Object getTag() {
            Object tag;
            synchronized (this) {
                Request request = this.mRequest;
                tag = request != null ? request.getTag() : null;
            }
            return tag;
        }

        public String toString() {
            return String.valueOf(this.mRequest);
        }
    }

    /* loaded from: classes4.dex */
    public final class RequestsBuilder {
        private Boolean mOnMainThread;
        private Object mTag;

        private RequestsBuilder() {
        }

        public RequestsBuilder withTag(Object obj) {
            this.mTag = obj;
            return this;
        }

        public RequestsBuilder onBackgroundThread() {
            this.mOnMainThread = Boolean.FALSE;
            return this;
        }

        public RequestsBuilder onMainThread() {
            this.mOnMainThread = Boolean.TRUE;
            return this;
        }

        public BillingRequests create() {
            Billing billing = Billing.this;
            Object obj = this.mTag;
            Boolean bool = this.mOnMainThread;
            return new Requests(obj, bool == null ? true : bool.booleanValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public final class Requests implements BillingRequests {
        private final boolean mOnMainThread;
        private final Object mTag;

        private Requests(Object obj, boolean z) {
            this.mTag = obj;
            this.mOnMainThread = z;
        }

        public int isBillingSupported(String str, int i, RequestListener<Object> requestListener) {
            return Billing.this.runWhenConnected(new BillingSupportedRequest(str, i, null), wrapListener(requestListener), this.mTag);
        }

        public int isBillingSupported(String str, RequestListener<Object> requestListener) {
            return isBillingSupported(str, 3, requestListener);
        }

        private <R> RequestListener<R> wrapListener(RequestListener<R> requestListener) {
            return this.mOnMainThread ? Billing.this.onMainThread(requestListener) : requestListener;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Executor getDeliveryExecutor() {
            return this.mOnMainThread ? Billing.this.mMainThread : SameThreadExecutor.INSTANCE;
        }

        @Override // org.solovyev.android.checkout.BillingRequests
        public int getAllPurchases(String str, RequestListener<Purchases> requestListener) {
            GetPurchasesRequest getPurchasesRequest = new GetPurchasesRequest(str, null, Billing.this.mConfiguration.getPurchaseVerifier());
            return Billing.this.runWhenConnected(getPurchasesRequest, wrapListener(new GetAllPurchasesListener(this, getPurchasesRequest, requestListener)), this.mTag);
        }

        @Override // org.solovyev.android.checkout.BillingRequests
        public int getSkus(String str, List<String> list, RequestListener<Skus> requestListener) {
            return Billing.this.runWhenConnected(new GetSkuDetailsRequest(str, list), wrapListener(requestListener), this.mTag);
        }

        @Override // org.solovyev.android.checkout.BillingRequests
        public int purchase(String str, String str2, String str3, Bundle bundle, PurchaseFlow purchaseFlow) {
            return Billing.this.runWhenConnected(new PurchaseRequest(str, str2, str3, bundle), wrapListener(purchaseFlow), this.mTag);
        }

        public void cancelAll() {
            Billing.this.mPendingRequests.cancelAll(this.mTag);
        }

        /* loaded from: classes4.dex */
        private final class GetAllPurchasesListener extends BaseAllPurchasesListener {
            GetAllPurchasesListener(Requests requests, GetPurchasesRequest getPurchasesRequest, RequestListener<Purchases> requestListener) {
                super(getPurchasesRequest, requestListener);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.solovyev.android.checkout.Billing.Requests.BaseAllPurchasesListener
            public GetPurchasesRequest makeContinuationRequest(BasePurchasesRequest basePurchasesRequest, String str) {
                return new GetPurchasesRequest((GetPurchasesRequest) basePurchasesRequest, str);
            }
        }

        /* loaded from: classes4.dex */
        private abstract class BaseAllPurchasesListener implements CancellableRequestListener<Purchases> {
            private final RequestListener<Purchases> mListener;
            private final List<Purchase> mPurchases = new ArrayList();
            private BasePurchasesRequest mRequest;

            protected abstract BasePurchasesRequest makeContinuationRequest(BasePurchasesRequest basePurchasesRequest, String str);

            BaseAllPurchasesListener(BasePurchasesRequest basePurchasesRequest, RequestListener<Purchases> requestListener) {
                this.mRequest = basePurchasesRequest;
                this.mListener = requestListener;
            }

            @Override // org.solovyev.android.checkout.RequestListener
            public void onSuccess(Purchases purchases) {
                this.mPurchases.addAll(purchases.list);
                String str = purchases.continuationToken;
                if (str == null) {
                    this.mListener.onSuccess(new Purchases(purchases.product, this.mPurchases, null));
                    return;
                }
                BasePurchasesRequest makeContinuationRequest = makeContinuationRequest(this.mRequest, str);
                this.mRequest = makeContinuationRequest;
                Requests requests = Requests.this;
                Billing.this.runWhenConnected(makeContinuationRequest, requests.mTag);
            }

            @Override // org.solovyev.android.checkout.RequestListener
            public void onError(int i, Exception exc) {
                this.mListener.onError(i, exc);
            }

            @Override // org.solovyev.android.checkout.CancellableRequestListener
            public void cancel() {
                Billing.cancel(this.mListener);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class CachingRequestListener<R> extends RequestListenerWrapper<R> {
        private final Request<R> mRequest;

        public CachingRequestListener(Request<R> request, RequestListener<R> requestListener) {
            super(requestListener);
            Billing.this.mCache.hasCache();
            this.mRequest = request;
        }

        @Override // org.solovyev.android.checkout.RequestListenerWrapper, org.solovyev.android.checkout.RequestListener
        public void onSuccess(R r) {
            String cacheKey = this.mRequest.getCacheKey();
            RequestType type = this.mRequest.getType();
            if (cacheKey != null) {
                Billing.this.mCache.putIfNotExist(type.getCacheKey(cacheKey), new Cache.Entry(r, System.currentTimeMillis() + type.expiresIn));
            }
            int i = C30647.$SwitchMap$org$solovyev$android$checkout$RequestType[type.ordinal()];
            if (i == 1 || i == 2 || i == 3) {
                Billing.this.mCache.removeAll(RequestType.GET_PURCHASES.getCacheKeyType());
            }
            super.onSuccess(r);
        }

        @Override // org.solovyev.android.checkout.RequestListenerWrapper, org.solovyev.android.checkout.RequestListener
        public void onError(int i, Exception exc) {
            int i2 = C30647.$SwitchMap$org$solovyev$android$checkout$RequestType[this.mRequest.getType().ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (i == 7) {
                    Billing.this.mCache.removeAll(RequestType.GET_PURCHASES.getCacheKeyType());
                }
            } else if (i2 == 3 && i == 8) {
                Billing.this.mCache.removeAll(RequestType.GET_PURCHASES.getCacheKeyType());
            }
            super.onError(i, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.solovyev.android.checkout.Billing$7 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C30647 {
        static final /* synthetic */ int[] $SwitchMap$org$solovyev$android$checkout$Billing$State;
        static final /* synthetic */ int[] $SwitchMap$org$solovyev$android$checkout$RequestType;

        static {
            int[] iArr = new int[RequestType.values().length];
            $SwitchMap$org$solovyev$android$checkout$RequestType = iArr;
            try {
                iArr[RequestType.PURCHASE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$solovyev$android$checkout$RequestType[RequestType.CHANGE_PURCHASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$solovyev$android$checkout$RequestType[RequestType.CONSUME_PURCHASE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[State.values().length];
            $SwitchMap$org$solovyev$android$checkout$Billing$State = iArr2;
            try {
                iArr2[State.DISCONNECTING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$solovyev$android$checkout$Billing$State[State.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$solovyev$android$checkout$Billing$State[State.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes4.dex */
    private final class DefaultServiceConnector implements ServiceConnector {
        private final ServiceConnection mConnection;

        private DefaultServiceConnector() {
            this.mConnection = new ServiceConnection() { // from class: org.solovyev.android.checkout.Billing.DefaultServiceConnector.1
                @Override // android.content.ServiceConnection
                public void onServiceDisconnected(ComponentName componentName) {
                    Billing.this.setService(null, false);
                }

                @Override // android.content.ServiceConnection
                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                    Billing.this.setService(IInAppBillingService.Stub.asInterface(iBinder), true);
                }
            };
        }

        @Override // org.solovyev.android.checkout.Billing.ServiceConnector
        public boolean connect() {
            try {
                Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
                intent.setPackage("com.android.vending");
                return Billing.this.mContext.bindService(intent, this.mConnection, 1);
            } catch (IllegalArgumentException | NullPointerException unused) {
                return false;
            }
        }

        @Override // org.solovyev.android.checkout.Billing.ServiceConnector
        public void disconnect() {
            Billing.this.mContext.unbindService(this.mConnection);
        }
    }
}
