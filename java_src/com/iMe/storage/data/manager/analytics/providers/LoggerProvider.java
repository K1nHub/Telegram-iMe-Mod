package com.iMe.storage.data.manager.analytics.providers;

import com.iMe.storage.data.manager.analytics.AnalyticsProvider;
import com.iMe.storage.data.manager.common.EnvironmentManager;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import timber.log.Timber;
/* compiled from: LoggerProvider.kt */
/* loaded from: classes3.dex */
public final class LoggerProvider implements AnalyticsProvider, KoinComponent {
    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    @Override // com.iMe.storage.data.manager.analytics.AnalyticsProvider
    public void trackEvent(AnalyticsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (EnvironmentManager.INSTANCE.getEnvironment().isStageEnvironment()) {
            Timber.m5i("LoggerProvider | Event name: " + event.getName() + " | Event properties: " + event.getProperties(), new Object[0]);
        }
    }
}
