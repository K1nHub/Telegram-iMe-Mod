package com.smedialink.storage.domain.model.catalog;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelTag.kt */
/* loaded from: classes3.dex */
public final class ChannelTag {

    /* renamed from: id */
    private final long f320id;
    private final String title;

    public static /* synthetic */ ChannelTag copy$default(ChannelTag channelTag, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = channelTag.f320id;
        }
        if ((i & 2) != 0) {
            str = channelTag.title;
        }
        return channelTag.copy(j, str);
    }

    public final long component1() {
        return this.f320id;
    }

    public final String component2() {
        return this.title;
    }

    public final ChannelTag copy(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new ChannelTag(j, title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChannelTag) {
            ChannelTag channelTag = (ChannelTag) obj;
            return this.f320id == channelTag.f320id && Intrinsics.areEqual(this.title, channelTag.title);
        }
        return false;
    }

    public int hashCode() {
        return (StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.f320id) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "ChannelTag(id=" + this.f320id + ", title=" + this.title + ')';
    }

    public ChannelTag(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f320id = j;
        this.title = title;
    }

    public final long getId() {
        return this.f320id;
    }

    public final String getTitle() {
        return this.title;
    }
}
