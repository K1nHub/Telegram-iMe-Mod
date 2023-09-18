package com.iMe.storage.domain.model.crypto.simplex;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: BuyingCryptoPayment.kt */
/* loaded from: classes4.dex */
public final class BuyingCryptoPayment {
    private final String html;
    private final String orderId;

    public static /* synthetic */ BuyingCryptoPayment copy$default(BuyingCryptoPayment buyingCryptoPayment, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = buyingCryptoPayment.orderId;
        }
        if ((i & 2) != 0) {
            str2 = buyingCryptoPayment.html;
        }
        return buyingCryptoPayment.copy(str, str2);
    }

    public final String component1() {
        return this.orderId;
    }

    public final String component2() {
        return this.html;
    }

    public final BuyingCryptoPayment copy(String orderId, String html) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(html, "html");
        return new BuyingCryptoPayment(orderId, html);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BuyingCryptoPayment) {
            BuyingCryptoPayment buyingCryptoPayment = (BuyingCryptoPayment) obj;
            return Intrinsics.areEqual(this.orderId, buyingCryptoPayment.orderId) && Intrinsics.areEqual(this.html, buyingCryptoPayment.html);
        }
        return false;
    }

    public int hashCode() {
        return (this.orderId.hashCode() * 31) + this.html.hashCode();
    }

    public String toString() {
        return "BuyingCryptoPayment(orderId=" + this.orderId + ", html=" + this.html + ')';
    }

    public BuyingCryptoPayment(String orderId, String html) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(html, "html");
        this.orderId = orderId;
        this.html = html;
    }

    public final String getOrderId() {
        return this.orderId;
    }

    public final String getHtml() {
        return this.html;
    }
}
