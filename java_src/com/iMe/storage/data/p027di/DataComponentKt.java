package com.iMe.storage.data.p027di;

import com.iMe.storage.data.p027di.module.DataSourceModuleKt;
import com.iMe.storage.data.p027di.module.DatabaseModuleKt;
import com.iMe.storage.data.p027di.module.FirebaseModuleKt;
import com.iMe.storage.data.p027di.module.ManagerModuleKt;
import com.iMe.storage.data.p027di.module.NetworkModuleKt;
import com.iMe.storage.data.p027di.module.RepositoryModuleKt;
import com.iMe.storage.data.p027di.module.StorageModuleKt;
import com.iMe.storage.data.p027di.module.UtilsModuleKt;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import org.koin.core.module.Module;
/* compiled from: DataComponent.kt */
/* renamed from: com.iMe.storage.data.di.DataComponentKt */
/* loaded from: classes3.dex */
public final class DataComponentKt {
    private static List<Module> dataModules;

    public static final List<Module> getDataModules() {
        return dataModules;
    }

    static {
        List<Module> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Module[]{NetworkModuleKt.getNetworkModule(), RepositoryModuleKt.getRepositoryModule(), UtilsModuleKt.getDataUtilsModule(), FirebaseModuleKt.getFirebaseModule(), DatabaseModuleKt.getDatabaseModule(), StorageModuleKt.getDataStorageModule(), ManagerModuleKt.getDataManagerModule(), DataSourceModuleKt.getDataSourceModule()});
        dataModules = listOf;
    }
}
