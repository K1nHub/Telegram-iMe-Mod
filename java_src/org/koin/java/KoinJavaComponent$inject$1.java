package org.koin.java;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: KoinJavaComponent.kt */
/* loaded from: classes4.dex */
public final class KoinJavaComponent$inject$1 extends Lambda implements Function0<T> {
    final /* synthetic */ Class<?> $clazz;
    final /* synthetic */ Function0<ParametersHolder> $parameters;
    final /* synthetic */ Qualifier $qualifier;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public KoinJavaComponent$inject$1(Class<?> cls, Qualifier qualifier, Function0<? extends ParametersHolder> function0) {
        super(0);
        this.$clazz = cls;
        this.$qualifier = qualifier;
        this.$parameters = function0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final T invoke() {
        return KoinJavaComponent.get(this.$clazz, this.$qualifier, this.$parameters);
    }
}
