package com.iMe.p023di.module;

import com.iMe.feature.devTools.DevToolRepository;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.scope.Scope;
/* compiled from: SingleOf.kt */
/* renamed from: com.iMe.di.module.FeatureModuleKt$devToolsFeature$1$invoke$$inlined$singleOf$default$1 */
/* loaded from: classes3.dex */
public final class C1292xe4c75efa extends Lambda implements Function2<Scope, ParametersHolder, DevToolRepository> {
    public C1292xe4c75efa() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public final DevToolRepository invoke(Scope single, ParametersHolder it) {
        Intrinsics.checkNotNullParameter(single, "$this$single");
        Intrinsics.checkNotNullParameter(it, "it");
        return new DevToolRepository();
    }
}
