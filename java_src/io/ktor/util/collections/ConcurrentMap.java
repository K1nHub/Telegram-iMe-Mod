package io.ktor.util.collections;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;
import p033j$.util.Map;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.concurrent.ConcurrentMap$EL;
import p033j$.util.function.BiConsumer;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
/* compiled from: ConcurrentMapJvm.kt */
/* loaded from: classes4.dex */
public final class ConcurrentMap<Key, Value> implements Map<Key, Value>, KMutableMap, p033j$.util.Map {
    private final ConcurrentHashMap<Key, Value> delegate;

    @Override // p033j$.util.Map
    public /* synthetic */ Object compute(Object obj, BiFunction biFunction) {
        return Map.CC.$default$compute(this, obj, biFunction);
    }

    @Override // p033j$.util.Map
    public /* synthetic */ Object computeIfAbsent(Object obj, Function function) {
        return Map.CC.$default$computeIfAbsent(this, obj, function);
    }

    @Override // p033j$.util.Map
    public /* synthetic */ Object computeIfPresent(Object obj, BiFunction biFunction) {
        return Map.CC.$default$computeIfPresent(this, obj, biFunction);
    }

    @Override // p033j$.util.Map
    public /* synthetic */ void forEach(BiConsumer biConsumer) {
        Map.CC.$default$forEach(this, biConsumer);
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* synthetic */ Object getOrDefault(Object obj, Object obj2) {
        return Map.CC.$default$getOrDefault(this, obj, obj2);
    }

    @Override // p033j$.util.Map
    public /* synthetic */ Object merge(Object obj, Object obj2, BiFunction biFunction) {
        return Map.CC.$default$merge(this, obj, obj2, biFunction);
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* synthetic */ Object putIfAbsent(Object obj, Object obj2) {
        return Map.CC.$default$putIfAbsent(this, obj, obj2);
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* synthetic */ Object replace(Object obj, Object obj2) {
        return Map.CC.$default$replace(this, obj, obj2);
    }

    @Override // java.util.Map, p033j$.util.Map
    public /* synthetic */ boolean replace(Object obj, Object obj2, Object obj3) {
        return Map.CC.$default$replace(this, obj, obj2, obj3);
    }

    @Override // p033j$.util.Map
    public /* synthetic */ void replaceAll(BiFunction biFunction) {
        Map.CC.$default$replaceAll(this, biFunction);
    }

    public ConcurrentMap(int i) {
        this.delegate = new ConcurrentHashMap<>(i);
    }

    public /* synthetic */ ConcurrentMap(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 32 : i);
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ Set<Map.Entry<Key, Value>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ Set<Key> keySet() {
        return getKeys();
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map, p033j$.util.Map
    public final /* bridge */ Collection<Value> values() {
        return getValues();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object computeIfAbsent$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return tmp0.invoke(obj);
    }

    public final Value computeIfAbsent(Key key, final Function0<? extends Value> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ConcurrentHashMap<Key, Value> concurrentHashMap = this.delegate;
        final Function1<Key, Value> function1 = new Function1<Key, Value>() { // from class: io.ktor.util.collections.ConcurrentMap$computeIfAbsent$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Value invoke(Key key2) {
                return block.invoke();
            }
        };
        return (Value) ConcurrentMap$EL.computeIfAbsent(concurrentHashMap, key, new Function() { // from class: io.ktor.util.collections.ConcurrentMap$$ExternalSyntheticLambda0
            @Override // p033j$.util.function.Function
            public /* synthetic */ Function andThen(Function function) {
                return Function.CC.$default$andThen(this, function);
            }

            @Override // p033j$.util.function.Function
            public final Object apply(Object obj) {
                Object computeIfAbsent$lambda$0;
                computeIfAbsent$lambda$0 = ConcurrentMap.computeIfAbsent$lambda$0(Function1.this, obj);
                return computeIfAbsent$lambda$0;
            }

            @Override // p033j$.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function.CC.$default$compose(this, function);
            }
        });
    }

    public int getSize() {
        return this.delegate.size();
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean containsKey(Object obj) {
        return this.delegate.containsKey(obj);
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean containsValue(Object obj) {
        return this.delegate.containsValue(obj);
    }

    @Override // java.util.Map, p033j$.util.Map
    public Value get(Object obj) {
        return this.delegate.get(obj);
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean isEmpty() {
        return this.delegate.isEmpty();
    }

    public Set<Map.Entry<Key, Value>> getEntries() {
        Set<Map.Entry<Key, Value>> entrySet = this.delegate.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "delegate.entries");
        return entrySet;
    }

    public Set<Key> getKeys() {
        Set<Key> keySet = this.delegate.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "delegate.keys");
        return keySet;
    }

    public Collection<Value> getValues() {
        Collection<Value> values = this.delegate.values();
        Intrinsics.checkNotNullExpressionValue(values, "delegate.values");
        return values;
    }

    @Override // java.util.Map, p033j$.util.Map
    public void clear() {
        this.delegate.clear();
    }

    @Override // java.util.Map, p033j$.util.Map
    public Value put(Key key, Value value) {
        return this.delegate.put(key, value);
    }

    @Override // java.util.Map, p033j$.util.Map
    public void putAll(java.util.Map<? extends Key, ? extends Value> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.delegate.putAll(from);
    }

    @Override // java.util.Map, p033j$.util.Map
    public Value remove(Object obj) {
        return this.delegate.remove(obj);
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean remove(Object obj, Object obj2) {
        return this.delegate.remove(obj, obj2);
    }

    @Override // java.util.Map, p033j$.util.Map
    public int hashCode() {
        return this.delegate.hashCode();
    }

    @Override // java.util.Map, p033j$.util.Map
    public boolean equals(Object obj) {
        if (obj instanceof java.util.Map) {
            return Intrinsics.areEqual(obj, this.delegate);
        }
        return false;
    }

    public String toString() {
        return "ConcurrentMapJvm by " + this.delegate;
    }
}
