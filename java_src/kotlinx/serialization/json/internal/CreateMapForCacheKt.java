package kotlinx.serialization.json.internal;

import java.util.Map;
import p033j$.util.concurrent.ConcurrentHashMap;
/* compiled from: createMapForCache.kt */
/* loaded from: classes4.dex */
public final class CreateMapForCacheKt {
    public static final <K, V> Map<K, V> createMapForCache(int i) {
        return new ConcurrentHashMap(i);
    }
}
