package org.fork.models.backup;

import com.smedialink.storage.domain.model.filters.FilterFab;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FabDataBackup.kt */
/* loaded from: classes4.dex */
public final class FabDataBackup {
    public static final Companion Companion = new Companion(null);
    public static final String OLD_MULTI_FAB_ID = "fab_multi";
    private final String fabType;
    private final Set<FilterFab> multiFabTypeIds;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FabDataBackup copy$default(FabDataBackup fabDataBackup, String str, Set set, int i, Object obj) {
        if ((i & 1) != 0) {
            str = fabDataBackup.fabType;
        }
        if ((i & 2) != 0) {
            set = fabDataBackup.multiFabTypeIds;
        }
        return fabDataBackup.copy(str, set);
    }

    public final String component1() {
        return this.fabType;
    }

    public final Set<FilterFab> component2() {
        return this.multiFabTypeIds;
    }

    public final FabDataBackup copy(String fabType, Set<? extends FilterFab> multiFabTypeIds) {
        Intrinsics.checkNotNullParameter(fabType, "fabType");
        Intrinsics.checkNotNullParameter(multiFabTypeIds, "multiFabTypeIds");
        return new FabDataBackup(fabType, multiFabTypeIds);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FabDataBackup) {
            FabDataBackup fabDataBackup = (FabDataBackup) obj;
            return Intrinsics.areEqual(this.fabType, fabDataBackup.fabType) && Intrinsics.areEqual(this.multiFabTypeIds, fabDataBackup.multiFabTypeIds);
        }
        return false;
    }

    public int hashCode() {
        return (this.fabType.hashCode() * 31) + this.multiFabTypeIds.hashCode();
    }

    public String toString() {
        return "FabDataBackup(fabType=" + this.fabType + ", multiFabTypeIds=" + this.multiFabTypeIds + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FabDataBackup(String fabType, Set<? extends FilterFab> multiFabTypeIds) {
        Intrinsics.checkNotNullParameter(fabType, "fabType");
        Intrinsics.checkNotNullParameter(multiFabTypeIds, "multiFabTypeIds");
        this.fabType = fabType;
        this.multiFabTypeIds = multiFabTypeIds;
    }

    public final String getFabType() {
        return this.fabType;
    }

    public final Set<FilterFab> getMultiFabTypeIds() {
        return this.multiFabTypeIds;
    }

    public final boolean isOldMultiFab() {
        return Intrinsics.areEqual(this.fabType, OLD_MULTI_FAB_ID);
    }

    /* compiled from: FabDataBackup.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
