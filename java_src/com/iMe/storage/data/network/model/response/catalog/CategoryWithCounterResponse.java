package com.iMe.storage.data.network.model.response.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoryWithCounterResponse.kt */
/* loaded from: classes3.dex */
public final class CategoryWithCounterResponse {
    private final CatalogCategoryResponse category;
    private final int total;

    public static /* synthetic */ CategoryWithCounterResponse copy$default(CategoryWithCounterResponse categoryWithCounterResponse, CatalogCategoryResponse catalogCategoryResponse, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            catalogCategoryResponse = categoryWithCounterResponse.category;
        }
        if ((i2 & 2) != 0) {
            i = categoryWithCounterResponse.total;
        }
        return categoryWithCounterResponse.copy(catalogCategoryResponse, i);
    }

    public final CatalogCategoryResponse component1() {
        return this.category;
    }

    public final int component2() {
        return this.total;
    }

    public final CategoryWithCounterResponse copy(CatalogCategoryResponse category, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        return new CategoryWithCounterResponse(category, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CategoryWithCounterResponse) {
            CategoryWithCounterResponse categoryWithCounterResponse = (CategoryWithCounterResponse) obj;
            return Intrinsics.areEqual(this.category, categoryWithCounterResponse.category) && this.total == categoryWithCounterResponse.total;
        }
        return false;
    }

    public int hashCode() {
        return (this.category.hashCode() * 31) + this.total;
    }

    public String toString() {
        return "CategoryWithCounterResponse(category=" + this.category + ", total=" + this.total + ')';
    }

    public CategoryWithCounterResponse(CatalogCategoryResponse category, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        this.category = category;
        this.total = i;
    }

    public final CatalogCategoryResponse getCategory() {
        return this.category;
    }

    public final int getTotal() {
        return this.total;
    }
}
