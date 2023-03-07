package org.fork.models;

import com.smedialink.storage.domain.model.filters.FilterFab;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import org.fork.enums.SortingFilter;
/* compiled from: SortingTabState.kt */
/* loaded from: classes4.dex */
public final class SortingTabState {
    private Set<? extends FilterFab> fabs;
    private boolean isEnabled;
    private int position;
    private final SortingFilter type;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SortingTabState copy$default(SortingTabState sortingTabState, SortingFilter sortingFilter, Set set, int i, boolean z, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            sortingFilter = sortingTabState.type;
        }
        if ((i2 & 2) != 0) {
            set = sortingTabState.fabs;
        }
        if ((i2 & 4) != 0) {
            i = sortingTabState.position;
        }
        if ((i2 & 8) != 0) {
            z = sortingTabState.isEnabled;
        }
        return sortingTabState.copy(sortingFilter, set, i, z);
    }

    public final SortingFilter component1() {
        return this.type;
    }

    public final Set<FilterFab> component2() {
        return this.fabs;
    }

    public final int component3() {
        return this.position;
    }

    public final boolean component4() {
        return this.isEnabled;
    }

    public final SortingTabState copy(SortingFilter type, Set<? extends FilterFab> fabs, int i, boolean z) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        return new SortingTabState(type, fabs, i, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SortingTabState) {
            SortingTabState sortingTabState = (SortingTabState) obj;
            return this.type == sortingTabState.type && Intrinsics.areEqual(this.fabs, sortingTabState.fabs) && this.position == sortingTabState.position && this.isEnabled == sortingTabState.isEnabled;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.type.hashCode() * 31) + this.fabs.hashCode()) * 31) + this.position) * 31;
        boolean z = this.isEnabled;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "SortingTabState(type=" + this.type + ", fabs=" + this.fabs + ", position=" + this.position + ", isEnabled=" + this.isEnabled + ')';
    }

    public SortingTabState(SortingFilter type, Set<? extends FilterFab> fabs, int i, boolean z) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        this.type = type;
        this.fabs = fabs;
        this.position = i;
        this.isEnabled = z;
    }

    public final SortingFilter getType() {
        return this.type;
    }

    public final Set<FilterFab> getFabs() {
        return this.fabs;
    }

    public final void setFabs(Set<? extends FilterFab> set) {
        Intrinsics.checkNotNullParameter(set, "<set-?>");
        this.fabs = set;
    }

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final void setEnabled(boolean z) {
        this.isEnabled = z;
    }
}
