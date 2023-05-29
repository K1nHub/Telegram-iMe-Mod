package com.iMe.storage.data.network.model.response.twitter;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterFeedResponse.kt */
/* loaded from: classes3.dex */
public final class MediaInfo {
    @SerializedName(SessionDescription.ATTR_TYPE)
    private final String type;
    @SerializedName(ImagesContract.URL)
    private final String url;

    public MediaInfo() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ MediaInfo copy$default(MediaInfo mediaInfo, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mediaInfo.type;
        }
        if ((i & 2) != 0) {
            str2 = mediaInfo.url;
        }
        return mediaInfo.copy(str, str2);
    }

    public final String component1() {
        return this.type;
    }

    public final String component2() {
        return this.url;
    }

    public final MediaInfo copy(String str, String str2) {
        return new MediaInfo(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaInfo) {
            MediaInfo mediaInfo = (MediaInfo) obj;
            return Intrinsics.areEqual(this.type, mediaInfo.type) && Intrinsics.areEqual(this.url, mediaInfo.url);
        }
        return false;
    }

    public int hashCode() {
        String str = this.type;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.url;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "MediaInfo(type=" + this.type + ", url=" + this.url + ')';
    }

    public MediaInfo(String str, String str2) {
        this.type = str;
        this.url = str2;
    }

    public /* synthetic */ MediaInfo(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2);
    }

    public final String getType() {
        return this.type;
    }

    public final String getUrl() {
        return this.url;
    }
}
