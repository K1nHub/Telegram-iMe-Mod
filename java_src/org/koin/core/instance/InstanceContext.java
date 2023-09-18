package org.koin.core.instance;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;
/* compiled from: InstanceContext.kt */
/* loaded from: classes6.dex */
public final class InstanceContext {
    private final Logger logger;
    private final ParametersHolder parameters;
    private final Scope scope;

    public InstanceContext(Logger logger, Scope scope, ParametersHolder parametersHolder) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.logger = logger;
        this.scope = scope;
        this.parameters = parametersHolder;
    }

    public /* synthetic */ InstanceContext(Logger logger, Scope scope, ParametersHolder parametersHolder, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger, scope, (i & 4) != 0 ? null : parametersHolder);
    }

    public final Logger getLogger() {
        return this.logger;
    }

    public final Scope getScope() {
        return this.scope;
    }

    public final ParametersHolder getParameters() {
        return this.parameters;
    }
}
