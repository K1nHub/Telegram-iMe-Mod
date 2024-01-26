package kotlin;

import kotlin.jvm.functions.Function0;
/* loaded from: classes4.dex */
public final class LazyKt extends LazyKt__LazyKt {
    public static /* bridge */ /* synthetic */ <T> Lazy<T> lazy(LazyThreadSafetyMode lazyThreadSafetyMode, Function0<? extends T> function0) {
        return LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, function0);
    }

    public static /* bridge */ /* synthetic */ <T> Lazy<T> lazy(Function0<? extends T> function0) {
        return LazyKt__LazyJVMKt.lazy(function0);
    }
}
