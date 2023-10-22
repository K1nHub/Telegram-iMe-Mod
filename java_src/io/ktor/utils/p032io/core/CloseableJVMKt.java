package io.ktor.utils.p032io.core;

import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CloseableJVM.kt */
/* renamed from: io.ktor.utils.io.core.CloseableJVMKt */
/* loaded from: classes4.dex */
public final class CloseableJVMKt {
    private static final Lazy AddSuppressedMethod$delegate;

    public static final void addSuppressedInternal(Throwable th, Throwable other) {
        Intrinsics.checkNotNullParameter(th, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Method addSuppressedMethod = getAddSuppressedMethod();
        if (addSuppressedMethod != null) {
            addSuppressedMethod.invoke(th, other);
        }
    }

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Method>() { // from class: io.ktor.utils.io.core.CloseableJVMKt$AddSuppressedMethod$2
            @Override // kotlin.jvm.functions.Function0
            public final Method invoke() {
                try {
                    return Throwable.class.getMethod("addSuppressed", Throwable.class);
                } catch (Throwable unused) {
                    return null;
                }
            }
        });
        AddSuppressedMethod$delegate = lazy;
    }

    private static final Method getAddSuppressedMethod() {
        return (Method) AddSuppressedMethod$delegate.getValue();
    }
}
