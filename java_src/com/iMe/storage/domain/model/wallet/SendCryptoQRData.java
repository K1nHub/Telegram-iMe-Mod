package com.iMe.storage.domain.model.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SendCryptoQRData.kt */
/* loaded from: classes3.dex */
public final class SendCryptoQRData {
    private final String address;
    private final String amount;

    public SendCryptoQRData() {
        this(null, null, 3, null);
    }

    public static /* synthetic */ SendCryptoQRData copy$default(SendCryptoQRData sendCryptoQRData, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = sendCryptoQRData.address;
        }
        if ((i & 2) != 0) {
            str2 = sendCryptoQRData.amount;
        }
        return sendCryptoQRData.copy(str, str2);
    }

    public final String component1() {
        return this.address;
    }

    public final String component2() {
        return this.amount;
    }

    public final SendCryptoQRData copy(String address, String amount) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new SendCryptoQRData(address, amount);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendCryptoQRData) {
            SendCryptoQRData sendCryptoQRData = (SendCryptoQRData) obj;
            return Intrinsics.areEqual(this.address, sendCryptoQRData.address) && Intrinsics.areEqual(this.amount, sendCryptoQRData.amount);
        }
        return false;
    }

    public int hashCode() {
        return (this.address.hashCode() * 31) + this.amount.hashCode();
    }

    public String toString() {
        return "SendCryptoQRData(address=" + this.address + ", amount=" + this.amount + ')';
    }

    public SendCryptoQRData(String address, String amount) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(amount, "amount");
        this.address = address;
        this.amount = amount;
    }

    public /* synthetic */ SendCryptoQRData(String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2);
    }

    public final String getAddress() {
        return this.address;
    }

    public final String getAmount() {
        return this.amount;
    }
}
