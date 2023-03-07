package org.koin.core.instance;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;
/* compiled from: InstanceContext.kt */
/* loaded from: classes4.dex */
public final class InstanceContext {
    private final Koin koin;
    private final ParametersHolder parameters;
    private final Scope scope;

    public InstanceContext(Koin koin, Scope scope, ParametersHolder parametersHolder) {
        Intrinsics.checkNotNullParameter(koin, "koin");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.koin = koin;
        this.scope = scope;
        this.parameters = parametersHolder;
    }

    public /* synthetic */ InstanceContext(Koin koin, Scope scope, ParametersHolder parametersHolder, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(koin, scope, (i & 4) != 0 ? null : parametersHolder);
    }

    public final Koin getKoin() {
        return this.koin;
    }

    public final Scope getScope() {
        return this.scope;
    }

    public final ParametersHolder getParameters() {
        return this.parameters;
    }
}
