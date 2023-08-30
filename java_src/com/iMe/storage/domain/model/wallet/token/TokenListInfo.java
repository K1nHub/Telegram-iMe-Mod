package com.iMe.storage.domain.model.wallet.token;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenListsData.kt */
/* loaded from: classes3.dex */
public final class TokenListInfo {
    private final String iconUrl;
    private final boolean isVerified;
    private final String name;
    private final String url;

    public static /* synthetic */ TokenListInfo copy$default(TokenListInfo tokenListInfo, boolean z, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            z = tokenListInfo.isVerified;
        }
        if ((i & 2) != 0) {
            str = tokenListInfo.name;
        }
        if ((i & 4) != 0) {
            str2 = tokenListInfo.iconUrl;
        }
        if ((i & 8) != 0) {
            str3 = tokenListInfo.url;
        }
        return tokenListInfo.copy(z, str, str2, str3);
    }

    public final boolean component1() {
        return this.isVerified;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.iconUrl;
    }

    public final String component4() {
        return this.url;
    }

    public final TokenListInfo copy(boolean z, String name, String iconUrl, String url) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(url, "url");
        return new TokenListInfo(z, name, iconUrl, url);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenListInfo) {
            TokenListInfo tokenListInfo = (TokenListInfo) obj;
            return this.isVerified == tokenListInfo.isVerified && Intrinsics.areEqual(this.name, tokenListInfo.name) && Intrinsics.areEqual(this.iconUrl, tokenListInfo.iconUrl) && Intrinsics.areEqual(this.url, tokenListInfo.url);
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
        return (((((r0 * 31) + this.name.hashCode()) * 31) + this.iconUrl.hashCode()) * 31) + this.url.hashCode();
    }

    public String toString() {
        return "TokenListInfo(isVerified=" + this.isVerified + ", name=" + this.name + ", iconUrl=" + this.iconUrl + ", url=" + this.url + ')';
    }

    public TokenListInfo(boolean z, String name, String iconUrl, String url) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(iconUrl, "iconUrl");
        Intrinsics.checkNotNullParameter(url, "url");
        this.isVerified = z;
        this.name = name;
        this.iconUrl = iconUrl;
        this.url = url;
    }

    public final boolean isVerified() {
        return this.isVerified;
    }

    public final String getName() {
        return this.name;
    }

    public final String getIconUrl() {
        return this.iconUrl;
    }

    public final String getUrl() {
        return this.url;
    }
}
