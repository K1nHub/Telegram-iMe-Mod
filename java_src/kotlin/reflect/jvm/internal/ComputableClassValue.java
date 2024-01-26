package kotlin.reflect.jvm.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CacheByClass.kt */
/* loaded from: classes4.dex */
final class ComputableClassValue<V> extends ClassValue<SoftReference<V>> {
    public final Function1<Class<?>, V> compute;

    /* JADX WARN: Multi-variable type inference failed */
    public ComputableClassValue(Function1<? super Class<?>, ? extends V> compute) {
        Intrinsics.checkNotNullParameter(compute, "compute");
        this.compute = compute;
    }
}
