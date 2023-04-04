package com.iMe.storage.data.locale.p028db.dao.main;

import com.iMe.storage.data.locale.p028db.dao.base.BaseDao;
import com.iMe.storage.data.locale.p028db.model.filter.FilterSettingsDb;
import com.iMe.storage.data.mapper.filter.FilterSettingsMappingKt;
import com.iMe.storage.domain.model.filters.FilterSettingsModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiltersDao.kt */
/* renamed from: com.iMe.storage.data.locale.db.dao.main.FiltersDao */
/* loaded from: classes3.dex */
public abstract class FiltersDao implements BaseDao<FilterSettingsDb> {
    public abstract List<FilterSettingsDb> getFilterSettings(long j);

    public abstract void removeFilterSettings(int i, long j);

    public abstract void resetSettings(long j);

    public void restoreBackup(long j, List<FilterSettingsModel> filters) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(filters, "filters");
        resetSettings(j);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(filters, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (FilterSettingsModel filterSettingsModel : filters) {
            arrayList.add(FilterSettingsMappingKt.mapToDb(filterSettingsModel, j));
        }
        insert((List) arrayList);
    }
}
