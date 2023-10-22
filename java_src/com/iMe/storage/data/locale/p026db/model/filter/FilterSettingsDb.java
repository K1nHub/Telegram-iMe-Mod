package com.iMe.storage.data.locale.p026db.model.filter;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FilterSettingsDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.filter.FilterSettingsDb */
/* loaded from: classes3.dex */
public final class FilterSettingsDb {
    private final List<String> fabs;
    private final int filterId;
    private final String icon;
    private final boolean isHidden;
    private final long userId;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FilterSettingsDb) {
            FilterSettingsDb filterSettingsDb = (FilterSettingsDb) obj;
            return this.filterId == filterSettingsDb.filterId && Intrinsics.areEqual(this.fabs, filterSettingsDb.fabs) && Intrinsics.areEqual(this.icon, filterSettingsDb.icon) && this.isHidden == filterSettingsDb.isHidden && this.userId == filterSettingsDb.userId;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.filterId * 31) + this.fabs.hashCode()) * 31;
        String str = this.icon;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z = this.isHidden;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((hashCode2 + i) * 31) + ProfileData$$ExternalSyntheticBackport0.m1017m(this.userId);
    }

    public String toString() {
        return "FilterSettingsDb(filterId=" + this.filterId + ", fabs=" + this.fabs + ", icon=" + this.icon + ", isHidden=" + this.isHidden + ", userId=" + this.userId + ')';
    }

    public FilterSettingsDb(int i, List<String> fabs, String str, boolean z, long j) {
        Intrinsics.checkNotNullParameter(fabs, "fabs");
        this.filterId = i;
        this.fabs = fabs;
        this.icon = str;
        this.isHidden = z;
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

    public final boolean isHidden() {
        return this.isHidden;
    }

    public final long getUserId() {
        return this.userId;
    }
}
