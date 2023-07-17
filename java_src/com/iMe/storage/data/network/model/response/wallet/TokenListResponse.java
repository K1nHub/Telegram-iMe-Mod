package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenListsResponse.kt */
/* loaded from: classes3.dex */
public final class TokenListResponse {
    private final String icon;
    private final boolean isVerified;
    private final String name;
    private final String url;

    public static /* synthetic */ TokenListResponse copy$default(TokenListResponse tokenListResponse, boolean z, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = tokenListResponse.isVerified;
        }
        if ((i & 2) != 0) {
            str = tokenListResponse.name;
        }
        if ((i & 4) != 0) {
            str2 = tokenListResponse.icon;
        }
        if ((i & 8) != 0) {
            str3 = tokenListResponse.url;
        }
        return tokenListResponse.copy(z, str, str2, str3);
    }

    public final boolean component1() {
        return this.isVerified;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.icon;
    }

    public final String component4() {
        return this.url;
    }

    public final TokenListResponse copy(boolean z, String name, String icon, String url) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(url, "url");
        return new TokenListResponse(z, name, icon, url);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenListResponse) {
            TokenListResponse tokenListResponse = (TokenListResponse) obj;
            return this.isVerified == tokenListResponse.isVerified && Intrinsics.areEqual(this.name, tokenListResponse.name) && Intrinsics.areEqual(this.icon, tokenListResponse.icon) && Intrinsics.areEqual(this.url, tokenListResponse.url);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public int hashCode() {
        boolean z = this.isVerified;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (((((r0 * 31) + this.name.hashCode()) * 31) + this.icon.hashCode()) * 31) + this.url.hashCode();
    }

    public String toString() {
        return "TokenListResponse(isVerified=" + this.isVerified + ", name=" + this.name + ", icon=" + this.icon + ", url=" + this.url + ')';
    }

    public TokenListResponse(boolean z, String name, String icon, String url) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(url, "url");
        this.isVerified = z;
        this.name = name;
        this.icon = icon;
        this.url = url;
    }

    public final boolean isVerified() {
        return this.isVerified;
    }

    public final String getName() {
        return this.name;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getUrl() {
        return this.url;
    }
}
