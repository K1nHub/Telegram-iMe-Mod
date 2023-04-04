package com.iMe.storage.domain.model.filters;

import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FilterSettingsModel.kt */
/* loaded from: classes3.dex */
public final class FilterSettingsModel {
    private Set<FilterFab> fabs;
    private int filterId;
    private FilterIcon icon;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FilterSettingsModel copy$default(FilterSettingsModel filterSettingsModel, int i, Set set, FilterIcon filterIcon, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = filterSettingsModel.filterId;
        }
        if ((i2 & 2) != 0) {
            set = filterSettingsModel.fabs;
        }
        if ((i2 & 4) != 0) {
            filterIcon = filterSettingsModel.icon;
        }
        return filterSettingsModel.copy(i, set, filterIcon);
    }

    public final int component1() {
        return this.filterId;
    }

    public final Set<FilterFab> component2() {
        return this.fabs;
    }

    public final FilterIcon component3() {
        return this.icon;
    }

    public final FilterSettingsModel copy(int i, Set<FilterFab> fabs, FilterIcon filterIcon) {
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        return new FilterSettingsModel(i, fabs, filterIcon);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FilterSettingsModel) {
            FilterSettingsModel filterSettingsModel = (FilterSettingsModel) obj;
            return this.filterId == filterSettingsModel.filterId && Intrinsics.areEqual(this.fabs, filterSettingsModel.fabs) && this.icon == filterSettingsModel.icon;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.filterId * 31) + this.fabs.hashCode()) * 31;
        FilterIcon filterIcon = this.icon;
        return hashCode + (filterIcon == null ? 0 : filterIcon.hashCode());
    }

    public String toString() {
        return "FilterSettingsModel(filterId=" + this.filterId + ", fabs=" + this.fabs + ", icon=" + this.icon + ')';
    }

    public FilterSettingsModel(int i, Set<FilterFab> fabs, FilterIcon filterIcon) {
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        this.filterId = i;
        this.fabs = fabs;
        this.icon = filterIcon;
    }

    public final int getFilterId() {
        return this.filterId;
    }

    public final void setFilterId(int i) {
        this.filterId = i;
    }

    public final Set<FilterFab> getFabs() {
        return this.fabs;
    }

    public final void setFabs(Set<FilterFab> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.fabs = set;
    }

    public final FilterIcon getIcon() {
        return this.icon;
    }

    public final void setIcon(FilterIcon filterIcon) {
        this.icon = filterIcon;
    }

    public final FilterSettingsModel getCopy() {
        return copy$default(this, 0, null, null, 7, null);
    }
}
