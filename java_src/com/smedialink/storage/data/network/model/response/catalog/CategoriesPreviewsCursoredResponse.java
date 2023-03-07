package com.smedialink.storage.data.network.model.response.catalog;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoriesPreviewsCursoredResponse.kt */
/* loaded from: classes3.dex */
public final class CategoriesPreviewsCursoredResponse {
    private final List<CategoryPreviewResponse> items;
    private final CursorMetaResponse meta;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CategoriesPreviewsCursoredResponse copy$default(CategoriesPreviewsCursoredResponse categoriesPreviewsCursoredResponse, List list, CursorMetaResponse cursorMetaResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            list = categoriesPreviewsCursoredResponse.items;
        }
        if ((i & 2) != 0) {
            cursorMetaResponse = categoriesPreviewsCursoredResponse.meta;
        }
        return categoriesPreviewsCursoredResponse.copy(list, cursorMetaResponse);
    }

    public final List<CategoryPreviewResponse> component1() {
        return this.items;
    }

    public final CursorMetaResponse component2() {
        return this.meta;
    }

    public final CategoriesPreviewsCursoredResponse copy(List<CategoryPreviewResponse> items, CursorMetaResponse meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        return new CategoriesPreviewsCursoredResponse(items, meta);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CategoriesPreviewsCursoredResponse) {
            CategoriesPreviewsCursoredResponse categoriesPreviewsCursoredResponse = (CategoriesPreviewsCursoredResponse) obj;
            return Intrinsics.areEqual(this.items, categoriesPreviewsCursoredResponse.items) && Intrinsics.areEqual(this.meta, categoriesPreviewsCursoredResponse.meta);
        }
        return false;
    }

    public int hashCode() {
        return (this.items.hashCode() * 31) + this.meta.hashCode();
    }

    public String toString() {
        return "CategoriesPreviewsCursoredResponse(items=" + this.items + ", meta=" + this.meta + ')';
    }

    public CategoriesPreviewsCursoredResponse(List<CategoryPreviewResponse> items, CursorMetaResponse meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        this.items = items;
        this.meta = meta;
    }

    public final List<CategoryPreviewResponse> getItems() {
        return this.items;
    }

    public final CursorMetaResponse getMeta() {
        return this.meta;
    }
}
