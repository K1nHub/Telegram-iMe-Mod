package kotlin.collections;

import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Maps.kt */
/* loaded from: classes6.dex */
public class MapsKt__MapsKt extends MapsKt__MapsJVMKt {
    public static <K, V> Map<K, V> emptyMap() {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        Intrinsics.checkNotNull(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static <K, V> Map<K, V> mapOf(Pair<? extends K, ? extends V>... pairs) {
        Map<K, V> emptyMap;
        int mapCapacity;
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        if (pairs.length > 0) {
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(pairs.length);
            return toMap(pairs, new LinkedHashMap(mapCapacity));
        }
        emptyMap = emptyMap();
        return emptyMap;
    }

    public static <K, V> Map<K, V> mutableMapOf(Pair<? extends K, ? extends V>... pairs) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(pairs.length);
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        putAll(linkedHashMap, pairs);
        return linkedHashMap;
    }

    public static <K, V> HashMap<K, V> hashMapOf(Pair<? extends K, ? extends V>... pairs) {
        int mapCapacity;
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(pairs.length);
        HashMap<K, V> hashMap = new HashMap<>(mapCapacity);
        putAll(hashMap, pairs);
        return hashMap;
    }

    public static final <K, V> void putAll(Map<? super K, ? super V> map, Pair<? extends K, ? extends V>[] pairs) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            map.put((K) pair.component1(), (V) pair.component2());
        }
    }

    public static <K, V> void putAll(Map<? super K, ? super V> map, Iterable<? extends Pair<? extends K, ? extends V>> pairs) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        Intrinsics.checkNotNullParameter(pairs, "pairs");
        for (Pair<? extends K, ? extends V> pair : pairs) {
            map.put((K) pair.component1(), (V) pair.component2());
        }
    }

    public static <K, V> Map<K, V> toMap(Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        Map<K, V> emptyMap;
        Map<K, V> mapOf;
        int mapCapacity;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size == 0) {
                emptyMap = emptyMap();
                return emptyMap;
            } else if (size == 1) {
                mapOf = MapsKt__MapsJVMKt.mapOf(iterable instanceof List ? (Pair<? extends K, ? extends V>) ((List) iterable).get(0) : iterable.iterator().next());
                return mapOf;
            } else {
                mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collection.size());
                return toMap(iterable, new LinkedHashMap(mapCapacity));
            }
        }
        return optimizeReadOnlyMap(toMap(iterable, new LinkedHashMap()));
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(Iterable<? extends Pair<? extends K, ? extends V>> iterable, M destination) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        putAll(destination, iterable);
        return destination;
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M toMap(Pair<? extends K, ? extends V>[] pairArr, M destination) {
        Intrinsics.checkNotNullParameter(pairArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        putAll(destination, pairArr);
        return destination;
    }

    public static <K, V> Map<K, V> toMap(Map<? extends K, ? extends V> map) {
        Map<K, V> emptyMap;
        Map<K, V> mutableMap;
        Intrinsics.checkNotNullParameter(map, "<this>");
        int size = map.size();
        if (size == 0) {
            emptyMap = emptyMap();
            return emptyMap;
        } else if (size == 1) {
            return MapsKt__MapsJVMKt.toSingletonMap(map);
        } else {
            mutableMap = toMutableMap(map);
            return mutableMap;
        }
    }

    public static <K, V> Map<K, V> toMutableMap(Map<? extends K, ? extends V> map) {
        Intrinsics.checkNotNullParameter(map, "<this>");
        return new LinkedHashMap(map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> optimizeReadOnlyMap(Map<K, ? extends V> map) {
        Map<K, V> emptyMap;
        Intrinsics.checkNotNullParameter(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? map : MapsKt__MapsJVMKt.toSingletonMap(map);
        }
        emptyMap = emptyMap();
        return emptyMap;
    }
}
