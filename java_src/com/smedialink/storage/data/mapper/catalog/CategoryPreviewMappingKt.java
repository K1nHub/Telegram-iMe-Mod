package com.smedialink.storage.data.mapper.catalog;

import com.smedialink.storage.data.network.model.response.catalog.CampaignResponse;
import com.smedialink.storage.data.network.model.response.catalog.CategoryPreviewResponse;
import com.smedialink.storage.domain.model.catalog.CatalogCategory;
import com.smedialink.storage.domain.model.catalog.CategoryPreview;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoryPreviewMapping.kt */
/* loaded from: classes3.dex */
public final class CategoryPreviewMappingKt {
    public static final CategoryPreview mapToDomain(CategoryPreviewResponse categoryPreviewResponse) {
        int collectionSizeOrDefault;
        List mutableList;
        Intrinsics.checkNotNullParameter(categoryPreviewResponse, "<this>");
        CatalogCategory mapToDomain = ChannelCategoryMappingKt.mapToDomain(categoryPreviewResponse.getCategory());
        List<CampaignResponse> items = categoryPreviewResponse.getItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(items, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CampaignResponse campaignResponse : items) {
            arrayList.add(CampaignMappingKt.mapToDomain(campaignResponse));
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return new CategoryPreview(mapToDomain, mutableList, CursorMetaMappingKt.mapToDomain(categoryPreviewResponse.getMeta()), categoryPreviewResponse.getTotal());
    }
}
