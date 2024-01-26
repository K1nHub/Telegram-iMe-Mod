package com.iMe.storage.domain.model.crypto.wallet_connect;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.send.GasPriceInfo;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletConnectTransactionParams.kt */
/* loaded from: classes3.dex */
public final class WalletConnectTransactionParams {
    private final long chainId;
    private final GasPriceInfo fast;
    private final GasPriceInfo fastest;
    private final BigInteger nonce;
    private final GasPriceInfo safeLow;

    public static /* synthetic */ WalletConnectTransactionParams copy$default(WalletConnectTransactionParams walletConnectTransactionParams, GasPriceInfo gasPriceInfo, GasPriceInfo gasPriceInfo2, GasPriceInfo gasPriceInfo3, BigInteger bigInteger, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            gasPriceInfo = walletConnectTransactionParams.fastest;
        }
        if ((i & 2) != 0) {
            gasPriceInfo2 = walletConnectTransactionParams.fast;
        }
        GasPriceInfo gasPriceInfo4 = gasPriceInfo2;
        if ((i & 4) != 0) {
            gasPriceInfo3 = walletConnectTransactionParams.safeLow;
        }
        GasPriceInfo gasPriceInfo5 = gasPriceInfo3;
        if ((i & 8) != 0) {
            bigInteger = walletConnectTransactionParams.nonce;
        }
        BigInteger bigInteger2 = bigInteger;
        if ((i & 16) != 0) {
            j = walletConnectTransactionParams.chainId;
        }
        return walletConnectTransactionParams.copy(gasPriceInfo, gasPriceInfo4, gasPriceInfo5, bigInteger2, j);
    }

    public final GasPriceInfo component1() {
        return this.fastest;
    }

    public final GasPriceInfo component2() {
        return this.fast;
    }

    public final GasPriceInfo component3() {
        return this.safeLow;
    }

    public final BigInteger component4() {
        return this.nonce;
    }

    public final long component5() {
        return this.chainId;
    }

    public final WalletConnectTransactionParams copy(GasPriceInfo gasPriceInfo, GasPriceInfo fast, GasPriceInfo gasPriceInfo2, BigInteger nonce, long j) {
        Intrinsics.checkNotNullParameter(fast, "fast");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        return new WalletConnectTransactionParams(gasPriceInfo, fast, gasPriceInfo2, nonce, j);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WalletConnectTransactionParams) {
            WalletConnectTransactionParams walletConnectTransactionParams = (WalletConnectTransactionParams) obj;
            return Intrinsics.areEqual(this.fastest, walletConnectTransactionParams.fastest) && Intrinsics.areEqual(this.fast, walletConnectTransactionParams.fast) && Intrinsics.areEqual(this.safeLow, walletConnectTransactionParams.safeLow) && Intrinsics.areEqual(this.nonce, walletConnectTransactionParams.nonce) && this.chainId == walletConnectTransactionParams.chainId;
        }
        return false;
    }

    public int hashCode() {
        GasPriceInfo gasPriceInfo = this.fastest;
        int hashCode = (((gasPriceInfo == null ? 0 : gasPriceInfo.hashCode()) * 31) + this.fast.hashCode()) * 31;
        GasPriceInfo gasPriceInfo2 = this.safeLow;
        return ((((hashCode + (gasPriceInfo2 != null ? gasPriceInfo2.hashCode() : 0)) * 31) + this.nonce.hashCode()) * 31) + ProfileData$$ExternalSyntheticBackport0.m1020m(this.chainId);
    }

    public String toString() {
        return "WalletConnectTransactionParams(fastest=" + this.fastest + ", fast=" + this.fast + ", safeLow=" + this.safeLow + ", nonce=" + this.nonce + ", chainId=" + this.chainId + ')';
    }

    public WalletConnectTransactionParams(GasPriceInfo gasPriceInfo, GasPriceInfo fast, GasPriceInfo gasPriceInfo2, BigInteger nonce, long j) {
        Intrinsics.checkNotNullParameter(fast, "fast");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        this.fastest = gasPriceInfo;
        this.fast = fast;
        this.safeLow = gasPriceInfo2;
        this.nonce = nonce;
        this.chainId = j;
    }

    public final GasPriceInfo getFastest() {
        return this.fastest;
    }

    public final GasPriceInfo getFast() {
        return this.fast;
    }

    public final GasPriceInfo getSafeLow() {
        return this.safeLow;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final long getChainId() {
        return this.chainId;
    }
}
