package com.iMe.storage.data.network.model.request.wallet;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensBalanceRequest.kt */
/* loaded from: classes3.dex */
public final class TokensBalanceRequest {
    private final String networkType;
    private final List<TokenRequest> tokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TokensBalanceRequest copy$default(TokensBalanceRequest tokensBalanceRequest, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = tokensBalanceRequest.tokens;
        }
        if ((i & 2) != 0) {
            str = tokensBalanceRequest.networkType;
        }
        return tokensBalanceRequest.copy(list, str);
    }

    public final List<TokenRequest> component1() {
        return this.tokens;
    }

    public final String component2() {
        return this.networkType;
    }

    public final TokensBalanceRequest copy(List<TokenRequest> list, String networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new TokensBalanceRequest(list, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokensBalanceRequest) {
            TokensBalanceRequest tokensBalanceRequest = (TokensBalanceRequest) obj;
            return Intrinsics.areEqual(this.tokens, tokensBalanceRequest.tokens) && Intrinsics.areEqual(this.networkType, tokensBalanceRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        List<TokenRequest> list = this.tokens;
        return ((list == null ? 0 : list.hashCode()) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "TokensBalanceRequest(tokens=" + this.tokens + ", networkType=" + this.networkType + ')';
    }

    public TokensBalanceRequest(List<TokenRequest> list, String networkType) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.tokens = list;
        this.networkType = networkType;
    }

    public /* synthetic */ TokensBalanceRequest(List list, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list, str);
    }

    public final List<TokenRequest> getTokens() {
        return this.tokens;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
