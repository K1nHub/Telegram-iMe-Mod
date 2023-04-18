package com.iMe.storage.data.repository.catalog;

import com.iMe.storage.data.locale.p027db.model.catalog.CatalogCategoryDb;
import com.iMe.storage.data.mapper.catalog.ChannelCategoryMappingKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.catalog.CategoryWithCounter;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CatalogRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class CatalogRepositoryImpl$getCategories$1 extends Lambda implements Function1<List<? extends CatalogCategoryDb>, Result<? extends List<? extends CategoryWithCounter>>> {
    public static final CatalogRepositoryImpl$getCategories$1 INSTANCE = new CatalogRepositoryImpl$getCategories$1();

    CatalogRepositoryImpl$getCategories$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Result<? extends List<? extends CategoryWithCounter>> invoke(List<? extends CatalogCategoryDb> list) {
        return invoke2((List<CatalogCategoryDb>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Result<List<CategoryWithCounter>> invoke2(List<CatalogCategoryDb> categories) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(categories, "categories");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(categories, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CatalogCategoryDb catalogCategoryDb : categories) {
            arrayList.add(ChannelCategoryMappingKt.mapToDomain(catalogCategoryDb));
        }
        return Result.Companion.success(arrayList);
    }
}
