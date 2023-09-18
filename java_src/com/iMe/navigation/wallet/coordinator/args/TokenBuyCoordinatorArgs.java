package com.iMe.navigation.wallet.coordinator.args;

import com.iMe.storage.domain.model.wallet.swap.SwapProtocol;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBuyCoordinatorArgs.kt */
/* loaded from: classes4.dex */
public final class TokenBuyCoordinatorArgs {
    private final String networkId;
    private final SwapProtocol swapProtocol;
    private final TokenDetailed token;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenBuyCoordinatorArgs) {
            TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs = (TokenBuyCoordinatorArgs) obj;
            return Intrinsics.areEqual(this.token, tokenBuyCoordinatorArgs.token) && this.swapProtocol == tokenBuyCoordinatorArgs.swapProtocol && Intrinsics.areEqual(this.networkId, tokenBuyCoordinatorArgs.networkId);
        }
        return false;
    }

    public int hashCode() {
        TokenDetailed tokenDetailed = this.token;
        int hashCode = (tokenDetailed == null ? 0 : tokenDetailed.hashCode()) * 31;
        SwapProtocol swapProtocol = this.swapProtocol;
        int hashCode2 = (hashCode + (swapProtocol == null ? 0 : swapProtocol.hashCode())) * 31;
        String str = this.networkId;
        return hashCode2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "TokenBuyCoordinatorArgs(token=" + this.token + ", swapProtocol=" + this.swapProtocol + ", networkId=" + this.networkId + ')';
    }

    public TokenBuyCoordinatorArgs(TokenDetailed tokenDetailed, SwapProtocol swapProtocol, String str) {
        this.token = tokenDetailed;
        this.swapProtocol = swapProtocol;
        this.networkId = str;
    }

    public /* synthetic */ TokenBuyCoordinatorArgs(TokenDetailed tokenDetailed, SwapProtocol swapProtocol, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenDetailed, swapProtocol, (i & 4) != 0 ? null : str);
    }

    public final TokenDetailed getToken() {
        return this.token;
    }

    public final SwapProtocol getSwapProtocol() {
        return this.swapProtocol;
    }

    public final String getNetworkId() {
        return this.networkId;
    }
}
