package com.iMe.storage.data.network.model.response.crypto.fragment;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductBuyPaymentDataResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentProductBuyPaymentDataResponse {
    private final String address;
    private final BigInteger amount;
    private final int seqno;

    public static /* synthetic */ TonFragmentProductBuyPaymentDataResponse copy$default(TonFragmentProductBuyPaymentDataResponse tonFragmentProductBuyPaymentDataResponse, String str, BigInteger bigInteger, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = tonFragmentProductBuyPaymentDataResponse.address;
        }
        if ((i2 & 2) != 0) {
            bigInteger = tonFragmentProductBuyPaymentDataResponse.amount;
        }
        if ((i2 & 4) != 0) {
            i = tonFragmentProductBuyPaymentDataResponse.seqno;
        }
        return tonFragmentProductBuyPaymentDataResponse.copy(str, bigInteger, i);
    }

    public final String component1() {
        return this.address;
    }

    public final BigInteger component2() {
        return this.amount;
    }

    public final int component3() {
        return this.seqno;
    }

    public final TonFragmentProductBuyPaymentDataResponse copy(String address, BigInteger amount, int i) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new TonFragmentProductBuyPaymentDataResponse(address, amount, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentProductBuyPaymentDataResponse) {
            TonFragmentProductBuyPaymentDataResponse tonFragmentProductBuyPaymentDataResponse = (TonFragmentProductBuyPaymentDataResponse) obj;
            return Intrinsics.areEqual(this.address, tonFragmentProductBuyPaymentDataResponse.address) && Intrinsics.areEqual(this.amount, tonFragmentProductBuyPaymentDataResponse.amount) && this.seqno == tonFragmentProductBuyPaymentDataResponse.seqno;
        }
        return false;
    }

    public int hashCode() {
        return (((this.address.hashCode() * 31) + this.amount.hashCode()) * 31) + this.seqno;
    }

    public String toString() {
        return "TonFragmentProductBuyPaymentDataResponse(address=" + this.address + ", amount=" + this.amount + ", seqno=" + this.seqno + ')';
    }

    public TonFragmentProductBuyPaymentDataResponse(String address, BigInteger amount, int i) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.address = address;
        this.amount = amount;
        this.seqno = i;
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
