package org.koin.core.scope;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
/* compiled from: Scope.kt */
/* loaded from: classes4.dex */
final class Scope$resolveInstance$1 extends Lambda implements Function0<String> {
    final /* synthetic */ ParametersHolder $parameters;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Scope$resolveInstance$1(ParametersHolder parametersHolder) {
        super(0);
        this.$parameters = parametersHolder;
    }

    @Override // kotlin.jvm.functions.Function0
    public final String invoke() {
        return "| put parameters on stack " + this.$parameters + ' ';
    }
}
