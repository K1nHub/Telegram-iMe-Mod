package com.smedialink.p025di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: UtilsModule.kt */
/* renamed from: com.smedialink.di.module.UtilsModuleKt */
/* loaded from: classes3.dex */
public final class UtilsModuleKt {
    private static Module presentationUtilsModule = ModuleDSLKt.module$default(false, UtilsModuleKt$presentationUtilsModule$1.INSTANCE, 1, null);

    public static final Module getPresentationUtilsModule() {
        return presentationUtilsModule;
    }
}
