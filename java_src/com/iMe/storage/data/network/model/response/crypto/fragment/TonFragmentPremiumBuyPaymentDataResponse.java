package com.iMe.storage.data.network.model.response.crypto.fragment;

import java.math.BigInteger;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentPremiumBuyPaymentDataResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentPremiumBuyPaymentDataResponse {
    private final String address;
    private final BigInteger amount;
    private final String payload;
    private final int seqno;

    public static /* synthetic */ TonFragmentPremiumBuyPaymentDataResponse copy$default(TonFragmentPremiumBuyPaymentDataResponse tonFragmentPremiumBuyPaymentDataResponse, String str, String str2, BigInteger bigInteger, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = tonFragmentPremiumBuyPaymentDataResponse.address;
        }
        if ((i2 & 2) != 0) {
            str2 = tonFragmentPremiumBuyPaymentDataResponse.payload;
        }
        if ((i2 & 4) != 0) {
            bigInteger = tonFragmentPremiumBuyPaymentDataResponse.amount;
        }
        if ((i2 & 8) != 0) {
            i = tonFragmentPremiumBuyPaymentDataResponse.seqno;
        }
        return tonFragmentPremiumBuyPaymentDataResponse.copy(str, str2, bigInteger, i);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.payload;
    }

    public final BigInteger component3() {
        return this.amount;
    }

    public final int component4() {
        return this.seqno;
    }

    public final TonFragmentPremiumBuyPaymentDataResponse copy(String address, String payload, BigInteger amount, int i) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new TonFragmentPremiumBuyPaymentDataResponse(address, payload, amount, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentPremiumBuyPaymentDataResponse) {
            TonFragmentPremiumBuyPaymentDataResponse tonFragmentPremiumBuyPaymentDataResponse = (TonFragmentPremiumBuyPaymentDataResponse) obj;
            return Intrinsics.areEqual(this.address, tonFragmentPremiumBuyPaymentDataResponse.address) && Intrinsics.areEqual(this.payload, tonFragmentPremiumBuyPaymentDataResponse.payload) && Intrinsics.areEqual(this.amount, tonFragmentPremiumBuyPaymentDataResponse.amount) && this.seqno == tonFragmentPremiumBuyPaymentDataResponse.seqno;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.address.hashCode() * 31) + this.payload.hashCode()) * 31) + this.amount.hashCode()) * 31) + this.seqno;
    }

    public String toString() {
        return "TonFragmentPremiumBuyPaymentDataResponse(address=" + this.address + ", payload=" + this.payload + ", amount=" + this.amount + ", seqno=" + this.seqno + ')';
    }

    public TonFragmentPremiumBuyPaymentDataResponse(String address, String payload, BigInteger amount, int i) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(payload, "payload");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.address = address;
        this.payload = payload;
        this.amount = amount;
        this.seqno = i;
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
