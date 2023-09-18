package com.iMe.storage.data.network.model.response.crypto.simplex;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CreateBuyingCryptoPaymentResponse.kt */
/* loaded from: classes4.dex */
public final class CreateBuyingCryptoPaymentResponse {
    private final String html;
    private final String paymentId;

    public static /* synthetic */ CreateBuyingCryptoPaymentResponse copy$default(CreateBuyingCryptoPaymentResponse createBuyingCryptoPaymentResponse, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = createBuyingCryptoPaymentResponse.html;
        }
        if ((i & 2) != 0) {
            str2 = createBuyingCryptoPaymentResponse.paymentId;
        }
        return createBuyingCryptoPaymentResponse.copy(str, str2);
    }

    public final String component1() {
        return this.html;
    }

    public final String component2() {
        return this.paymentId;
    }

    public final CreateBuyingCryptoPaymentResponse copy(String html, String paymentId) {
        Intrinsics.checkNotNullParameter(html, "html");
        Intrinsics.checkNotNullParameter(paymentId, "paymentId");
        return new CreateBuyingCryptoPaymentResponse(html, paymentId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreateBuyingCryptoPaymentResponse) {
            CreateBuyingCryptoPaymentResponse createBuyingCryptoPaymentResponse = (CreateBuyingCryptoPaymentResponse) obj;
            return Intrinsics.areEqual(this.html, createBuyingCryptoPaymentResponse.html) && Intrinsics.areEqual(this.paymentId, createBuyingCryptoPaymentResponse.paymentId);
        }
        return false;
    }

    public int hashCode() {
        return (this.html.hashCode() * 31) + this.paymentId.hashCode();
    }

    public String toString() {
        return "CreateBuyingCryptoPaymentResponse(html=" + this.html + ", paymentId=" + this.paymentId + ')';
    }

    public CreateBuyingCryptoPaymentResponse(String html, String paymentId) {
        Intrinsics.checkNotNullParameter(html, "html");
        Intrinsics.checkNotNullParameter(paymentId, "paymentId");
        this.html = html;
        this.paymentId = paymentId;
    }

    public final String getHtml() {
        return this.html;
    }

    public final String getPaymentId() {
        return this.paymentId;
    }
}
