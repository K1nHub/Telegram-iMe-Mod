package com.iMe.storage.data.network.model.response.crypto.level;
/* compiled from: GetAccountLevelVisibilityResponse.kt */
/* loaded from: classes4.dex */
public final class GetAccountLevelVisibilityResponse {
    private final boolean rankVisibility;

    public static /* synthetic */ GetAccountLevelVisibilityResponse copy$default(GetAccountLevelVisibilityResponse getAccountLevelVisibilityResponse, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = getAccountLevelVisibilityResponse.rankVisibility;
        }
        return getAccountLevelVisibilityResponse.copy(z);
    }

    public final boolean component1() {
        return this.rankVisibility;
    }

    public final GetAccountLevelVisibilityResponse copy(boolean z) {
        return new GetAccountLevelVisibilityResponse(z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GetAccountLevelVisibilityResponse) && this.rankVisibility == ((GetAccountLevelVisibilityResponse) obj).rankVisibility;
    }

    public int hashCode() {
        boolean z = this.rankVisibility;
        if (z) {
            return 1;
        }
        return z ? 1 : 0;
    }

    public String toString() {
        return "GetAccountLevelVisibilityResponse(rankVisibility=" + this.rankVisibility + ')';
    }

    public GetAccountLevelVisibilityResponse(boolean z) {
        this.rankVisibility = z;
    }

    public final boolean getRankVisibility() {
        return this.rankVisibility;
    }
}
