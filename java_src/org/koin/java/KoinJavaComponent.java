package org.koin.java;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.p042mp.KoinPlatformTools;
/* compiled from: KoinJavaComponent.kt */
/* loaded from: classes4.dex */
public final class KoinJavaComponent {
    public static final KoinJavaComponent INSTANCE = new KoinJavaComponent();

    public static final <T> T get(Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) get$default(clazz, null, null, 6, null);
    }

    public static final <T> Lazy<T> inject(Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return inject$default(clazz, null, null, 6, null);
    }

    private KoinJavaComponent() {
    }

    public static /* synthetic */ Lazy inject$default(Class cls, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return inject(cls, qualifier, function0);
    }

    public static final <T> Lazy<T> inject(Class<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Lazy<T> lazy;
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new KoinJavaComponent$inject$1(clazz, qualifier, function0));
        return lazy;
    }

    public static /* synthetic */ Object get$default(Class cls, Qualifier qualifier, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            qualifier = null;
        }
        if ((i & 4) != 0) {
            function0 = null;
        }
        return get(cls, qualifier, function0);
    }

    public static final <T> T get(Class<?> clazz, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (T) getKoin().get(JvmClassMappingKt.getKotlinClass(clazz), qualifier, function0);
    }

    public static final Koin getKoin() {
        return KoinPlatformTools.INSTANCE.defaultContext().get();
    }
}
