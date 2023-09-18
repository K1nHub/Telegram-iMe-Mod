package org.koin.core.parameter;

import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ParametersHolder.kt */
/* loaded from: classes6.dex */
public final class ParametersHolderKt {
    public static final ParametersHolder parametersOf(Object... parameters) {
        List mutableList;
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        mutableList = ArraysKt___ArraysKt.toMutableList(parameters);
        return new ParametersHolder(mutableList);
    }

    public static final ParametersHolder emptyParametersHolder() {
        return new ParametersHolder(null, 1, null);
    }
}
