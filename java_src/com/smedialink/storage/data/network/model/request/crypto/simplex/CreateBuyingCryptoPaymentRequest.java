package com.smedialink.storage.data.network.model.request.crypto.simplex;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CreateBuyingCryptoPaymentRequest.kt */
/* loaded from: classes3.dex */
public final class CreateBuyingCryptoPaymentRequest {
    private final float digitalAmount;
    private final String digitalCurrency;
    private final int fiatAmount;
    private final String fiatCurrency;
    private final String networkType;
    private final String orderId;
    private final String quoteId;

    public static /* synthetic */ CreateBuyingCryptoPaymentRequest copy$default(CreateBuyingCryptoPaymentRequest createBuyingCryptoPaymentRequest, String str, String str2, String str3, int i, String str4, float f, String str5, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = createBuyingCryptoPaymentRequest.quoteId;
        }
        if ((i2 & 2) != 0) {
            str2 = createBuyingCryptoPaymentRequest.orderId;
        }
        String str6 = str2;
        if ((i2 & 4) != 0) {
            str3 = createBuyingCryptoPaymentRequest.fiatCurrency;
        }
        String str7 = str3;
        if ((i2 & 8) != 0) {
            i = createBuyingCryptoPaymentRequest.fiatAmount;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            str4 = createBuyingCryptoPaymentRequest.digitalCurrency;
        }
        String str8 = str4;
        if ((i2 & 32) != 0) {
            f = createBuyingCryptoPaymentRequest.digitalAmount;
        }
        float f2 = f;
        if ((i2 & 64) != 0) {
            str5 = createBuyingCryptoPaymentRequest.networkType;
        }
        return createBuyingCryptoPaymentRequest.copy(str, str6, str7, i3, str8, f2, str5);
    }

    public final String component1() {
        return this.quoteId;
    }

    public final String component2() {
        return this.orderId;
    }

    public final String component3() {
        return this.fiatCurrency;
    }

    public final int component4() {
        return this.fiatAmount;
    }

    public final String component5() {
        return this.digitalCurrency;
    }

    public final float component6() {
        return this.digitalAmount;
    }

    public final String component7() {
        return this.networkType;
    }

    public final CreateBuyingCryptoPaymentRequest copy(String quoteId, String orderId, String fiatCurrency, int i, String digitalCurrency, float f, String networkType) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new CreateBuyingCryptoPaymentRequest(quoteId, orderId, fiatCurrency, i, digitalCurrency, f, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreateBuyingCryptoPaymentRequest) {
            CreateBuyingCryptoPaymentRequest createBuyingCryptoPaymentRequest = (CreateBuyingCryptoPaymentRequest) obj;
            return Intrinsics.areEqual(this.quoteId, createBuyingCryptoPaymentRequest.quoteId) && Intrinsics.areEqual(this.orderId, createBuyingCryptoPaymentRequest.orderId) && Intrinsics.areEqual(this.fiatCurrency, createBuyingCryptoPaymentRequest.fiatCurrency) && this.fiatAmount == createBuyingCryptoPaymentRequest.fiatAmount && Intrinsics.areEqual(this.digitalCurrency, createBuyingCryptoPaymentRequest.digitalCurrency) && Intrinsics.areEqual(Float.valueOf(this.digitalAmount), Float.valueOf(createBuyingCryptoPaymentRequest.digitalAmount)) && Intrinsics.areEqual(this.networkType, createBuyingCryptoPaymentRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((((this.quoteId.hashCode() * 31) + this.orderId.hashCode()) * 31) + this.fiatCurrency.hashCode()) * 31) + this.fiatAmount) * 31) + this.digitalCurrency.hashCode()) * 31) + Float.floatToIntBits(this.digitalAmount)) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "CreateBuyingCryptoPaymentRequest(quoteId=" + this.quoteId + ", orderId=" + this.orderId + ", fiatCurrency=" + this.fiatCurrency + ", fiatAmount=" + this.fiatAmount + ", digitalCurrency=" + this.digitalCurrency + ", digitalAmount=" + this.digitalAmount + ", networkType=" + this.networkType + ')';
    }

    public CreateBuyingCryptoPaymentRequest(String quoteId, String orderId, String fiatCurrency, int i, String digitalCurrency, float f, String networkType) {
        Intrinsics.checkNotNullParameter(quoteId, "quoteId");
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(fiatCurrency, "fiatCurrency");
        Intrinsics.checkNotNullParameter(digitalCurrency, "digitalCurrency");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.quoteId = quoteId;
        this.orderId = orderId;
        this.fiatCurrency = fiatCurrency;
        this.fiatAmount = i;
        this.digitalCurrency = digitalCurrency;
        this.digitalAmount = f;
        this.networkType = networkType;
    }

    public final String getQuoteId() {
        return this.quoteId;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getFiatCurrency() {
        return this.fiatCurrency;
    }

    public final int getFiatAmount() {
        return this.fiatAmount;
    }

    public final String getDigitalCurrency() {
        return this.digitalCurrency;
    }

    public final float getDigitalAmount() {
        return this.digitalAmount;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
