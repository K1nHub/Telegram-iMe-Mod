package com.iMe.storage.data.network.model.response.kikliko;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GifFileResponse.kt */
/* loaded from: classes4.dex */
public final class GifFileResponse {
    private final String gif;
    private final String mp4;
    private final String webp;

    public static /* synthetic */ GifFileResponse copy$default(GifFileResponse gifFileResponse, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = gifFileResponse.mp4;
        }
        if ((i & 2) != 0) {
            str2 = gifFileResponse.gif;
        }
        if ((i & 4) != 0) {
            str3 = gifFileResponse.webp;
        }
        return gifFileResponse.copy(str, str2, str3);
    }

    public final String component1() {
        return this.mp4;
    }

    public final String component2() {
        return this.gif;
    }

    public final String component3() {
        return this.webp;
    }

    public final GifFileResponse copy(String mp4, String gif, String webp) {
        Intrinsics.checkNotNullParameter(mp4, "mp4");
        Intrinsics.checkNotNullParameter(gif, "gif");
        Intrinsics.checkNotNullParameter(webp, "webp");
        return new GifFileResponse(mp4, gif, webp);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GifFileResponse) {
            GifFileResponse gifFileResponse = (GifFileResponse) obj;
            return Intrinsics.areEqual(this.mp4, gifFileResponse.mp4) && Intrinsics.areEqual(this.gif, gifFileResponse.gif) && Intrinsics.areEqual(this.webp, gifFileResponse.webp);
        }
        return false;
    }

    public int hashCode() {
        return (((this.mp4.hashCode() * 31) + this.gif.hashCode()) * 31) + this.webp.hashCode();
    }

    public String toString() {
        return "GifFileResponse(mp4=" + this.mp4 + ", gif=" + this.gif + ", webp=" + this.webp + ')';
    }

    public GifFileResponse(String mp4, String gif, String webp) {
        Intrinsics.checkNotNullParameter(mp4, "mp4");
        Intrinsics.checkNotNullParameter(gif, "gif");
        Intrinsics.checkNotNullParameter(webp, "webp");
        this.mp4 = mp4;
        this.gif = gif;
        this.webp = webp;
    }

    public final String getMp4() {
        return this.mp4;
    }

    public final String getGif() {
        return this.gif;
    }

    public final String getWebp() {
        return this.webp;
    }
}
