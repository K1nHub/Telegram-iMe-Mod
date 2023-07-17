package org.koin.core.registry;

import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: PropertyRegistry.kt */
/* loaded from: classes4.dex */
public final class PropertyRegistry {
    public PropertyRegistry(Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        KoinPlatformTools.INSTANCE.safeHashMap();
    }
}
