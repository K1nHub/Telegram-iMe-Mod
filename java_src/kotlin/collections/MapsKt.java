package kotlin.collections;

import java.util.Map;
import kotlin.sequences.Sequence;
/* loaded from: classes4.dex */
public final class MapsKt extends MapsKt___MapsKt {
    public static /* bridge */ /* synthetic */ <K, V> Sequence<Map.Entry<K, V>> asSequence(Map<? extends K, ? extends V> map) {
        return MapsKt___MapsKt.asSequence(map);
    }

    public static /* bridge */ /* synthetic */ <K, V> V getValue(Map<K, ? extends V> map, K k) {
        return (V) MapsKt__MapsKt.getValue(map, k);
    }

    public static /* bridge */ /* synthetic */ int mapCapacity(int i) {
        return MapsKt__MapsJVMKt.mapCapacity(i);
    }

    public static /* bridge */ /* synthetic */ <K, V> Map<K, V> toMap(Map<? extends K, ? extends V> map) {
        return MapsKt__MapsKt.toMap(map);
    }
}
