package com.smedialink.navigation.wallet.coordinator.args;

import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.swap.SwapProtocol;
import com.smedialink.storage.domain.model.wallet.token.TokenCode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TokenBuyCoordinatorArgs.kt */
/* loaded from: classes3.dex */
public final class TokenBuyCoordinatorArgs {
    private final NetworkType networkType;
    private final SwapProtocol swapProtocol;
    private final TokenCode tokenCode;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TokenBuyCoordinatorArgs) {
            TokenBuyCoordinatorArgs tokenBuyCoordinatorArgs = (TokenBuyCoordinatorArgs) obj;
            return this.tokenCode == tokenBuyCoordinatorArgs.tokenCode && this.swapProtocol == tokenBuyCoordinatorArgs.swapProtocol && this.networkType == tokenBuyCoordinatorArgs.networkType;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.tokenCode.hashCode() * 31) + this.swapProtocol.hashCode()) * 31;
        NetworkType networkType = this.networkType;
        return hashCode + (networkType == null ? 0 : networkType.hashCode());
    }

    public String toString() {
        return "TokenBuyCoordinatorArgs(tokenCode=" + this.tokenCode + ", swapProtocol=" + this.swapProtocol + ", networkType=" + this.networkType + ')';
    }

    public TokenBuyCoordinatorArgs(TokenCode tokenCode, SwapProtocol swapProtocol, NetworkType networkType) {
        Intrinsics.checkNotNullParameter(tokenCode, "tokenCode");
        Intrinsics.checkNotNullParameter(swapProtocol, "swapProtocol");
        this.tokenCode = tokenCode;
        this.swapProtocol = swapProtocol;
        this.networkType = networkType;
    }

    public /* synthetic */ TokenBuyCoordinatorArgs(TokenCode tokenCode, SwapProtocol swapProtocol, NetworkType networkType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(tokenCode, swapProtocol, (i & 4) != 0 ? null : networkType);
    }

    public final TokenCode getTokenCode() {
        return this.tokenCode;
    }

    public final SwapProtocol getSwapProtocol() {
        return this.swapProtocol;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }
}
