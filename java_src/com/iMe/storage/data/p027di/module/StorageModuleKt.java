package com.iMe.storage.data.p027di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: StorageModule.kt */
/* renamed from: com.iMe.storage.data.di.module.StorageModuleKt */
/* loaded from: classes3.dex */
public final class StorageModuleKt {
    private static Module dataStorageModule = ModuleDSLKt.module$default(false, StorageModuleKt$dataStorageModule$1.INSTANCE, 1, null);

    public static final Module getDataStorageModule() {
        return dataStorageModule;
    }
}
