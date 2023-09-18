package com.iMe.storage.data.locale.prefs.model;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: RequestAppReviewMetadata.kt */
/* loaded from: classes4.dex */
public final class RequestAppReviewMetadata {
    private int count;
    private long lastRequestTime;

    public RequestAppReviewMetadata() {
        this(0L, 0, 3, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RequestAppReviewMetadata) {
            RequestAppReviewMetadata requestAppReviewMetadata = (RequestAppReviewMetadata) obj;
            return this.lastRequestTime == requestAppReviewMetadata.lastRequestTime && this.count == requestAppReviewMetadata.count;
        }
        return false;
    }

    public int hashCode() {
        return (BotsDbModel$$ExternalSyntheticBackport0.m724m(this.lastRequestTime) * 31) + this.count;
    }

    public String toString() {
        return "RequestAppReviewMetadata(lastRequestTime=" + this.lastRequestTime + ", count=" + this.count + ')';
    }

    public RequestAppReviewMetadata(long j, int i) {
        this.lastRequestTime = j;
        this.count = i;
    }

    public /* synthetic */ RequestAppReviewMetadata(long j, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0L : j, (i2 & 2) != 0 ? 0 : i);
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

    public final boolean isAnyRequestsBefore() {
        return this.lastRequestTime != 0;
    }
}
