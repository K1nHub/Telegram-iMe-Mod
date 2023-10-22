package com.iMe.storage.data.network.interceptor;

import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.iMe.storage.data.network.handlers.model.GlobalApiErrorCode;
import com.iMe.storage.data.network.model.response.base.ApiBaseResponse;
import com.iMe.storage.data.utils.extentions.HttpClientExtKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.wallet.SessionInteractor;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.model.binancepay.BinancePayAuthType;
import com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import timber.log.Timber;
/* compiled from: ApiErrorInterceptor.kt */
/* loaded from: classes3.dex */
public final class ApiErrorInterceptor implements Interceptor, KoinComponent {
    private final Lazy authManager$delegate;
    private final Lazy binanceInternalRepository$delegate;
    private final Lazy binancePayManager$delegate;
    private final Gson gson;
    private final RxEventBus rxEventBus;
    private final Lazy sessionInteractor$delegate;
    private final TelegramGateway telegramGateway;

    /* compiled from: ApiErrorInterceptor.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GlobalApiErrorCode.values().length];
            try {
                iArr[GlobalApiErrorCode.ERR_APP_UPDATE_IS_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GlobalApiErrorCode.INVALID_BINANCE_PAY_ACCESS_TOKEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GlobalApiErrorCode.INVALID_BINANCE_PAY_REFRESH_TOKEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GlobalApiErrorCode.JWT_EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GlobalApiErrorCode.JWT_VALIDATION_FAILED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_BEARER_AUTH_REQUIRED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[GlobalApiErrorCode.ERR_BEARER_AUTH_MALFORMED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[GlobalApiErrorCode.REFRESH_TOKEN_ABSENT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ApiErrorInterceptor(Gson gson, RxEventBus rxEventBus, TelegramGateway telegramGateway) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        Intrinsics.checkNotNullParameter(gson, "gson");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        this.gson = gson;
        this.rxEventBus = rxEventBus;
        this.telegramGateway = telegramGateway;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<AuthManager>() { // from class: com.iMe.storage.data.network.interceptor.ApiErrorInterceptor$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.manager.auth.AuthManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final AuthManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(AuthManager.class), qualifier, function0);
            }
        });
        this.authManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<BinanceInternalRepository>() { // from class: com.iMe.storage.data.network.interceptor.ApiErrorInterceptor$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.storage.domain.repository.binancepay.BinanceInternalRepository] */
            @Override // kotlin.jvm.functions.Function0
            public final BinanceInternalRepository invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BinanceInternalRepository.class), qualifier, function0);
            }
        });
        this.binanceInternalRepository$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<BinancePayManager>() { // from class: com.iMe.storage.data.network.interceptor.ApiErrorInterceptor$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.manager.binancepay.BinancePayManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final BinancePayManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BinancePayManager.class), qualifier, function0);
            }
        });
        this.binancePayManager$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<SessionInteractor>() { // from class: com.iMe.storage.data.network.interceptor.ApiErrorInterceptor$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.interactor.wallet.SessionInteractor, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SessionInteractor invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(SessionInteractor.class), qualifier, function0);
            }
        });
        this.sessionInteractor$delegate = lazy4;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final AuthManager getAuthManager() {
        return (AuthManager) this.authManager$delegate.getValue();
    }

    private final BinanceInternalRepository getBinanceInternalRepository() {
        return (BinanceInternalRepository) this.binanceInternalRepository$delegate.getValue();
    }

    private final BinancePayManager getBinancePayManager() {
        return (BinancePayManager) this.binancePayManager$delegate.getValue();
    }

    private final SessionInteractor getSessionInteractor() {
        return (SessionInteractor) this.sessionInteractor$delegate.getValue();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Object obj;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        Response proceed = chain.proceed(request);
        try {
            obj = this.gson.fromJson(HttpClientExtKt.getClonedBodyString(proceed.body()), new TypeToken<ApiBaseResponse<?>>() { // from class: com.iMe.storage.data.network.interceptor.ApiErrorInterceptor$intercept$lambda$0$$inlined$fromJsonTokenType$1
            }.getType());
        } catch (Exception e) {
            Timber.m6e(e);
            obj = null;
        }
        ApiBaseResponse apiBaseResponse = (ApiBaseResponse) obj;
        if (apiBaseResponse != null && apiBaseResponse.isError()) {
            GlobalApiErrorCode.Companion companion = GlobalApiErrorCode.Companion;
            Intrinsics.checkNotNull(obj);
            switch (WhenMappings.$EnumSwitchMapping$0[companion.map(apiBaseResponse.getCode()).ordinal()]) {
                case 1:
                    requestForceAppUpdate();
                    break;
                case 2:
                    String accessToken = getBinancePayManager().getAccessToken();
                    if (accessToken == null) {
                        accessToken = "";
                    }
                    synchronized (this) {
                        proceed = repeatBinanceRequestWithNewToken(accessToken, chain, request, proceed);
                        break;
                    }
                case 3:
                    synchronized (this) {
                        if (getBinancePayManager().isAuthorized()) {
                            getBinancePayManager().logout();
                            this.rxEventBus.publish(DomainRxEvents.BinanceExpiredSession.INSTANCE);
                        }
                        Unit unit = Unit.INSTANCE;
                        break;
                    }
                case 4:
                case 5:
                case 6:
                case 7:
                    String refreshToken = getAuthManager().getRefreshToken();
                    if (refreshToken == null) {
                        refreshToken = "";
                    }
                    if (refreshToken.length() > 0) {
                        String accessToken2 = getAuthManager().getAccessToken();
                        if (accessToken2 == null) {
                            accessToken2 = "";
                        }
                        synchronized (this) {
                            proceed = repeatRequestWithNewToken(accessToken2, chain, request, proceed);
                            break;
                        }
                    } else {
                        forceWalletLogout();
                        break;
                    }
                case 8:
                    forceWalletLogout();
                    break;
            }
        }
        return proceed;
    }

    private final Response repeatBinanceRequestWithNewToken(String str, Interceptor.Chain chain, Request request, Response response) {
        String accessToken = getBinancePayManager().getAccessToken();
        if (accessToken == null) {
            accessToken = "";
        }
        if (Intrinsics.areEqual(str, accessToken)) {
            BinanceInternalRepository binanceInternalRepository = getBinanceInternalRepository();
            BinancePayAuthType binancePayAuthType = BinancePayAuthType.REFRESH_TOKEN;
            String refreshToken = getBinancePayManager().getRefreshToken();
            if (refreshToken == null) {
                refreshToken = "";
            }
            if (binanceInternalRepository.getAuthTokens(binancePayAuthType, refreshToken).blockingFirst().isSuccess()) {
                String accessToken2 = getBinancePayManager().getAccessToken();
                return processNewRequest("authorization-binance", chain, request, accessToken2 != null ? accessToken2 : "");
            }
            return response;
        }
        return processNewRequest("authorization-binance", chain, request, accessToken);
    }

    private final Response repeatRequestWithNewToken(String str, Interceptor.Chain chain, Request request, Response response) {
        String accessToken = getAuthManager().getAccessToken();
        if (accessToken == null) {
            accessToken = "";
        }
        if (Intrinsics.areEqual(str, accessToken)) {
            if (getSessionInteractor().refreshToken().blockingFirst().isSuccess()) {
                String accessToken2 = getAuthManager().getAccessToken();
                return processNewRequest(RtspHeaders.AUTHORIZATION, chain, request, accessToken2 != null ? accessToken2 : "");
            }
            return response;
        }
        return processNewRequest(RtspHeaders.AUTHORIZATION, chain, request, accessToken);
    }

    private final Response processNewRequest(String str, Interceptor.Chain chain, Request request, String str2) {
        return chain.proceed(request.newBuilder().header(str, MetadataInterceptor.Companion.formatAuthToken(str2)).build());
    }

    private final void requestForceAppUpdate() {
        TelegramGateway telegramGateway = this.telegramGateway;
        telegramGateway.setAppVersionRequiredUpdate(telegramGateway.getAppVersion());
        getAuthManager().logout();
        this.rxEventBus.publish(DomainRxEvents.AppUpdateRequired.INSTANCE);
    }

    private final void forceWalletLogout() {
        getAuthManager().logout();
        this.rxEventBus.publish(DomainRxEvents.ForceWalletLogout.INSTANCE);
    }
}
