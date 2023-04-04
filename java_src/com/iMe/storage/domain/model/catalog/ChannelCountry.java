package com.iMe.storage.domain.model.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelCountry.kt */
/* loaded from: classes3.dex */
public final class ChannelCountry {
    private final String code;

    /* renamed from: id */
    private final int f322id;
    private final String title;

    public static /* synthetic */ ChannelCountry copy$default(ChannelCountry channelCountry, String str, int i, String str2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = channelCountry.code;
        }
        if ((i2 & 2) != 0) {
            i = channelCountry.f322id;
        }
        if ((i2 & 4) != 0) {
            str2 = channelCountry.title;
        }
        return channelCountry.copy(str, i, str2);
    }

    public final String component1() {
        return this.code;
    }

    public final int component2() {
        return this.f322id;
    }

    public final String component3() {
        return this.title;
    }

    public final ChannelCountry copy(String code, int i, String title) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(title, "title");
        return new ChannelCountry(code, i, title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChannelCountry) {
            ChannelCountry channelCountry = (ChannelCountry) obj;
            return Intrinsics.areEqual(this.code, channelCountry.code) && this.f322id == channelCountry.f322id && Intrinsics.areEqual(this.title, channelCountry.title);
        }
        return false;
    }

    public int hashCode() {
        return (((this.code.hashCode() * 31) + this.f322id) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "ChannelCountry(code=" + this.code + ", id=" + this.f322id + ", title=" + this.title + ')';
    }

    public ChannelCountry(String code, int i, String title) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(title, "title");
        this.code = code;
        this.f322id = i;
        this.title = title;
    }

    public final String getCode() {
        return this.code;
    }

    public final int getId() {
        return this.f322id;
    }

    public final String getTitle() {
        return this.title;
    }
}
