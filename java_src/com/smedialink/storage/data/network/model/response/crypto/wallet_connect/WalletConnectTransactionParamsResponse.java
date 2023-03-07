package com.smedialink.storage.data.network.model.response.crypto.wallet_connect;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import com.smedialink.storage.data.network.model.response.crypto.wallet.GasPriceOneItem;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectTransactionParamsResponse.kt */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionParamsResponse {
    private final long chainId;
    private final GasPriceOneItem fast;
    private final GasPriceOneItem fastest;
    private final BigInteger nonce;
    private final GasPriceOneItem safeLow;

    public static /* synthetic */ WalletConnectTransactionParamsResponse copy$default(WalletConnectTransactionParamsResponse walletConnectTransactionParamsResponse, GasPriceOneItem gasPriceOneItem, GasPriceOneItem gasPriceOneItem2, GasPriceOneItem gasPriceOneItem3, BigInteger bigInteger, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            gasPriceOneItem = walletConnectTransactionParamsResponse.fastest;
        }
        if ((i & 2) != 0) {
            gasPriceOneItem2 = walletConnectTransactionParamsResponse.fast;
        }
        GasPriceOneItem gasPriceOneItem4 = gasPriceOneItem2;
        if ((i & 4) != 0) {
            gasPriceOneItem3 = walletConnectTransactionParamsResponse.safeLow;
        }
        GasPriceOneItem gasPriceOneItem5 = gasPriceOneItem3;
        if ((i & 8) != 0) {
            bigInteger = walletConnectTransactionParamsResponse.nonce;
        }
        BigInteger bigInteger2 = bigInteger;
        if ((i & 16) != 0) {
            j = walletConnectTransactionParamsResponse.chainId;
        }
        return walletConnectTransactionParamsResponse.copy(gasPriceOneItem, gasPriceOneItem4, gasPriceOneItem5, bigInteger2, j);
    }

    public final GasPriceOneItem component1() {
        return this.fastest;
    }

    public final GasPriceOneItem component2() {
        return this.fast;
    }

    public final GasPriceOneItem component3() {
        return this.safeLow;
    }

    public final BigInteger component4() {
        return this.nonce;
    }

    public final long component5() {
        return this.chainId;
    }

    public final WalletConnectTransactionParamsResponse copy(GasPriceOneItem gasPriceOneItem, GasPriceOneItem fast, GasPriceOneItem gasPriceOneItem2, BigInteger nonce, long j) {
        Intrinsics.checkNotNullParameter(fast, "fast");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        return new WalletConnectTransactionParamsResponse(gasPriceOneItem, fast, gasPriceOneItem2, nonce, j);
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
        GasPriceOneItem gasPriceOneItem = this.fastest;
        int hashCode = (((gasPriceOneItem == null ? 0 : gasPriceOneItem.hashCode()) * 31) + this.fast.hashCode()) * 31;
        GasPriceOneItem gasPriceOneItem2 = this.safeLow;
        return ((((hashCode + (gasPriceOneItem2 != null ? gasPriceOneItem2.hashCode() : 0)) * 31) + this.nonce.hashCode()) * 31) + StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.chainId);
    }

    public String toString() {
        return "WalletConnectTransactionParamsResponse(fastest=" + this.fastest + ", fast=" + this.fast + ", safeLow=" + this.safeLow + ", nonce=" + this.nonce + ", chainId=" + this.chainId + ')';
    }

    public WalletConnectTransactionParamsResponse(GasPriceOneItem gasPriceOneItem, GasPriceOneItem fast, GasPriceOneItem gasPriceOneItem2, BigInteger nonce, long j) {
        Intrinsics.checkNotNullParameter(fast, "fast");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        this.fastest = gasPriceOneItem;
        this.fast = fast;
        this.safeLow = gasPriceOneItem2;
        this.nonce = nonce;
        this.chainId = j;
    }

    public final GasPriceOneItem getFastest() {
        return this.fastest;
    }

    public final GasPriceOneItem getFast() {
        return this.fast;
    }

    public final GasPriceOneItem getSafeLow() {
        return this.safeLow;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final long getChainId() {
        return this.chainId;
    }
}
