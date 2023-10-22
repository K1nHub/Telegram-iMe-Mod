package com.iMe.storage.data.network.model.response.kikliko;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GifResponse.kt */
/* loaded from: classes3.dex */
public final class GifResponse {
    private final GifFileResponse file;
    private final String slug;
    private final String title;
    private final String url;

    public static /* synthetic */ GifResponse copy$default(GifResponse gifResponse, String str, String str2, String str3, GifFileResponse gifFileResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            str = gifResponse.url;
        }
        if ((i & 2) != 0) {
            str2 = gifResponse.title;
        }
        if ((i & 4) != 0) {
            str3 = gifResponse.slug;
        }
        if ((i & 8) != 0) {
            gifFileResponse = gifResponse.file;
        }
        return gifResponse.copy(str, str2, str3, gifFileResponse);
    }

    public final String component1() {
        return this.url;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.slug;
    }

    public final GifFileResponse component4() {
        return this.file;
    }

    public final GifResponse copy(String url, String title, String slug, GifFileResponse file) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(file, "file");
        return new GifResponse(url, title, slug, file);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GifResponse) {
            GifResponse gifResponse = (GifResponse) obj;
            return Intrinsics.areEqual(this.url, gifResponse.url) && Intrinsics.areEqual(this.title, gifResponse.title) && Intrinsics.areEqual(this.slug, gifResponse.slug) && Intrinsics.areEqual(this.file, gifResponse.file);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.url.hashCode() * 31) + this.title.hashCode()) * 31) + this.slug.hashCode()) * 31) + this.file.hashCode();
    }

    public String toString() {
        return "GifResponse(url=" + this.url + ", title=" + this.title + ", slug=" + this.slug + ", file=" + this.file + ')';
    }

    public GifResponse(String url, String title, String slug, GifFileResponse file) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(file, "file");
        this.url = url;
        this.title = title;
        this.slug = slug;
        this.file = file;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getSlug() {
        return this.slug;
    }

    public final GifFileResponse getFile() {
        return this.file;
    }
}
