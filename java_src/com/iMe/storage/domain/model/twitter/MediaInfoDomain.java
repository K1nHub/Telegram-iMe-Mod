package com.iMe.storage.domain.model.twitter;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TweetInfo.kt */
/* loaded from: classes4.dex */
public final class MediaInfoDomain {
    private final MediaType type;
    private final String url;

    public MediaInfoDomain() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ MediaInfoDomain copy$default(MediaInfoDomain mediaInfoDomain, MediaType mediaType, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            mediaType = mediaInfoDomain.type;
        }
        if ((i & 2) != 0) {
            str = mediaInfoDomain.url;
        }
        return mediaInfoDomain.copy(mediaType, str);
    }

    public final MediaType component1() {
        return this.type;
    }

    public final String component2() {
        return this.url;
    }

    public final MediaInfoDomain copy(MediaType type, String url) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(url, "url");
        return new MediaInfoDomain(type, url);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaInfoDomain) {
            MediaInfoDomain mediaInfoDomain = (MediaInfoDomain) obj;
            return this.type == mediaInfoDomain.type && Intrinsics.areEqual(this.url, mediaInfoDomain.url);
        }
        return false;
    }

    public int hashCode() {
        return (this.type.hashCode() * 31) + this.url.hashCode();
    }

    public String toString() {
        return "MediaInfoDomain(type=" + this.type + ", url=" + this.url + ')';
    }

    public MediaInfoDomain(MediaType type, String url) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(url, "url");
        this.type = type;
        this.url = url;
    }

    public /* synthetic */ MediaInfoDomain(MediaType mediaType, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MediaType.UNKNOWN : mediaType, (i & 2) != 0 ? "" : str);
    }

    public final MediaType getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }
}
