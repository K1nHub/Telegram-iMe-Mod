package com.iMe.storage.domain.model.catalog;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoriesPreviewsCursored.kt */
/* loaded from: classes3.dex */
public final class CategoriesPreviewsCursored {
    private final List<CategoryPreview> items;
    private final CursorMeta meta;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CategoriesPreviewsCursored copy$default(CategoriesPreviewsCursored categoriesPreviewsCursored, List list, CursorMeta cursorMeta, int i, Object obj) {
        if ((i & 1) != 0) {
            list = categoriesPreviewsCursored.items;
        }
        if ((i & 2) != 0) {
            cursorMeta = categoriesPreviewsCursored.meta;
        }
        return categoriesPreviewsCursored.copy(list, cursorMeta);
    }

    public final List<CategoryPreview> component1() {
        return this.items;
    }

    public final CursorMeta component2() {
        return this.meta;
    }

    public final CategoriesPreviewsCursored copy(List<CategoryPreview> items, CursorMeta meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        return new CategoriesPreviewsCursored(items, meta);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CategoriesPreviewsCursored) {
            CategoriesPreviewsCursored categoriesPreviewsCursored = (CategoriesPreviewsCursored) obj;
            return Intrinsics.areEqual(this.items, categoriesPreviewsCursored.items) && Intrinsics.areEqual(this.meta, categoriesPreviewsCursored.meta);
        }
        return false;
    }

    public int hashCode() {
        return (this.items.hashCode() * 31) + this.meta.hashCode();
    }

    public String toString() {
        return "CategoriesPreviewsCursored(items=" + this.items + ", meta=" + this.meta + ')';
    }

    public CategoriesPreviewsCursored(List<CategoryPreview> items, CursorMeta meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        this.items = items;
        this.meta = meta;
    }

    public final List<CategoryPreview> getItems() {
        return this.items;
    }

    public final CursorMeta getMeta() {
        return this.meta;
    }
}
