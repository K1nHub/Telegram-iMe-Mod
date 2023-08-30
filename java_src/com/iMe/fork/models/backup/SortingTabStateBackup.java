package com.iMe.fork.models.backup;

import com.iMe.storage.domain.model.filters.FilterFab;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SortingTabStateBackup.kt */
/* loaded from: classes3.dex */
public final class SortingTabStateBackup {
    private final FabDataBackup fabDataBackup;
    private Set<? extends FilterFab> fabs;
    private boolean isEnabled;
    private int position;
    private final String type;

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
        return ((hashCode + i) * 31) + 0;
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

    public final int getPosition() {
        return this.position;
    }

    public final void setPosition(int i) {
        this.position = i;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }

    public final FabDataBackup getFabDataBackup() {
        return this.fabDataBackup;
    }
}
