package com.iMe.storage.data.network.model.response.crypto.nft;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NftItemsResponse.kt */
/* loaded from: classes3.dex */
public final class NftItemsResponse {
    private final List<NftItemResponse> tokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ NftItemsResponse copy$default(NftItemsResponse nftItemsResponse, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = nftItemsResponse.tokens;
        }
        return nftItemsResponse.copy(list);
    }

    public final List<NftItemResponse> component1() {
        return this.tokens;
    }

    public final NftItemsResponse copy(List<NftItemResponse> tokens) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        return new NftItemsResponse(tokens);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof NftItemsResponse) && Intrinsics.areEqual(this.tokens, ((NftItemsResponse) obj).tokens);
    }

    public int hashCode() {
        return this.tokens.hashCode();
    }

    public String toString() {
        return "NftItemsResponse(tokens=" + this.tokens + ')';
    }

    public NftItemsResponse(List<NftItemResponse> tokens) {
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        this.tokens = tokens;
    }

    public final List<NftItemResponse> getTokens() {
        return this.tokens;
    }
}
