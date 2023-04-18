package com.iMe.storage.data.p026di.module;

import org.koin.core.module.Module;
import org.koin.dsl.ModuleDSLKt;
/* compiled from: DatabaseModule.kt */
/* renamed from: com.iMe.storage.data.di.module.DatabaseModuleKt */
/* loaded from: classes3.dex */
public final class DatabaseModuleKt {
    private static Module databaseModule = ModuleDSLKt.module$default(false, DatabaseModuleKt$databaseModule$1.INSTANCE, 1, null);

    public static final Module getDatabaseModule() {
        return databaseModule;
    }
}
