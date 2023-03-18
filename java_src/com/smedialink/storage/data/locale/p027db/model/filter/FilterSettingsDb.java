package com.smedialink.storage.data.locale.p027db.model.filter;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FilterSettingsDb.kt */
/* renamed from: com.smedialink.storage.data.locale.db.model.filter.FilterSettingsDb */
/* loaded from: classes3.dex */
public final class FilterSettingsDb {
    private final List<String> fabs;
    private final int filterId;
    private final String icon;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FilterSettingsDb) {
            FilterSettingsDb filterSettingsDb = (FilterSettingsDb) obj;
            return this.filterId == filterSettingsDb.filterId && Intrinsics.areEqual(this.fabs, filterSettingsDb.fabs) && Intrinsics.areEqual(this.icon, filterSettingsDb.icon) && this.userId == filterSettingsDb.userId;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.filterId * 31) + this.fabs.hashCode()) * 31;
        String str = this.icon;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.userId);
    }

    public String toString() {
        return "FilterSettingsDb(filterId=" + this.filterId + ", fabs=" + this.fabs + ", icon=" + this.icon + ", userId=" + this.userId + ')';
    }

    public FilterSettingsDb(int i, List<String> fabs, String str, long j) {
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        this.filterId = i;
        this.fabs = fabs;
        this.icon = str;
        this.userId = j;
    }

    public final int getFilterId() {
        return this.filterId;
    }

    public final List<String> getFabs() {
        return this.fabs;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final long getUserId() {
        return this.userId;
    }
}
