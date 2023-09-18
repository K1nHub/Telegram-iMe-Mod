package com.iMe.model.common;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FilterItem.kt */
/* loaded from: classes4.dex */
public final class FilterItem {

    /* renamed from: id */
    private final long f351id;
    private final boolean isSelected;
    private final String title;

    public static /* synthetic */ FilterItem copy$default(FilterItem filterItem, long j, String str, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            j = filterItem.f351id;
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
        return this.f351id;
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
            return this.f351id == filterItem.f351id && Intrinsics.areEqual(this.title, filterItem.title) && this.isSelected == filterItem.isSelected;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m724m = ((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f351id) * 31) + this.title.hashCode()) * 31;
        boolean z = this.isSelected;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return m724m + i;
    }

    public String toString() {
        return "FilterItem(id=" + this.f351id + ", title=" + this.title + ", isSelected=" + this.isSelected + ')';
    }

    public FilterItem(long j, String title, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f351id = j;
        this.title = title;
        this.isSelected = z;
    }

    public final long getId() {
        return this.f351id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final boolean isSelected() {
        return this.isSelected;
    }
}
