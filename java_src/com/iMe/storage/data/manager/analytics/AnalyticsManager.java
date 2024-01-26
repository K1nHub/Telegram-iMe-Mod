package com.iMe.storage.data.manager.analytics;

import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AnalyticsManager.kt */
/* loaded from: classes3.dex */
public final class AnalyticsManager {
    public static final AnalyticsManager INSTANCE = new AnalyticsManager();
    private static final List<AnalyticsProvider> providers = new ArrayList();

    private AnalyticsManager() {
    }

    public static final void registerProvider(AnalyticsProvider provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        providers.add(provider);
    }

    public static final void trackEvent(AnalyticsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        for (AnalyticsProvider analyticsProvider : providers) {
            analyticsProvider.trackEvent(event);
        }
    }
}
