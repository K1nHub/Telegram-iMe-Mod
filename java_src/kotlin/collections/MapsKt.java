package kotlin.collections;

import java.util.Map;
import kotlin.Pair;
/* loaded from: classes4.dex */
public final class MapsKt extends MapsKt___MapsKt {
    public static /* bridge */ /* synthetic */ <K, V, M extends Map<? super K, ? super V>> M toMap(Iterable<? extends Pair<? extends K, ? extends V>> iterable, M m) {
        return (M) MapsKt__MapsKt.toMap(iterable, m);
    }

    public static /* bridge */ /* synthetic */ <K, V> Map<K, V> toMutableMap(Map<? extends K, ? extends V> map) {
        return MapsKt__MapsKt.toMutableMap(map);
    }
}
