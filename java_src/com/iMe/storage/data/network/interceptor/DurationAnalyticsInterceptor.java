package com.iMe.storage.data.network.interceptor;

import android.os.Bundle;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okhttp3.Interceptor;
import okhttp3.Response;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: DurationAnalyticsInterceptor.kt */
/* loaded from: classes4.dex */
public final class DurationAnalyticsInterceptor implements Interceptor, KoinComponent {
    private final Lazy analytics$delegate;

    static {
        new Companion(null);
    }

    public DurationAnalyticsInterceptor() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<FirebaseAnalytics>() { // from class: com.iMe.storage.data.network.interceptor.DurationAnalyticsInterceptor$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.google.firebase.analytics.FirebaseAnalytics] */
            @Override // kotlin.jvm.functions.Function0
            public final FirebaseAnalytics invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(FirebaseAnalytics.class), qualifier, function0);
            }
        });
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
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
