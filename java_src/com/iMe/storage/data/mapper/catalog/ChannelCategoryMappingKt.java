package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.locale.p027db.model.catalog.CatalogCategoryDb;
import com.iMe.storage.data.network.model.response.catalog.CatalogCategoryResponse;
import com.iMe.storage.data.network.model.response.catalog.CategoryWithCounterResponse;
import com.iMe.storage.domain.model.catalog.CatalogCategory;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelCategoryMapping.kt */
/* loaded from: classes4.dex */
public final class ChannelCategoryMappingKt {
    public static final CatalogCategory mapToDomain(CatalogCategoryResponse catalogCategoryResponse) {
        Intrinsics.checkNotNullParameter(catalogCategoryResponse, "<this>");
        return new CatalogCategory(catalogCategoryResponse.getId(), catalogCategoryResponse.getTitle());
    }

    public static final CategoryWithCounter mapToDomain(CategoryWithCounterResponse categoryWithCounterResponse) {
        Intrinsics.checkNotNullParameter(categoryWithCounterResponse, "<this>");
        return new CategoryWithCounter(mapToDomain(categoryWithCounterResponse.getCategory()), categoryWithCounterResponse.getTotal());
    }

    public static final CategoryWithCounter mapToDomain(CatalogCategoryDb catalogCategoryDb) {
        Intrinsics.checkNotNullParameter(catalogCategoryDb, "<this>");
        return new CategoryWithCounter(new CatalogCategory(catalogCategoryDb.getId(), catalogCategoryDb.getTitle()), catalogCategoryDb.getTotal());
    }

    public static final CatalogCategoryDb mapToDb(CategoryWithCounter categoryWithCounter) {
        Intrinsics.checkNotNullParameter(categoryWithCounter, "<this>");
        return new CatalogCategoryDb(categoryWithCounter.getCategory().getId(), categoryWithCounter.getCategory().getTitle(), categoryWithCounter.getTotal());
    }
}
