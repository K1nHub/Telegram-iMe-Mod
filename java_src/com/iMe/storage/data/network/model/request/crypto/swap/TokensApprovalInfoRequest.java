package com.iMe.storage.data.network.model.request.crypto.swap;

import com.iMe.storage.data.network.model.request.wallet.TokenRequest;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokensApprovalInfoRequest.kt */
/* loaded from: classes4.dex */
public final class TokensApprovalInfoRequest {
    private final String defiProtocol;
    private final String networkType;
    private final List<TokenRequest> tokens;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TokensApprovalInfoRequest copy$default(TokensApprovalInfoRequest tokensApprovalInfoRequest, String str, String str2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tokensApprovalInfoRequest.defiProtocol;
        }
        if ((i & 2) != 0) {
            str2 = tokensApprovalInfoRequest.networkType;
        }
        if ((i & 4) != 0) {
            list = tokensApprovalInfoRequest.tokens;
        }
        return tokensApprovalInfoRequest.copy(str, str2, list);
    }

    public final String component1() {
        return this.defiProtocol;
    }

    public final String component2() {
        return this.networkType;
    }

    public final List<TokenRequest> component3() {
        return this.tokens;
    }

    public final TokensApprovalInfoRequest copy(String defiProtocol, String networkType, List<TokenRequest> tokens) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        return new TokensApprovalInfoRequest(defiProtocol, networkType, tokens);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokensApprovalInfoRequest) {
            TokensApprovalInfoRequest tokensApprovalInfoRequest = (TokensApprovalInfoRequest) obj;
            return Intrinsics.areEqual(this.defiProtocol, tokensApprovalInfoRequest.defiProtocol) && Intrinsics.areEqual(this.networkType, tokensApprovalInfoRequest.networkType) && Intrinsics.areEqual(this.tokens, tokensApprovalInfoRequest.tokens);
        }
        return false;
    }

    public int hashCode() {
        return (((this.defiProtocol.hashCode() * 31) + this.networkType.hashCode()) * 31) + this.tokens.hashCode();
    }

    public String toString() {
        return "TokensApprovalInfoRequest(defiProtocol=" + this.defiProtocol + ", networkType=" + this.networkType + ", tokens=" + this.tokens + ')';
    }

    public TokensApprovalInfoRequest(String defiProtocol, String networkType, List<TokenRequest> tokens) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        Intrinsics.checkNotNullParameter(tokens, "tokens");
        this.defiProtocol = defiProtocol;
        this.networkType = networkType;
        this.tokens = tokens;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final List<TokenRequest> getTokens() {
        return this.tokens;
    }
}
