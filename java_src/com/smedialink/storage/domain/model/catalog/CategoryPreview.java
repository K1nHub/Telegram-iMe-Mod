package com.smedialink.storage.domain.model.catalog;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoryPreview.kt */
/* loaded from: classes3.dex */
public final class CategoryPreview {
    private final CatalogCategory category;
    private final List<Campaign> items;
    private final CursorMeta meta;
    private final int total;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CategoryPreview copy$default(CategoryPreview categoryPreview, CatalogCategory catalogCategory, List list, CursorMeta cursorMeta, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            catalogCategory = categoryPreview.category;
        }
        if ((i2 & 2) != 0) {
            list = categoryPreview.items;
        }
        if ((i2 & 4) != 0) {
            cursorMeta = categoryPreview.meta;
        }
        if ((i2 & 8) != 0) {
            i = categoryPreview.total;
        }
        return categoryPreview.copy(catalogCategory, list, cursorMeta, i);
    }

    public final CatalogCategory component1() {
        return this.category;
    }

    public final List<Campaign> component2() {
        return this.items;
    }

    public final CursorMeta component3() {
        return this.meta;
    }

    public final int component4() {
        return this.total;
    }

    public final CategoryPreview copy(CatalogCategory category, List<Campaign> items, CursorMeta meta, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        return new CategoryPreview(category, items, meta, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CategoryPreview) {
            CategoryPreview categoryPreview = (CategoryPreview) obj;
            return Intrinsics.areEqual(this.category, categoryPreview.category) && Intrinsics.areEqual(this.items, categoryPreview.items) && Intrinsics.areEqual(this.meta, categoryPreview.meta) && this.total == categoryPreview.total;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.category.hashCode() * 31) + this.items.hashCode()) * 31) + this.meta.hashCode()) * 31) + this.total;
    }

    public String toString() {
        return "CategoryPreview(category=" + this.category + ", items=" + this.items + ", meta=" + this.meta + ", total=" + this.total + ')';
    }

    public CategoryPreview(CatalogCategory category, List<Campaign> items, CursorMeta meta, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        this.category = category;
        this.items = items;
        this.meta = meta;
        this.total = i;
    }

    public final CatalogCategory getCategory() {
        return this.category;
    }

    public final List<Campaign> getItems() {
        return this.items;
    }

    public final CursorMeta getMeta() {
        return this.meta;
    }

    public final int getTotal() {
        return this.total;
    }
}
