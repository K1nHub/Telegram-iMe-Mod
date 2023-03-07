package com.smedialink.storage.data.locale.p027db.dao.main;

import com.smedialink.storage.data.locale.p027db.dao.base.BaseDao;
import com.smedialink.storage.data.locale.p027db.model.filter.FilterSettingsDb;
import com.smedialink.storage.data.mapper.filter.FilterSettingsMappingKt;
import com.smedialink.storage.domain.model.filters.FilterSettingsModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiltersDao.kt */
/* renamed from: com.smedialink.storage.data.locale.db.dao.main.FiltersDao */
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
