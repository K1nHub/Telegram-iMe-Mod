package com.iMe.storage.data.network.model.response.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DisplayedTokensResponse.kt */
/* loaded from: classes3.dex */
public final class DisplayedTokensResponse {
    private final List<DisplayedTokenResponse> displayedTokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ DisplayedTokensResponse copy$default(DisplayedTokensResponse displayedTokensResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = displayedTokensResponse.displayedTokens;
        }
        return displayedTokensResponse.copy(list);
    }

    public final List<DisplayedTokenResponse> component1() {
        return this.displayedTokens;
    }

    public final DisplayedTokensResponse copy(List<DisplayedTokenResponse> displayedTokens) {
        Intrinsics.checkNotNullParameter(displayedTokens, "displayedTokens");
        return new DisplayedTokensResponse(displayedTokens);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DisplayedTokensResponse) && Intrinsics.areEqual(this.displayedTokens, ((DisplayedTokensResponse) obj).displayedTokens);
    }

    public int hashCode() {
        return this.displayedTokens.hashCode();
    }

    public String toString() {
        return "DisplayedTokensResponse(displayedTokens=" + this.displayedTokens + ')';
    }

    public DisplayedTokensResponse(List<DisplayedTokenResponse> displayedTokens) {
        Intrinsics.checkNotNullParameter(displayedTokens, "displayedTokens");
        this.displayedTokens = displayedTokens;
    }

    public final List<DisplayedTokenResponse> getDisplayedTokens() {
        return this.displayedTokens;
    }
}
