package com.iMe.p023di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: AdapterModule.kt */
/* renamed from: com.iMe.di.module.AdapterModuleKt */
/* loaded from: classes3.dex */
public final class AdapterModuleKt {
    private static Module presentationAdapterModule = ModuleDSLKt.module$default(false, AdapterModuleKt$presentationAdapterModule$1.INSTANCE, 1, null);

    public static final Module getPresentationAdapterModule() {
        return presentationAdapterModule;
    }
}
