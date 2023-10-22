package com.iMe.storage.data.manager.analytics.providers;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.iMe.storage.data.manager.analytics.AnalyticsProvider;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
/* compiled from: FirebaseAnalyticsProvider.kt */
/* loaded from: classes3.dex */
public final class FirebaseAnalyticsProvider implements AnalyticsProvider, KoinComponent {
    private final Lazy analytics$delegate;

    public FirebaseAnalyticsProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new Function0<FirebaseAnalytics>() { // from class: com.iMe.storage.data.manager.analytics.providers.FirebaseAnalyticsProvider$special$$inlined$inject$default$1
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

    @Override // com.iMe.storage.data.manager.analytics.AnalyticsProvider
    public void trackEvent(AnalyticsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getAnalytics().logEvent(event.getName(), CollectionExtKt.toBundle(event.getProperties()));
    }
}
