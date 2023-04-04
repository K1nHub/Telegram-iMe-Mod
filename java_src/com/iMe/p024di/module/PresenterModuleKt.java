package com.iMe.p024di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: PresenterModule.kt */
/* renamed from: com.iMe.di.module.PresenterModuleKt */
/* loaded from: classes3.dex */
public final class PresenterModuleKt {
    private static Module presentationPresenterModule = ModuleDSLKt.module$default(false, PresenterModuleKt$presentationPresenterModule$1.INSTANCE, 1, null);

    public static final Module getPresentationPresenterModule() {
        return presentationPresenterModule;
    }
}
