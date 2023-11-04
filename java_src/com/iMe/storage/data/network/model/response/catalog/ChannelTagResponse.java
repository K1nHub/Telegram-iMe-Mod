package com.iMe.storage.data.network.model.response.catalog;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelTagResponse.kt */
/* loaded from: classes3.dex */
public final class ChannelTagResponse {

    /* renamed from: id */
    private final long f320id;
    private final String title;

    public static /* synthetic */ ChannelTagResponse copy$default(ChannelTagResponse channelTagResponse, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = channelTagResponse.f320id;
        }
        if ((i & 2) != 0) {
            str = channelTagResponse.title;
        }
        return channelTagResponse.copy(j, str);
    }

    public final long component1() {
        return this.f320id;
    }

    public final String component2() {
        return this.title;
    }

    public final ChannelTagResponse copy(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new ChannelTagResponse(j, title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChannelTagResponse) {
            ChannelTagResponse channelTagResponse = (ChannelTagResponse) obj;
            return this.f320id == channelTagResponse.f320id && Intrinsics.areEqual(this.title, channelTagResponse.title);
        }
        return false;
    }

    public int hashCode() {
        return (ProfileData$$ExternalSyntheticBackport0.m1018m(this.f320id) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "ChannelTagResponse(id=" + this.f320id + ", title=" + this.title + ')';
    }

    public ChannelTagResponse(long j, String title) {
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
