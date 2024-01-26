package org.ton.p045tl;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.Grouping;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
/* compiled from: TlCombinator.kt */
/* renamed from: org.ton.tl.TlCombinator */
/* loaded from: classes6.dex */
public abstract class TlCombinator<T> extends AbstractTlCombinator<T> {
    private final KClass<T> baseClass;
    private final Map<KClass<? extends T>, TlCodec<? extends T>> class2Constructor;
    private final Map<Integer, TlCodec<? extends T>> id2Constructor;

    private TlCombinator(KClass<T> kClass, List<? extends Pair<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>>> list) {
        Map<KClass<? extends T>, TlCodec<? extends T>> map;
        int mapCapacity;
        this.baseClass = kClass;
        map = MapsKt__MapsKt.toMap(list);
        this.class2Constructor = map;
        final Set<Map.Entry<KClass<? extends T>, TlCodec<? extends T>>> entrySet = map.entrySet();
        Grouping<Map.Entry<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>>, Integer> grouping = new Grouping<Map.Entry<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>>, Integer>() { // from class: org.ton.tl.TlCombinator$special$$inlined$groupingBy$1
            @Override // kotlin.collections.Grouping
            public Iterator<Map.Entry<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>>> sourceIterator() {
                return entrySet.iterator();
            }

            @Override // kotlin.collections.Grouping
            public Integer keyOf(Map.Entry<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>> entry) {
                return Integer.valueOf(entry.getValue().getId());
            }
        };
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>>> sourceIterator = grouping.sourceIterator();
        while (sourceIterator.hasNext()) {
            Map.Entry<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>> next = sourceIterator.next();
            Integer keyOf = grouping.keyOf(next);
            Object obj = linkedHashMap.get(keyOf);
            if (obj == null) {
                linkedHashMap.containsKey(keyOf);
            }
            Map.Entry<? extends KClass<? extends T>, ? extends TlConstructor<? extends T>> entry = next;
            Map.Entry entry2 = (Map.Entry) obj;
            keyOf.intValue();
            if (entry2 != null) {
                throw new IllegalArgumentException("Duplicate ID: " + entry.getKey());
            }
            linkedHashMap.put(keyOf, entry);
        }
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(linkedHashMap.size());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (TlConstructor) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.id2Constructor = linkedHashMap2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TlCombinator(kotlin.reflect.KClass<T> r2, kotlin.Pair<? extends kotlin.reflect.KClass<? extends T>, ? extends org.ton.p045tl.TlConstructor<? extends T>>... r3) {
        /*
            r1 = this;
            java.lang.String r0 = "baseClass"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "constructors"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.util.List r3 = kotlin.collections.ArraysKt.toList(r3)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.p045tl.TlCombinator.<init>(kotlin.reflect.KClass, kotlin.Pair[]):void");
    }

    @Override // org.ton.p045tl.AbstractTlCombinator
    public TlDecoder<? extends T> findConstructorOrNull(int i) {
        return this.id2Constructor.get(Integer.valueOf(i));
    }

    @Override // org.ton.p045tl.AbstractTlCombinator
    public TlEncoder<T> findConstructorOrNull(T value) {
        Intrinsics.checkNotNullParameter(value, "value");
        TlCodec<? extends T> tlCodec = this.class2Constructor.get(Reflection.getOrCreateKotlinClass(value.getClass()));
        if (tlCodec != null) {
            return tlCodec;
        }
        return null;
    }
}
