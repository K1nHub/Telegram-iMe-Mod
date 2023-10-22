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
    public static /* synthetic */ TokensBalanceRequest copy$default(TokensBalanceRequest tokensBalanceRequest, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tokensBalanceRequest.networkType;
        }
        if ((i & 2) != 0) {
            list = tokensBalanceRequest.tokens;
        }
        return tokensBalanceRequest.copy(str, list);
    }

    public final String component1() {
        return this.networkType;
    }

    public final List<TokenRequest> component2() {
        return this.tokens;
    }

    public final TokensBalanceRequest copy(String networkType, List<TokenRequest> list) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new TokensBalanceRequest(networkType, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokensBalanceRequest) {
            TokensBalanceRequest tokensBalanceRequest = (TokensBalanceRequest) obj;
            return Intrinsics.areEqual(this.networkType, tokensBalanceRequest.networkType) && Intrinsics.areEqual(this.tokens, tokensBalanceRequest.tokens);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.networkType.hashCode() * 31;
        List<TokenRequest> list = this.tokens;
        return hashCode + (list == null ? 0 : list.hashCode());
    }

    public String toString() {
        return "TokensBalanceRequest(networkType=" + this.networkType + ", tokens=" + this.tokens + ')';
    }

    public TokensBalanceRequest(String networkType, List<TokenRequest> list) {
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.networkType = networkType;
        this.tokens = list;
    }

    public /* synthetic */ TokensBalanceRequest(String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : list);
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final List<TokenRequest> getTokens() {
        return this.tokens;
    }
}
