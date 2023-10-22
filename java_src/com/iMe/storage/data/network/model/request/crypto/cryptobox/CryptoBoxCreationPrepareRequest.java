package com.iMe.storage.data.network.model.request.crypto.cryptobox;

import java.math.BigDecimal;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CryptoBoxCreationPrepareRequest.kt */
/* loaded from: classes3.dex */
public final class CryptoBoxCreationPrepareRequest {
    private final int capacity;
    private final String network;
    private final String rewardTokenAddress;
    private final BigDecimal rewardValue;

    public static /* synthetic */ CryptoBoxCreationPrepareRequest copy$default(CryptoBoxCreationPrepareRequest cryptoBoxCreationPrepareRequest, String str, String str2, BigDecimal bigDecimal, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = cryptoBoxCreationPrepareRequest.network;
        }
        if ((i2 & 2) != 0) {
            str2 = cryptoBoxCreationPrepareRequest.rewardTokenAddress;
        }
        if ((i2 & 4) != 0) {
            bigDecimal = cryptoBoxCreationPrepareRequest.rewardValue;
        }
        if ((i2 & 8) != 0) {
            i = cryptoBoxCreationPrepareRequest.capacity;
        }
        return cryptoBoxCreationPrepareRequest.copy(str, str2, bigDecimal, i);
    }

    public final String component1() {
        return this.network;
    }

    public final String component2() {
        return this.rewardTokenAddress;
    }

    public final BigDecimal component3() {
        return this.rewardValue;
    }

    public final int component4() {
        return this.capacity;
    }

    public final CryptoBoxCreationPrepareRequest copy(String network, String rewardTokenAddress, BigDecimal rewardValue, int i) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(rewardTokenAddress, "rewardTokenAddress");
        Intrinsics.checkNotNullParameter(rewardValue, "rewardValue");
        return new CryptoBoxCreationPrepareRequest(network, rewardTokenAddress, rewardValue, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CryptoBoxCreationPrepareRequest) {
            CryptoBoxCreationPrepareRequest cryptoBoxCreationPrepareRequest = (CryptoBoxCreationPrepareRequest) obj;
            return Intrinsics.areEqual(this.network, cryptoBoxCreationPrepareRequest.network) && Intrinsics.areEqual(this.rewardTokenAddress, cryptoBoxCreationPrepareRequest.rewardTokenAddress) && Intrinsics.areEqual(this.rewardValue, cryptoBoxCreationPrepareRequest.rewardValue) && this.capacity == cryptoBoxCreationPrepareRequest.capacity;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.network.hashCode() * 31) + this.rewardTokenAddress.hashCode()) * 31) + this.rewardValue.hashCode()) * 31) + this.capacity;
    }

    public String toString() {
        return "CryptoBoxCreationPrepareRequest(network=" + this.network + ", rewardTokenAddress=" + this.rewardTokenAddress + ", rewardValue=" + this.rewardValue + ", capacity=" + this.capacity + ')';
    }

    public CryptoBoxCreationPrepareRequest(String network, String rewardTokenAddress, BigDecimal rewardValue, int i) {
        Intrinsics.checkNotNullParameter(network, "network");
        Intrinsics.checkNotNullParameter(rewardTokenAddress, "rewardTokenAddress");
        Intrinsics.checkNotNullParameter(rewardValue, "rewardValue");
        this.network = network;
        this.rewardTokenAddress = rewardTokenAddress;
        this.rewardValue = rewardValue;
        this.capacity = i;
    }

    public final String getNetwork() {
        return this.network;
    }

    public final String getRewardTokenAddress() {
        return this.rewardTokenAddress;
    }

    public final BigDecimal getRewardValue() {
        return this.rewardValue;
    }

    public final int getCapacity() {
        return this.capacity;
    }
}
