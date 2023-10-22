package com.iMe.storage.data.network.model.response.crypto.fragment;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentPremiumBuyTransactionParamsResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentPremiumBuyTransactionParamsResponse {
    private final TonFragmentPremiumBuyPaymentDataResponse payment;
    @SerializedName("valid_until")
    private final int validUntil;

    public static /* synthetic */ TonFragmentPremiumBuyTransactionParamsResponse copy$default(TonFragmentPremiumBuyTransactionParamsResponse tonFragmentPremiumBuyTransactionParamsResponse, int i, TonFragmentPremiumBuyPaymentDataResponse tonFragmentPremiumBuyPaymentDataResponse, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = tonFragmentPremiumBuyTransactionParamsResponse.validUntil;
        }
        if ((i2 & 2) != 0) {
            tonFragmentPremiumBuyPaymentDataResponse = tonFragmentPremiumBuyTransactionParamsResponse.payment;
        }
        return tonFragmentPremiumBuyTransactionParamsResponse.copy(i, tonFragmentPremiumBuyPaymentDataResponse);
    }

    public final int component1() {
        return this.validUntil;
    }

    public final TonFragmentPremiumBuyPaymentDataResponse component2() {
        return this.payment;
    }

    public final TonFragmentPremiumBuyTransactionParamsResponse copy(int i, TonFragmentPremiumBuyPaymentDataResponse payment) {
        Intrinsics.checkNotNullParameter(payment, "payment");
        return new TonFragmentPremiumBuyTransactionParamsResponse(i, payment);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentPremiumBuyTransactionParamsResponse) {
            TonFragmentPremiumBuyTransactionParamsResponse tonFragmentPremiumBuyTransactionParamsResponse = (TonFragmentPremiumBuyTransactionParamsResponse) obj;
            return this.validUntil == tonFragmentPremiumBuyTransactionParamsResponse.validUntil && Intrinsics.areEqual(this.payment, tonFragmentPremiumBuyTransactionParamsResponse.payment);
        }
        return false;
    }

    public int hashCode() {
        return (this.validUntil * 31) + this.payment.hashCode();
    }

    public String toString() {
        return "TonFragmentPremiumBuyTransactionParamsResponse(validUntil=" + this.validUntil + ", payment=" + this.payment + ')';
    }

    public TonFragmentPremiumBuyTransactionParamsResponse(int i, TonFragmentPremiumBuyPaymentDataResponse payment) {
        Intrinsics.checkNotNullParameter(payment, "payment");
        this.validUntil = i;
        this.payment = payment;
    }

    public final int getValidUntil() {
        return this.validUntil;
    }

    public final TonFragmentPremiumBuyPaymentDataResponse getPayment() {
        return this.payment;
    }
}
