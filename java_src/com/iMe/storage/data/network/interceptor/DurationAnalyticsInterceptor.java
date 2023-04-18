package com.iMe.storage.data.network.interceptor;

import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Response;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: DurationAnalyticsInterceptor.kt */
/* loaded from: classes3.dex */
public final class DurationAnalyticsInterceptor implements Interceptor, KoinComponent {
    private final Lazy analytics$delegate;

    static {
        new Companion(null);
    }

    public DurationAnalyticsInterceptor() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new DurationAnalyticsInterceptor$special$$inlined$inject$default$1(this, null, null));
        this.analytics$delegate = lazy;
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final FirebaseAnalytics getAnalytics() {
        return (FirebaseAnalytics) this.analytics$delegate.getValue();
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        long nanoTime = System.nanoTime();
        Response proceed = chain.proceed(chain.request());
        long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
        FirebaseAnalytics analytics = getAnalytics();
        Bundle bundle = new Bundle();
        bundle.putLong("duration", millis);
        Unit unit = Unit.INSTANCE;
        analytics.logEvent("REQUEST_DURATION", bundle);
        return proceed;
    }

    /* compiled from: DurationAnalyticsInterceptor.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
