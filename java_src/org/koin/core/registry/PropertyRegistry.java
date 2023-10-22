package org.koin.core.registry;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.p041mp.KoinPlatformTools;
/* compiled from: PropertyRegistry.kt */
/* loaded from: classes4.dex */
public final class PropertyRegistry {
    private final Map<String, Object> _values;

    public PropertyRegistry(Koin _koin) {
        Intrinsics.checkNotNullParameter(_koin, "_koin");
        this._values = KoinPlatformTools.INSTANCE.safeHashMap();
    }
}
