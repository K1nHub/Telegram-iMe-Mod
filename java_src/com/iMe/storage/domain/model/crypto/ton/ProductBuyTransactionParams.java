package com.iMe.storage.domain.model.crypto.ton;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ProductBuyTransactionParams.kt */
/* loaded from: classes3.dex */
public final class ProductBuyTransactionParams {
    private final String address;
    private final BigInteger amount;
    private final int seqno;
    private final long validUntil;

    public static /* synthetic */ ProductBuyTransactionParams copy$default(ProductBuyTransactionParams productBuyTransactionParams, long j, String str, BigInteger bigInteger, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = productBuyTransactionParams.validUntil;
        }
        long j2 = j;
        if ((i2 & 2) != 0) {
            str = productBuyTransactionParams.address;
        }
        String str2 = str;
        if ((i2 & 4) != 0) {
            bigInteger = productBuyTransactionParams.amount;
        }
        BigInteger bigInteger2 = bigInteger;
        if ((i2 & 8) != 0) {
            i = productBuyTransactionParams.seqno;
        }
        return productBuyTransactionParams.copy(j2, str2, bigInteger2, i);
    }

    public final long component1() {
        return this.validUntil;
    }

    public final String component2() {
        return this.address;
    }

    public final BigInteger component3() {
        return this.amount;
    }

    public final int component4() {
        return this.seqno;
    }

    public final ProductBuyTransactionParams copy(long j, String address, BigInteger amount, int i) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new ProductBuyTransactionParams(j, address, amount, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProductBuyTransactionParams) {
            ProductBuyTransactionParams productBuyTransactionParams = (ProductBuyTransactionParams) obj;
            return this.validUntil == productBuyTransactionParams.validUntil && Intrinsics.areEqual(this.address, productBuyTransactionParams.address) && Intrinsics.areEqual(this.amount, productBuyTransactionParams.amount) && this.seqno == productBuyTransactionParams.seqno;
        }
        return false;
    }

    public int hashCode() {
        return (((((ProfileData$$ExternalSyntheticBackport0.m1020m(this.validUntil) * 31) + this.address.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.seqno;
    }

    public String toString() {
        return "ProductBuyTransactionParams(validUntil=" + this.validUntil + ", address=" + this.address + ", amount=" + this.amount + ", seqno=" + this.seqno + ')';
    }

    public ProductBuyTransactionParams(long j, String address, BigInteger amount, int i) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.validUntil = j;
        this.address = address;
        this.amount = amount;
        this.seqno = i;
    }

    public final long getValidUntil() {
        return this.validUntil;
    }

    public final String getAddress() {
        return this.address;
    }

    public final BigInteger getAmount() {
        return this.amount;
    }

    public final int getSeqno() {
        return this.seqno;
    }
}
