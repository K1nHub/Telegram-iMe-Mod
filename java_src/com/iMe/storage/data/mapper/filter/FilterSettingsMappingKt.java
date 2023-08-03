package com.iMe.storage.data.mapper.filter;

import com.iMe.storage.data.locale.p027db.model.filter.FilterSettingsDb;
import com.iMe.storage.domain.model.filters.FilterFab;
import com.iMe.storage.domain.model.filters.FilterIcon;
import com.iMe.storage.domain.model.filters.FilterSettingsModel;
import java.util.List;
import java.util.Set;
import java.util.SortedSet;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FilterSettingsMapping.kt */
/* loaded from: classes3.dex */
public final class FilterSettingsMappingKt {
    public static final FilterSettingsModel mapToDomain(FilterSettingsDb filterSettingsDb) {
        Set<String> set;
        Intrinsics.checkNotNullParameter(filterSettingsDb, "<this>");
        int filterId = filterSettingsDb.getFilterId();
        FilterFab.Companion companion = FilterFab.Companion;
        set = CollectionsKt___CollectionsKt.toSet(filterSettingsDb.getFabs());
        SortedSet<FilterFab> mapNamesToEnums = companion.mapNamesToEnums(set);
        String icon = filterSettingsDb.getIcon();
        return new FilterSettingsModel(filterId, mapNamesToEnums, icon != null ? FilterIcon.valueOf(icon) : null);
    }

    public static final FilterSettingsDb mapToDb(FilterSettingsModel filterSettingsModel, long j) {
        List list;
        Intrinsics.checkNotNullParameter(filterSettingsModel, "<this>");
        int filterId = filterSettingsModel.getFilterId();
        list = CollectionsKt___CollectionsKt.toList(FilterFab.Companion.mapEnumsToNames(filterSettingsModel.getFabs()));
        FilterIcon icon = filterSettingsModel.getIcon();
        return new FilterSettingsDb(filterId, list, icon != null ? icon.name() : null, j);
    }
}
