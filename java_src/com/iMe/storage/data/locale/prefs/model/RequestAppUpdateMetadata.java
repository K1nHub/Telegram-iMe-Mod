package com.iMe.storage.data.locale.prefs.model;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RequestAppUpdateMetadata.kt */
/* loaded from: classes3.dex */
public final class RequestAppUpdateMetadata {
    private int count;
    private long lastRequestTime;
    private String version;

    public RequestAppUpdateMetadata() {
        this(0L, 0, null, 7, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RequestAppUpdateMetadata) {
            RequestAppUpdateMetadata requestAppUpdateMetadata = (RequestAppUpdateMetadata) obj;
            return this.lastRequestTime == requestAppUpdateMetadata.lastRequestTime && this.count == requestAppUpdateMetadata.count && Intrinsics.areEqual(this.version, requestAppUpdateMetadata.version);
        }
        return false;
    }

    public int hashCode() {
        return (((ProfileData$$ExternalSyntheticBackport0.m1018m(this.lastRequestTime) * 31) + this.count) * 31) + this.version.hashCode();
    }

    public String toString() {
        return "RequestAppUpdateMetadata(lastRequestTime=" + this.lastRequestTime + ", count=" + this.count + ", version=" + this.version + ')';
    }

    public RequestAppUpdateMetadata(long j, int i, String version) {
        Intrinsics.checkNotNullParameter(version, "version");
        this.lastRequestTime = j;
        this.count = i;
        this.version = version;
    }

    public /* synthetic */ RequestAppUpdateMetadata(long j, int i, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? "" : str);
    }

    public final long getLastRequestTime() {
        return this.lastRequestTime;
    }

    public final void setLastRequestTime(long j) {
        this.lastRequestTime = j;
    }

    public final int getCount() {
        return this.count;
    }

    public final void setCount(int i) {
        this.count = i;
    }

    public final String getVersion() {
        return this.version;
    }

    public final void setVersion(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.version = str;
    }

    public final boolean isAnyRequestsBefore() {
        return this.lastRequestTime != 0;
    }
}
