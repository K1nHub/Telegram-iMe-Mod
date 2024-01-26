package com.iMe.navigation.wallet.coordinator.args;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBuyCoordinatorArgs.kt */
/* loaded from: classes3.dex */
public final class TokenBuyCoordinatorArgs {
    private final TokenDetailed fromToken;
    private final String networkId;
    private final SwapProtocol swapProtocol;
    private final TokenDetailed tokenTo;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenBuyCoordinatorArgs) {
            TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs = (TokenBuyCoordinatorArgs) obj;
            return Intrinsics.areEqual(this.fromToken, tokenBuyCoordinatorArgs.fromToken) && Intrinsics.areEqual(this.tokenTo, tokenBuyCoordinatorArgs.tokenTo) && this.swapProtocol == tokenBuyCoordinatorArgs.swapProtocol && Intrinsics.areEqual(this.networkId, tokenBuyCoordinatorArgs.networkId);
        }
        return false;
    }

    public int hashCode() {
        TokenDetailed tokenDetailed = this.fromToken;
        int hashCode = (tokenDetailed == null ? 0 : tokenDetailed.hashCode()) * 31;
        TokenDetailed tokenDetailed2 = this.tokenTo;
        int hashCode2 = (hashCode + (tokenDetailed2 == null ? 0 : tokenDetailed2.hashCode())) * 31;
        SwapProtocol swapProtocol = this.swapProtocol;
        int hashCode3 = (hashCode2 + (swapProtocol == null ? 0 : swapProtocol.hashCode())) * 31;
        String str = this.networkId;
        return hashCode3 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "TokenBuyCoordinatorArgs(fromToken=" + this.fromToken + ", tokenTo=" + this.tokenTo + ", swapProtocol=" + this.swapProtocol + ", networkId=" + this.networkId + ')';
    }

    public TokenBuyCoordinatorArgs(TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, SwapProtocol swapProtocol, String str) {
        this.fromToken = tokenDetailed;
        this.tokenTo = tokenDetailed2;
        this.swapProtocol = swapProtocol;
        this.networkId = str;
    }

    public /* synthetic */ TokenBuyCoordinatorArgs(TokenDetailed tokenDetailed, TokenDetailed tokenDetailed2, SwapProtocol swapProtocol, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : tokenDetailed, (i & 2) != 0 ? null : tokenDetailed2, swapProtocol, (i & 8) != 0 ? null : str);
    }

    public final TokenDetailed getFromToken() {
        return this.fromToken;
    }

    public final TokenDetailed getTokenTo() {
        return this.tokenTo;
    }

    public final SwapProtocol getSwapProtocol() {
        return this.swapProtocol;
    }

    public final String getNetworkId() {
        return this.networkId;
    }
}
