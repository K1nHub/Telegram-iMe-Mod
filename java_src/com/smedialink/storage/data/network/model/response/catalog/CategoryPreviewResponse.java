package com.smedialink.storage.data.network.model.response.catalog;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoryPreviewResponse.kt */
/* loaded from: classes3.dex */
public final class CategoryPreviewResponse {
    private final CatalogCategoryResponse category;
    private final List<CampaignResponse> items;
    private final CursorMetaResponse meta;
    private final int total;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CategoryPreviewResponse copy$default(CategoryPreviewResponse categoryPreviewResponse, CatalogCategoryResponse catalogCategoryResponse, List list, CursorMetaResponse cursorMetaResponse, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            catalogCategoryResponse = categoryPreviewResponse.category;
        }
        if ((i2 & 2) != 0) {
            list = categoryPreviewResponse.items;
        }
        if ((i2 & 4) != 0) {
            cursorMetaResponse = categoryPreviewResponse.meta;
        }
        if ((i2 & 8) != 0) {
            i = categoryPreviewResponse.total;
        }
        return categoryPreviewResponse.copy(catalogCategoryResponse, list, cursorMetaResponse, i);
    }

    public final CatalogCategoryResponse component1() {
        return this.category;
    }

    public final List<CampaignResponse> component2() {
        return this.items;
    }

    public final CursorMetaResponse component3() {
        return this.meta;
    }

    public final int component4() {
        return this.total;
    }

    public final CategoryPreviewResponse copy(CatalogCategoryResponse category, List<CampaignResponse> items, CursorMetaResponse meta, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        return new CategoryPreviewResponse(category, items, meta, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CategoryPreviewResponse) {
            CategoryPreviewResponse categoryPreviewResponse = (CategoryPreviewResponse) obj;
            return Intrinsics.areEqual(this.category, categoryPreviewResponse.category) && Intrinsics.areEqual(this.items, categoryPreviewResponse.items) && Intrinsics.areEqual(this.meta, categoryPreviewResponse.meta) && this.total == categoryPreviewResponse.total;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.category.hashCode() * 31) + this.items.hashCode()) * 31) + this.meta.hashCode()) * 31) + this.total;
    }

    public String toString() {
        return "CategoryPreviewResponse(category=" + this.category + ", items=" + this.items + ", meta=" + this.meta + ", total=" + this.total + ')';
    }

    public CategoryPreviewResponse(CatalogCategoryResponse category, List<CampaignResponse> items, CursorMetaResponse meta, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        this.category = category;
        this.items = items;
        this.meta = meta;
        this.total = i;
    }

    public final CatalogCategoryResponse getCategory() {
        return this.category;
    }

    public final List<CampaignResponse> getItems() {
        return this.items;
    }

    public final CursorMetaResponse getMeta() {
        return this.meta;
    }

    public final int getTotal() {
        return this.total;
    }
}
