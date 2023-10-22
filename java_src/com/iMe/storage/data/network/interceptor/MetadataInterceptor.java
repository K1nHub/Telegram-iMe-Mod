package com.iMe.storage.data.network.interceptor;

import android.os.Build;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.repository.wallet.SessionRepository;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt;
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
/* compiled from: MetadataInterceptor.kt */
/* loaded from: classes3.dex */
public final class MetadataInterceptor implements Interceptor, KoinComponent {
    public static final Companion Companion = new Companion(null);
    private final Lazy binancePayManager$delegate;
    private final Lazy sessionRepository$delegate;
    private final Lazy telegramGateway$delegate;

    public MetadataInterceptor() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramGateway>() { // from class: com.iMe.storage.data.network.interceptor.MetadataInterceptor$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.gateway.TelegramGateway, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TelegramGateway invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), qualifier, function0);
            }
        });
        this.telegramGateway$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<SessionRepository>() { // from class: com.iMe.storage.data.network.interceptor.MetadataInterceptor$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.repository.wallet.SessionRepository, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SessionRepository invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(SessionRepository.class), qualifier, function0);
            }
        });
        this.sessionRepository$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<BinancePayManager>() { // from class: com.iMe.storage.data.network.interceptor.MetadataInterceptor$special$$inlined$inject$default$3
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
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final TelegramGateway getTelegramGateway() {
        return (TelegramGateway) this.telegramGateway$delegate.getValue();
    }

    private final SessionRepository getSessionRepository() {
        return (SessionRepository) this.sessionRepository$delegate.getValue();
    }

    private final BinancePayManager getBinancePayManager() {
        return (BinancePayManager) this.binancePayManager$delegate.getValue();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        String token = getSessionRepository().getCurrentAccountToken(false).blockingFirst();
        String accessToken = getBinancePayManager().getAccessToken();
        if (accessToken == null) {
            accessToken = "";
        }
        Request.Builder header = chain.request().newBuilder().header("x-device-id", getTelegramGateway().getDeviceId()).header("accept-language", getTelegramGateway().getCurrentLanguage()).header("x-app-version", getTelegramGateway().getAppVersion());
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        Request.Builder header2 = header.header("x-device-operating-system-version", RELEASE).header("x-device-operating-system", "ANDROID");
        if (!(token == null || token.length() == 0)) {
            Companion companion = Companion;
            Intrinsics.checkNotNullExpressionValue(token, "token");
            header2.header(RtspHeaders.AUTHORIZATION, companion.formatAuthToken(token));
        }
        if (isBinanceRequest(chain.request())) {
            if (accessToken.length() > 0) {
                header2.header("authorization-binance", Companion.formatAuthToken(accessToken));
            }
        }
        return chain.proceed(header2.build());
    }

    private final boolean isBinanceRequest(Request request) {
        boolean contains$default;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) request.url().encodedPath(), (CharSequence) "/binance/", false, 2, (Object) null);
        return contains$default;
    }

    /* compiled from: MetadataInterceptor.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String formatAuthToken(String token) {
            Intrinsics.checkNotNullParameter(token, "token");
            return "Bearer " + token;
        }
    }
}
