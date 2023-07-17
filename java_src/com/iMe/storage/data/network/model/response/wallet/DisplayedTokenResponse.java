package com.iMe.storage.data.network.model.response.wallet;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: DisplayedTokensResponse.kt */
/* loaded from: classes3.dex */
public final class DisplayedTokenResponse {
    private final boolean isVisible;
    private final TokenDetailedResponse token;

    public static /* synthetic */ DisplayedTokenResponse copy$default(DisplayedTokenResponse displayedTokenResponse, TokenDetailedResponse tokenDetailedResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            tokenDetailedResponse = displayedTokenResponse.token;
        }
        if ((i & 2) != 0) {
            z = displayedTokenResponse.isVisible;
        }
        return displayedTokenResponse.copy(tokenDetailedResponse, z);
    }

    public final TokenDetailedResponse component1() {
        return this.token;
    }

    public final boolean component2() {
        return this.isVisible;
    }

    public final DisplayedTokenResponse copy(TokenDetailedResponse token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        return new DisplayedTokenResponse(token, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DisplayedTokenResponse) {
            DisplayedTokenResponse displayedTokenResponse = (DisplayedTokenResponse) obj;
            return Intrinsics.areEqual(this.token, displayedTokenResponse.token) && this.isVisible == displayedTokenResponse.isVisible;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.token.hashCode() * 31;
        boolean z = this.isVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "DisplayedTokenResponse(token=" + this.token + ", isVisible=" + this.isVisible + ')';
    }

    public DisplayedTokenResponse(TokenDetailedResponse token, boolean z) {
        Intrinsics.checkNotNullParameter(token, "token");
        this.token = token;
        this.isVisible = z;
    }

    public final TokenDetailedResponse getToken() {
        return this.token;
    }

    public final boolean isVisible() {
        return this.isVisible;
    }
}
