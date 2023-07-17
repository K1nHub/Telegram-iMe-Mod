package com.iMe.storage.data.network.model.response.wallet;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensSearchResponse.kt */
/* loaded from: classes3.dex */
public final class FoundTokenWithFamilyResponse {
    private final List<FoundTokenResponse> family;
    private final FoundTokenResponse token;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ FoundTokenWithFamilyResponse copy$default(FoundTokenWithFamilyResponse foundTokenWithFamilyResponse, FoundTokenResponse foundTokenResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            foundTokenResponse = foundTokenWithFamilyResponse.token;
        }
        if ((i & 2) != 0) {
            list = foundTokenWithFamilyResponse.family;
        }
        return foundTokenWithFamilyResponse.copy(foundTokenResponse, list);
    }

    public final FoundTokenResponse component1() {
        return this.token;
    }

    public final List<FoundTokenResponse> component2() {
        return this.family;
    }

    public final FoundTokenWithFamilyResponse copy(FoundTokenResponse token, List<FoundTokenResponse> family) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(family, "family");
        return new FoundTokenWithFamilyResponse(token, family);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FoundTokenWithFamilyResponse) {
            FoundTokenWithFamilyResponse foundTokenWithFamilyResponse = (FoundTokenWithFamilyResponse) obj;
            return Intrinsics.areEqual(this.token, foundTokenWithFamilyResponse.token) && Intrinsics.areEqual(this.family, foundTokenWithFamilyResponse.family);
        }
        return false;
    }

    public int hashCode() {
        return (this.token.hashCode() * 31) + this.family.hashCode();
    }

    public String toString() {
        return "FoundTokenWithFamilyResponse(token=" + this.token + ", family=" + this.family + ')';
    }

    public FoundTokenWithFamilyResponse(FoundTokenResponse token, List<FoundTokenResponse> family) {
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(family, "family");
        this.token = token;
        this.family = family;
    }

    public final FoundTokenResponse getToken() {
        return this.token;
    }

    public final List<FoundTokenResponse> getFamily() {
        return this.family;
    }
}
