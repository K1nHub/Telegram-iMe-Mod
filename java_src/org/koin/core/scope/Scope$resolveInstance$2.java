package org.koin.core.scope;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
public final class Scope$resolveInstance$2 extends Lambda implements Function0<Unit> {
    final /* synthetic */ ParametersHolder $parameters;
    final /* synthetic */ Scope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scope$resolveInstance$2(Scope scope, ParametersHolder parametersHolder) {
        super(0);
        this.this$0 = scope;
        this.$parameters = parametersHolder;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.get_parameterStack().addFirst(this.$parameters);
    }
}
