package com.smedialink.model.common;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FiltersListItem.kt */
/* loaded from: classes3.dex */
public final class FiltersListItem extends NoChildNode {
    private final List<FilterItem> filters;

    public final List<FilterItem> getFilters() {
        return this.filters;
    }

    public FiltersListItem(List<FilterItem> filters) {
        Intrinsics.checkNotNullParameter(filters, "filters");
        this.filters = filters;
    }

    public boolean equals(Object obj) {
        if (obj instanceof FiltersListItem) {
            return Intrinsics.areEqual(this.filters, ((FiltersListItem) obj).filters);
        }
        return false;
    }

    public int hashCode() {
        return this.filters.hashCode();
    }
}
