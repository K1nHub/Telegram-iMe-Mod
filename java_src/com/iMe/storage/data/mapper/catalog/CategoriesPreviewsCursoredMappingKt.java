package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.network.model.response.catalog.CategoriesPreviewsCursoredResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoryPreviewResponse;
import com.iMe.storage.domain.model.catalog.CategoriesPreviewsCursored;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoriesPreviewsCursoredMapping.kt */
/* loaded from: classes4.dex */
public final class CategoriesPreviewsCursoredMappingKt {
    public static final CategoriesPreviewsCursored mapToDomain(CategoriesPreviewsCursoredResponse categoriesPreviewsCursoredResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(categoriesPreviewsCursoredResponse, "<this>");
        List<CategoryPreviewResponse> items = categoriesPreviewsCursoredResponse.getItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(items, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CategoryPreviewResponse categoryPreviewResponse : items) {
            arrayList.add(CategoryPreviewMappingKt.mapToDomain(categoryPreviewResponse));
        }
        return new CategoriesPreviewsCursored(arrayList, CursorMetaMappingKt.mapToDomain(categoriesPreviewsCursoredResponse.getMeta()));
    }
}
