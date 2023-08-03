package com.iMe.storage.domain.model.catalog;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelTag.kt */
/* loaded from: classes3.dex */
public final class ChannelTag {

    /* renamed from: id */
    private final long f405id;
    private final String title;

    public static /* synthetic */ ChannelTag copy$default(ChannelTag channelTag, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = channelTag.f405id;
        }
        if ((i & 2) != 0) {
            str = channelTag.title;
        }
        return channelTag.copy(j, str);
    }

    public final long component1() {
        return this.f405id;
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
            return this.f405id == channelTag.f405id && Intrinsics.areEqual(this.title, channelTag.title);
        }
        return false;
    }

    public int hashCode() {
        return (BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f405id) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "ChannelTag(id=" + this.f405id + ", title=" + this.title + ')';
    }

    public ChannelTag(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f405id = j;
        this.title = title;
    }

    public final long getId() {
        return this.f405id;
    }

    public final String getTitle() {
        return this.title;
    }
}
