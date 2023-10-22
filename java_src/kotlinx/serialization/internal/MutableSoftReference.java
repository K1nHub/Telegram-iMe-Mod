package kotlinx.serialization.internal;

import java.lang.ref.SoftReference;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Caching.kt */
/* loaded from: classes4.dex */
final class MutableSoftReference<T> {
    public volatile SoftReference<T> reference = new SoftReference<>(null);

    public final synchronized T getOrSetWithLock(Function0<? extends T> factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        T t = this.reference.get();
        if (t != null) {
            return t;
        }
        T invoke = factory.invoke();
        this.reference = new SoftReference<>(invoke);
        return invoke;
    }
}
