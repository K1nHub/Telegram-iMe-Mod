package com.iMe.storage.data.network.model.response.crypto.wallet_connect;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.data.network.model.response.crypto.wallet.GasPriceResponse;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectTransactionParamsResponse.kt */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionParamsResponse {
    private final long chainId;
    private final GasPriceResponse fast;
    private final GasPriceResponse fastest;
    private final BigInteger nonce;
    private final GasPriceResponse safeLow;

    public static /* synthetic */ WalletConnectTransactionParamsResponse copy$default(WalletConnectTransactionParamsResponse walletConnectTransactionParamsResponse, GasPriceResponse gasPriceResponse, GasPriceResponse gasPriceResponse2, GasPriceResponse gasPriceResponse3, BigInteger bigInteger, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            gasPriceResponse = walletConnectTransactionParamsResponse.fastest;
        }
        if ((i & 2) != 0) {
            gasPriceResponse2 = walletConnectTransactionParamsResponse.fast;
        }
        GasPriceResponse gasPriceResponse4 = gasPriceResponse2;
        if ((i & 4) != 0) {
            gasPriceResponse3 = walletConnectTransactionParamsResponse.safeLow;
        }
        GasPriceResponse gasPriceResponse5 = gasPriceResponse3;
        if ((i & 8) != 0) {
            bigInteger = walletConnectTransactionParamsResponse.nonce;
        }
        BigInteger bigInteger2 = bigInteger;
        if ((i & 16) != 0) {
            j = walletConnectTransactionParamsResponse.chainId;
        }
        return walletConnectTransactionParamsResponse.copy(gasPriceResponse, gasPriceResponse4, gasPriceResponse5, bigInteger2, j);
    }

    public final GasPriceResponse component1() {
        return this.fastest;
    }

    public final GasPriceResponse component2() {
        return this.fast;
    }

    public final GasPriceResponse component3() {
        return this.safeLow;
    }

    public final BigInteger component4() {
        return this.nonce;
    }

    public final long component5() {
        return this.chainId;
    }

    public final WalletConnectTransactionParamsResponse copy(GasPriceResponse gasPriceResponse, GasPriceResponse fast, GasPriceResponse gasPriceResponse2, BigInteger nonce, long j) {
        Intrinsics.checkNotNullParameter(fast, "fast");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        return new WalletConnectTransactionParamsResponse(gasPriceResponse, fast, gasPriceResponse2, nonce, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletConnectTransactionParamsResponse) {
            WalletConnectTransactionParamsResponse walletConnectTransactionParamsResponse = (WalletConnectTransactionParamsResponse) obj;
            return Intrinsics.areEqual(this.fastest, walletConnectTransactionParamsResponse.fastest) && Intrinsics.areEqual(this.fast, walletConnectTransactionParamsResponse.fast) && Intrinsics.areEqual(this.safeLow, walletConnectTransactionParamsResponse.safeLow) && Intrinsics.areEqual(this.nonce, walletConnectTransactionParamsResponse.nonce) && this.chainId == walletConnectTransactionParamsResponse.chainId;
        }
        return false;
    }

    public int hashCode() {
        GasPriceResponse gasPriceResponse = this.fastest;
        int hashCode = (((gasPriceResponse == null ? 0 : gasPriceResponse.hashCode()) * 31) + this.fast.hashCode()) * 31;
        GasPriceResponse gasPriceResponse2 = this.safeLow;
        return ((((hashCode + (gasPriceResponse2 != null ? gasPriceResponse2.hashCode() : 0)) * 31) + this.nonce.hashCode()) * 31) + BotsDbModel$$ExternalSyntheticBackport0.m706m(this.chainId);
    }

    public String toString() {
        return "WalletConnectTransactionParamsResponse(fastest=" + this.fastest + ", fast=" + this.fast + ", safeLow=" + this.safeLow + ", nonce=" + this.nonce + ", chainId=" + this.chainId + ')';
    }

    public WalletConnectTransactionParamsResponse(GasPriceResponse gasPriceResponse, GasPriceResponse fast, GasPriceResponse gasPriceResponse2, BigInteger nonce, long j) {
        Intrinsics.checkNotNullParameter(fast, "fast");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        this.fastest = gasPriceResponse;
        this.fast = fast;
        this.safeLow = gasPriceResponse2;
        this.nonce = nonce;
        this.chainId = j;
    }

    public final GasPriceResponse getFastest() {
        return this.fastest;
    }

    public final GasPriceResponse getFast() {
        return this.fast;
    }

    public final GasPriceResponse getSafeLow() {
        return this.safeLow;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final long getChainId() {
        return this.chainId;
    }
}
