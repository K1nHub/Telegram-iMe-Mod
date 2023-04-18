package org.koin.core.scope;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
public final class Scope$resolveInstance$3 extends Lambda implements Function0<ParametersHolder> {
    final /* synthetic */ Scope this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scope$resolveInstance$3(Scope scope) {
        super(0);
        this.this$0 = scope;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ParametersHolder invoke() {
        return this.this$0.get_parameterStack().removeFirstOrNull();
    }
}
