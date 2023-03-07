package org.koin.core.scope;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KClass;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
public final class Scope$get$1 extends Lambda implements Function0<T> {
    final /* synthetic */ KClass<?> $clazz;
    final /* synthetic */ Function0<ParametersHolder> $parameters;
    final /* synthetic */ Qualifier $qualifier;
    final /* synthetic */ Scope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Scope$get$1(Scope scope, Qualifier qualifier, KClass<?> kClass, Function0<? extends ParametersHolder> function0) {
        super(0);
        this.this$0 = scope;
        this.$qualifier = qualifier;
        this.$clazz = kClass;
        this.$parameters = function0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function0
    public final T invoke() {
        ?? resolveInstance;
        resolveInstance = this.this$0.resolveInstance(this.$qualifier, this.$clazz, this.$parameters);
        return resolveInstance;
    }
}
