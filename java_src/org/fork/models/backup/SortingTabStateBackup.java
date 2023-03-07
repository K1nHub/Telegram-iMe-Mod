package org.fork.models.backup;

import com.smedialink.storage.domain.model.filters.FilterFab;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SortingTabStateBackup.kt */
/* loaded from: classes4.dex */
public final class SortingTabStateBackup {
    private final FabDataBackup fabDataBackup;
    private Set<? extends FilterFab> fabs;
    private boolean isEnabled;
    private int position;
    private final String type;

    public static /* synthetic */ SortingTabStateBackup copy$default(SortingTabStateBackup sortingTabStateBackup, String str, Set set, int i, boolean z, FabDataBackup fabDataBackup, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = sortingTabStateBackup.type;
        }
        Set<? extends FilterFab> set2 = set;
        if ((i2 & 2) != 0) {
            set2 = sortingTabStateBackup.fabs;
        }
        Set set3 = set2;
        if ((i2 & 4) != 0) {
            i = sortingTabStateBackup.position;
        }
        int i3 = i;
        if ((i2 & 8) != 0) {
            z = sortingTabStateBackup.isEnabled;
        }
        boolean z2 = z;
        if ((i2 & 16) != 0) {
            fabDataBackup = sortingTabStateBackup.fabDataBackup;
        }
        return sortingTabStateBackup.copy(str, set3, i3, z2, fabDataBackup);
    }

    public final String component1() {
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

    public final FabDataBackup component5() {
        return this.fabDataBackup;
    }

    public final SortingTabStateBackup copy(String type, Set<? extends FilterFab> fabs, int i, boolean z, FabDataBackup fabDataBackup) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        return new SortingTabStateBackup(type, fabs, i, z, fabDataBackup);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SortingTabStateBackup) {
            SortingTabStateBackup sortingTabStateBackup = (SortingTabStateBackup) obj;
            return Intrinsics.areEqual(this.type, sortingTabStateBackup.type) && Intrinsics.areEqual(this.fabs, sortingTabStateBackup.fabs) && this.position == sortingTabStateBackup.position && this.isEnabled == sortingTabStateBackup.isEnabled && Intrinsics.areEqual(this.fabDataBackup, sortingTabStateBackup.fabDataBackup);
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
        int i2 = (hashCode + i) * 31;
        FabDataBackup fabDataBackup = this.fabDataBackup;
        return i2 + (fabDataBackup == null ? 0 : fabDataBackup.hashCode());
    }

    public String toString() {
        return "SortingTabStateBackup(type=" + this.type + ", fabs=" + this.fabs + ", position=" + this.position + ", isEnabled=" + this.isEnabled + ", fabDataBackup=" + this.fabDataBackup + ')';
    }

    public SortingTabStateBackup(String type, Set<? extends FilterFab> fabs, int i, boolean z, FabDataBackup fabDataBackup) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        this.type = type;
        this.fabs = fabs;
        this.position = i;
        this.isEnabled = z;
        this.fabDataBackup = fabDataBackup;
    }

    public /* synthetic */ SortingTabStateBackup(String str, Set set, int i, boolean z, FabDataBackup fabDataBackup, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, set, i, z, (i2 & 16) != 0 ? null : fabDataBackup);
    }

    public final String getType() {
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

    public final FabDataBackup getFabDataBackup() {
        return this.fabDataBackup;
    }
}
