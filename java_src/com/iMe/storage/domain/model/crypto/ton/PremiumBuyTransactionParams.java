package com.iMe.storage.domain.model.crypto.ton;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PremiumBuyTransactionParams.kt */
/* loaded from: classes3.dex */
public final class PremiumBuyTransactionParams {
    private final String address;
    private final BigInteger amount;
    private final String payload;
    private final int seqno;
    private final int validUntil;

    public static /* synthetic */ PremiumBuyTransactionParams copy$default(PremiumBuyTransactionParams premiumBuyTransactionParams, int i, String str, String str2, BigInteger bigInteger, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = premiumBuyTransactionParams.validUntil;
        }
        if ((i3 & 2) != 0) {
            str = premiumBuyTransactionParams.address;
        }
        String str3 = str;
        if ((i3 & 4) != 0) {
            str2 = premiumBuyTransactionParams.payload;
        }
        String str4 = str2;
        if ((i3 & 8) != 0) {
            bigInteger = premiumBuyTransactionParams.amount;
        }
        BigInteger bigInteger2 = bigInteger;
        if ((i3 & 16) != 0) {
            i2 = premiumBuyTransactionParams.seqno;
        }
        return premiumBuyTransactionParams.copy(i, str3, str4, bigInteger2, i2);
    }

    public final int component1() {
        return this.validUntil;
    }

    public final String component2() {
        return this.address;
    }

    public final String component3() {
        return this.payload;
    }

    public final BigInteger component4() {
        return this.amount;
    }

    public final int component5() {
        return this.seqno;
    }

    public final PremiumBuyTransactionParams copy(int i, String address, String payload, BigInteger amount, int i2) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new PremiumBuyTransactionParams(i, address, payload, amount, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PremiumBuyTransactionParams) {
            PremiumBuyTransactionParams premiumBuyTransactionParams = (PremiumBuyTransactionParams) obj;
            return this.validUntil == premiumBuyTransactionParams.validUntil && Intrinsics.areEqual(this.address, premiumBuyTransactionParams.address) && Intrinsics.areEqual(this.payload, premiumBuyTransactionParams.payload) && Intrinsics.areEqual(this.amount, premiumBuyTransactionParams.amount) && this.seqno == premiumBuyTransactionParams.seqno;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.validUntil * 31) + this.address.hashCode()) * 31) + this.payload.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.seqno;
    }

    public String toString() {
        return "PremiumBuyTransactionParams(validUntil=" + this.validUntil + ", address=" + this.address + ", payload=" + this.payload + ", amount=" + this.amount + ", seqno=" + this.seqno + ')';
    }

    public PremiumBuyTransactionParams(int i, String address, String payload, BigInteger amount, int i2) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.validUntil = i;
        this.address = address;
        this.payload = payload;
        this.amount = amount;
        this.seqno = i2;
    }

    public final int getValidUntil() {
        return this.validUntil;
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getPayload() {
        return this.payload;
    }

    public final BigInteger getAmount() {
        return this.amount;
    }

    public final int getSeqno() {
        return this.seqno;
    }
}
