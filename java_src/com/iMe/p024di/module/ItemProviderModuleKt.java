package com.iMe.p024di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: ItemProviderModule.kt */
/* renamed from: com.iMe.di.module.ItemProviderModuleKt */
/* loaded from: classes3.dex */
public final class ItemProviderModuleKt {
    private static Module presentationItemProviderModule = ModuleDSLKt.module$default(false, ItemProviderModuleKt$presentationItemProviderModule$1.INSTANCE, 1, null);

    public static final Module getPresentationItemProviderModule() {
        return presentationItemProviderModule;
    }
}
