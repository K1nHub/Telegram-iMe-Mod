package com.iMe.storage.data.network.interceptor;

import android.os.Build;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.repository.wallet.WalletSessionRepository;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: MetadataInterceptor.kt */
/* loaded from: classes3.dex */
public final class MetadataInterceptor implements Interceptor, KoinComponent {
    public static final Companion Companion = new Companion(null);
    private final Lazy binancePayManager$delegate;
    private final Lazy telegramGateway$delegate;
    private final Lazy walletSessionRepository$delegate;

    public MetadataInterceptor() {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new MetadataInterceptor$special$$inlined$inject$default$1(this, null, null));
        this.telegramGateway$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new MetadataInterceptor$special$$inlined$inject$default$2(this, null, null));
        this.walletSessionRepository$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new MetadataInterceptor$special$$inlined$inject$default$3(this, null, null));
        this.binancePayManager$delegate = lazy3;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final TelegramGateway getTelegramGateway() {
        return (TelegramGateway) this.telegramGateway$delegate.getValue();
    }

    private final WalletSessionRepository getWalletSessionRepository() {
        return (WalletSessionRepository) this.walletSessionRepository$delegate.getValue();
    }

    private final BinancePayManager getBinancePayManager() {
        return (BinancePayManager) this.binancePayManager$delegate.getValue();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        boolean z = false;
        String token = getWalletSessionRepository().getCurrentAccountToken(false).blockingFirst();
        Request.Builder header = chain.request().newBuilder().header("x-device-id", getTelegramGateway().getDeviceId()).header("accept-language", getTelegramGateway().getCurrentLocaleInformation().getSupportedLanguage()).header("x-app-version", getTelegramGateway().getAppVersion());
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        Request.Builder header2 = header.header("x-device-operating-system-version", RELEASE).header("x-device-operating-system", "ANDROID");
        if (!(token == null || token.length() == 0)) {
            Companion companion = Companion;
            Intrinsics.checkNotNullExpressionValue(token, "token");
            header2.header(RtspHeaders.AUTHORIZATION, companion.formatAuthToken(token));
        }
        if (isBinanceRequest(chain.request())) {
            String accessToken = getBinancePayManager().getAccessToken();
            if (accessToken == null || accessToken.length() == 0) {
                z = true;
            }
            if (!z) {
                Companion companion2 = Companion;
                String accessToken2 = getBinancePayManager().getAccessToken();
                if (accessToken2 == null) {
                    accessToken2 = "";
                }
                header2.header("authorization-binance", companion2.formatAuthToken(accessToken2));
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
