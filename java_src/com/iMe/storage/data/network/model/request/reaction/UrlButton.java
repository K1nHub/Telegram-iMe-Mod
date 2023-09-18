package com.iMe.storage.data.network.model.request.reaction;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UrlButton.kt */
/* loaded from: classes4.dex */
public final class UrlButton {
    private String title;
    private String url;

    public UrlButton() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ UrlButton copy$default(UrlButton urlButton, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = urlButton.title;
        }
        if ((i & 2) != 0) {
            str2 = urlButton.url;
        }
        return urlButton.copy(str, str2);
    }

    public final String component1() {
        return this.title;
    }

    public final String component2() {
        return this.url;
    }

    public final UrlButton copy(String title, String url) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(url, "url");
        return new UrlButton(title, url);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UrlButton) {
            UrlButton urlButton = (UrlButton) obj;
            return Intrinsics.areEqual(this.title, urlButton.title) && Intrinsics.areEqual(this.url, urlButton.url);
        }
        return false;
    }

    public int hashCode() {
        return (this.title.hashCode() * 31) + this.url.hashCode();
    }

    public String toString() {
        return "UrlButton(title=" + this.title + ", url=" + this.url + ')';
    }

    public UrlButton(String title, String url) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(url, "url");
        this.title = title;
        this.url = url;
    }

    public /* synthetic */ UrlButton(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final String getUrl() {
        return this.url;
    }

    public final void setUrl(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.url = str;
    }
}
