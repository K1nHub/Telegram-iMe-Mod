package com.iMe.storage.data.network.model.response.kikliko;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TagResponse.kt */
/* loaded from: classes4.dex */
public final class TagResponse {
    private final GifResponse meme;
    private final String tag;

    public static /* synthetic */ TagResponse copy$default(TagResponse tagResponse, String str, GifResponse gifResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tagResponse.tag;
        }
        if ((i & 2) != 0) {
            gifResponse = tagResponse.meme;
        }
        return tagResponse.copy(str, gifResponse);
    }

    public final String component1() {
        return this.tag;
    }

    public final GifResponse component2() {
        return this.meme;
    }

    public final TagResponse copy(String tag, GifResponse meme) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(meme, "meme");
        return new TagResponse(tag, meme);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TagResponse) {
            TagResponse tagResponse = (TagResponse) obj;
            return Intrinsics.areEqual(this.tag, tagResponse.tag) && Intrinsics.areEqual(this.meme, tagResponse.meme);
        }
        return false;
    }

    public int hashCode() {
        return (this.tag.hashCode() * 31) + this.meme.hashCode();
    }

    public String toString() {
        return "TagResponse(tag=" + this.tag + ", meme=" + this.meme + ')';
    }

    public TagResponse(String tag, GifResponse meme) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(meme, "meme");
        this.tag = tag;
        this.meme = meme;
    }

    public final String getTag() {
        return this.tag;
    }

    public final GifResponse getMeme() {
        return this.meme;
    }
}
