package com.iMe.storage.domain.model.staking;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import com.iMe.storage.domain.model.crypto.send.TransactionArgs;
import java.math.BigInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: StakingTransactionArgs.kt */
/* loaded from: classes3.dex */
public final class StakingTransactionArgs implements TransactionArgs {
    private final long chainId;
    private final String data;
    private final String from;
    private final BigInteger gasLimit;
    private final BigInteger gasPrice;
    private final BigInteger nonce;

    /* renamed from: to */
    private final String f354to;
    private final int value;

    public final long component1() {
        return this.chainId;
    }

    public final String component2() {
        return this.from;
    }

    public final String component3() {
        return this.f354to;
    }

    public final int component4() {
        return this.value;
    }

    public final String component5() {
        return this.data;
    }

    public final BigInteger component6() {
        return this.nonce;
    }

    public final BigInteger component7() {
        return this.gasPrice;
    }

    public final BigInteger component8() {
        return this.gasLimit;
    }

    public final StakingTransactionArgs copy(long j, String from, String to, int i, String data, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        return new StakingTransactionArgs(j, from, to, i, data, nonce, gasPrice, gasLimit);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StakingTransactionArgs) {
            StakingTransactionArgs stakingTransactionArgs = (StakingTransactionArgs) obj;
            return this.chainId == stakingTransactionArgs.chainId && Intrinsics.areEqual(this.from, stakingTransactionArgs.from) && Intrinsics.areEqual(this.f354to, stakingTransactionArgs.f354to) && this.value == stakingTransactionArgs.value && Intrinsics.areEqual(this.data, stakingTransactionArgs.data) && Intrinsics.areEqual(this.nonce, stakingTransactionArgs.nonce) && Intrinsics.areEqual(this.gasPrice, stakingTransactionArgs.gasPrice) && Intrinsics.areEqual(this.gasLimit, stakingTransactionArgs.gasLimit);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((((BotsDbModel$$ExternalSyntheticBackport0.m716m(this.chainId) * 31) + this.from.hashCode()) * 31) + this.f354to.hashCode()) * 31) + this.value) * 31) + this.data.hashCode()) * 31) + this.nonce.hashCode()) * 31) + this.gasPrice.hashCode()) * 31) + this.gasLimit.hashCode();
    }

    public String toString() {
        return "StakingTransactionArgs(chainId=" + this.chainId + ", from=" + this.from + ", to=" + this.f354to + ", value=" + this.value + ", data=" + this.data + ", nonce=" + this.nonce + ", gasPrice=" + this.gasPrice + ", gasLimit=" + this.gasLimit + ')';
    }

    public StakingTransactionArgs(long j, String from, String to, int i, String data, BigInteger nonce, BigInteger gasPrice, BigInteger gasLimit) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(nonce, "nonce");
        Intrinsics.checkNotNullParameter(gasPrice, "gasPrice");
        Intrinsics.checkNotNullParameter(gasLimit, "gasLimit");
        this.chainId = j;
        this.from = from;
        this.f354to = to;
        this.value = i;
        this.data = data;
        this.nonce = nonce;
        this.gasPrice = gasPrice;
        this.gasLimit = gasLimit;
    }

    public /* synthetic */ StakingTransactionArgs(long j, String str, String str2, int i, String str3, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, str, str2, (i2 & 8) != 0 ? 0 : i, str3, bigInteger, bigInteger2, bigInteger3);
    }

    public final long getChainId() {
        return this.chainId;
    }

    public final String getFrom() {
        return this.from;
    }

    public final String getTo() {
        return this.f354to;
    }

    public final int getValue() {
        return this.value;
    }

    public final String getData() {
        return this.data;
    }

    public final BigInteger getNonce() {
        return this.nonce;
    }

    public final BigInteger getGasPrice() {
        return this.gasPrice;
    }

    public final BigInteger getGasLimit() {
        return this.gasLimit;
    }
}
