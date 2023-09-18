package com.iMe.mapper.catalog;

import com.iMe.model.common.FilterItem;
import com.iMe.storage.domain.model.catalog.CatalogCategory;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCategoriesUiMapping.kt */
/* loaded from: classes4.dex */
public final class CatalogCategoriesUiMappingKt {
    public static final List<FilterItem> mapToUi(List<CategoryWithCounter> list) {
        int collectionSizeOrDefault;
        List<FilterItem> mutableList;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CategoryWithCounter categoryWithCounter : list) {
            CatalogCategory category = categoryWithCounter.getCategory();
            arrayList.add(new FilterItem(category.getId(), category.getTitle(), false));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }
}
