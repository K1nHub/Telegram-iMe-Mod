package org.koin.core.component;

import org.koin.core.Koin;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: KoinComponent.kt */
/* loaded from: classes6.dex */
public interface KoinComponent {
    Koin getKoin();

    /* compiled from: KoinComponent.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static Koin getKoin(KoinComponent koinComponent) {
            return KoinPlatformTools.INSTANCE.defaultContext().get();
        }
    }
}
