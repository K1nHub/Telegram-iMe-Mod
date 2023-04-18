package com.iMe.p023di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: ManagerModule.kt */
/* renamed from: com.iMe.di.module.ManagerModuleKt */
/* loaded from: classes3.dex */
public final class ManagerModuleKt {
    private static Module presentationManagerModule = ModuleDSLKt.module$default(false, ManagerModuleKt$presentationManagerModule$1.INSTANCE, 1, null);

    public static final Module getPresentationManagerModule() {
        return presentationManagerModule;
    }
}
