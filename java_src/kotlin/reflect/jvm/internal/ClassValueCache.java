package kotlin.reflect.jvm.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CacheByClass.kt */
/* loaded from: classes4.dex */
final class ClassValueCache<V> extends CacheByClass<V> {
    private volatile ComputableClassValue<V> classValue;

    public ClassValueCache(Function1<? super Class<?>, ? extends V> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.classValue = new ComputableClassValue<>(compute);
    }

    @Override // kotlin.reflect.jvm.internal.CacheByClass
    public V get(Class<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        ComputableClassValue<V> computableClassValue = this.classValue;
        V v = (V) ((SoftReference) computableClassValue.get(key)).get();
        if (v != null) {
            return v;
        }
        computableClassValue.remove(key);
        V v2 = (V) ((SoftReference) computableClassValue.get(key)).get();
        return v2 != null ? v2 : computableClassValue.compute.invoke(key);
    }
}
