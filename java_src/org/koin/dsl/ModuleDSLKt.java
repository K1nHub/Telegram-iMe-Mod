package org.koin.dsl;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.module.Module;
/* compiled from: ModuleDSL.kt */
/* loaded from: classes4.dex */
public final class ModuleDSLKt {
    public static /* synthetic */ Module module$default(boolean z, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return module(z, function1);
    }

    public static final Module module(boolean z, Function1<? super Module, Unit> moduleDeclaration) {
        Intrinsics.checkNotNullParameter(moduleDeclaration, "moduleDeclaration");
        Module module = new Module(z);
        moduleDeclaration.invoke(module);
        return module;
    }
}
