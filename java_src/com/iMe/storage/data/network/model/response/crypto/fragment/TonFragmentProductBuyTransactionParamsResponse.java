package com.iMe.storage.data.network.model.response.crypto.fragment;

import com.google.gson.annotations.SerializedName;
import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductBuyTransactionParamsResponse.kt */
/* loaded from: classes3.dex */
public final class TonFragmentProductBuyTransactionParamsResponse {
    private final TonFragmentProductBuyPaymentDataResponse payment;
    private final String requestId;
    @SerializedName("valid_until")
    private final long validUntil;

    public static /* synthetic */ TonFragmentProductBuyTransactionParamsResponse copy$default(TonFragmentProductBuyTransactionParamsResponse tonFragmentProductBuyTransactionParamsResponse, long j, String str, TonFragmentProductBuyPaymentDataResponse tonFragmentProductBuyPaymentDataResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            j = tonFragmentProductBuyTransactionParamsResponse.validUntil;
        }
        if ((i & 2) != 0) {
            str = tonFragmentProductBuyTransactionParamsResponse.requestId;
        }
        if ((i & 4) != 0) {
            tonFragmentProductBuyPaymentDataResponse = tonFragmentProductBuyTransactionParamsResponse.payment;
        }
        return tonFragmentProductBuyTransactionParamsResponse.copy(j, str, tonFragmentProductBuyPaymentDataResponse);
    }

    public final long component1() {
        return this.validUntil;
    }

    public final String component2() {
        return this.requestId;
    }

    public final TonFragmentProductBuyPaymentDataResponse component3() {
        return this.payment;
    }

    public final TonFragmentProductBuyTransactionParamsResponse copy(long j, String requestId, TonFragmentProductBuyPaymentDataResponse payment) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(payment, "payment");
        return new TonFragmentProductBuyTransactionParamsResponse(j, requestId, payment);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentProductBuyTransactionParamsResponse) {
            TonFragmentProductBuyTransactionParamsResponse tonFragmentProductBuyTransactionParamsResponse = (TonFragmentProductBuyTransactionParamsResponse) obj;
            return this.validUntil == tonFragmentProductBuyTransactionParamsResponse.validUntil && Intrinsics.areEqual(this.requestId, tonFragmentProductBuyTransactionParamsResponse.requestId) && Intrinsics.areEqual(this.payment, tonFragmentProductBuyTransactionParamsResponse.payment);
        }
        return false;
    }

    public int hashCode() {
        return (((ProfileData$$ExternalSyntheticBackport0.m1017m(this.validUntil) * 31) + this.requestId.hashCode()) * 31) + this.payment.hashCode();
    }

    public String toString() {
        return "TonFragmentProductBuyTransactionParamsResponse(validUntil=" + this.validUntil + ", requestId=" + this.requestId + ", payment=" + this.payment + ')';
    }

    public TonFragmentProductBuyTransactionParamsResponse(long j, String requestId, TonFragmentProductBuyPaymentDataResponse payment) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Intrinsics.checkNotNullParameter(payment, "payment");
        this.validUntil = j;
        this.requestId = requestId;
        this.payment = payment;
    }

    public final long getValidUntil() {
        return this.validUntil;
    }

    public final String getRequestId() {
        return this.requestId;
    }

    public final TonFragmentProductBuyPaymentDataResponse getPayment() {
        return this.payment;
    }
}
