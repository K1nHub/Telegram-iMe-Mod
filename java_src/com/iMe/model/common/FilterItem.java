package com.iMe.model.common;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FilterItem.kt */
/* loaded from: classes3.dex */
public final class FilterItem {

    /* renamed from: id */
    private final long f262id;
    private final boolean isSelected;
    private final String title;

    public static /* synthetic */ FilterItem copy$default(FilterItem filterItem, long j, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            j = filterItem.f262id;
        }
        if ((i & 2) != 0) {
            str = filterItem.title;
        }
        if ((i & 4) != 0) {
            z = filterItem.isSelected;
        }
        return filterItem.copy(j, str, z);
    }

    public final long component1() {
        return this.f262id;
    }

    public final String component2() {
        return this.title;
    }

    public final boolean component3() {
        return this.isSelected;
    }

    public final FilterItem copy(long j, String title, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new FilterItem(j, title, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FilterItem) {
            FilterItem filterItem = (FilterItem) obj;
            return this.f262id == filterItem.f262id && Intrinsics.areEqual(this.title, filterItem.title) && this.isSelected == filterItem.isSelected;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m702m = ((BotsDbModel$$ExternalSyntheticBackport0.m702m(this.f262id) * 31) + this.title.hashCode()) * 31;
        boolean z = this.isSelected;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m702m + i;
    }

    public String toString() {
        return "FilterItem(id=" + this.f262id + ", title=" + this.title + ", isSelected=" + this.isSelected + ')';
    }

    public FilterItem(long j, String title, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f262id = j;
        this.title = title;
        this.isSelected = z;
    }

    public final long getId() {
        return this.f262id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final boolean isSelected() {
        return this.isSelected;
    }
}