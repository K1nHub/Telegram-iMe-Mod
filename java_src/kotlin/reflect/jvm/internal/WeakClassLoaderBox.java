package kotlin.reflect.jvm.internal;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: moduleByClassLoader.kt */
/* loaded from: classes4.dex */
final class WeakClassLoaderBox {
    private final int identityHashCode;
    private final WeakReference<ClassLoader> ref;

    public final void setTemporaryStrongRef(ClassLoader classLoader) {
    }

    public WeakClassLoaderBox(ClassLoader classLoader) {
        Intrinsics.checkNotNullParameter(classLoader, "classLoader");
        this.ref = new WeakReference<>(classLoader);
        this.identityHashCode = System.identityHashCode(classLoader);
    }

    public boolean equals(Object obj) {
        return (obj instanceof WeakClassLoaderBox) && this.ref.get() == ((WeakClassLoaderBox) obj).ref.get();
    }

    public int hashCode() {
        return this.identityHashCode;
    }

    public String toString() {
        String classLoader;
        ClassLoader classLoader2 = this.ref.get();
        return (classLoader2 == null || (classLoader = classLoader2.toString()) == null) ? "<null>" : classLoader;
    }
}
