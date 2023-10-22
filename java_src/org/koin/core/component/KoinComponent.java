package org.koin.core.component;

import org.koin.core.Koin;
import org.koin.p041mp.KoinPlatformTools;
/* compiled from: KoinComponent.kt */
/* loaded from: classes4.dex */
public interface KoinComponent {
    Koin getKoin();

    /* compiled from: KoinComponent.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static Koin getKoin(KoinComponent koinComponent) {
            return KoinPlatformTools.INSTANCE.defaultContext().get();
        }
    }
}
