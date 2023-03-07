package com.smedialink.storage.domain.model.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoryWithCounter.kt */
/* loaded from: classes3.dex */
public final class CategoryWithCounter {
    private final CatalogCategory category;
    private final int total;

    public static /* synthetic */ CategoryWithCounter copy$default(CategoryWithCounter categoryWithCounter, CatalogCategory catalogCategory, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            catalogCategory = categoryWithCounter.category;
        }
        if ((i2 & 2) != 0) {
            i = categoryWithCounter.total;
        }
        return categoryWithCounter.copy(catalogCategory, i);
    }

    public final CatalogCategory component1() {
        return this.category;
    }

    public final int component2() {
        return this.total;
    }

    public final CategoryWithCounter copy(CatalogCategory category, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        return new CategoryWithCounter(category, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CategoryWithCounter) {
            CategoryWithCounter categoryWithCounter = (CategoryWithCounter) obj;
            return Intrinsics.areEqual(this.category, categoryWithCounter.category) && this.total == categoryWithCounter.total;
        }
        return false;
    }

    public int hashCode() {
        return (this.category.hashCode() * 31) + this.total;
    }

    public String toString() {
        return "CategoryWithCounter(category=" + this.category + ", total=" + this.total + ')';
    }

    public CategoryWithCounter(CatalogCategory category, int i) {
        Intrinsics.checkNotNullParameter(category, "category");
        this.category = category;
        this.total = i;
    }

    public final CatalogCategory getCategory() {
        return this.category;
    }

    public final int getTotal() {
        return this.total;
    }
}
