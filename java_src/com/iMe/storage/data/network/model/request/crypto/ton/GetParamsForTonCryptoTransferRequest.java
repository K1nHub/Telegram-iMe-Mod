package com.iMe.storage.data.network.model.request.crypto.ton;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetParamsForTonCryptoTransferRequest.kt */
/* loaded from: classes3.dex */
public final class GetParamsForTonCryptoTransferRequest {

    /* renamed from: to */
    private final String f371to;
    private final String type;
    private final String value;

    public static /* synthetic */ GetParamsForTonCryptoTransferRequest copy$default(GetParamsForTonCryptoTransferRequest getParamsForTonCryptoTransferRequest, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getParamsForTonCryptoTransferRequest.type;
        }
        if ((i & 2) != 0) {
            str2 = getParamsForTonCryptoTransferRequest.f371to;
        }
        if ((i & 4) != 0) {
            str3 = getParamsForTonCryptoTransferRequest.value;
        }
        return getParamsForTonCryptoTransferRequest.copy(str, str2, str3);
    }

    public final String component1() {
        return this.type;
    }

    public final String component2() {
        return this.f371to;
    }

    public final String component3() {
        return this.value;
    }

    public final GetParamsForTonCryptoTransferRequest copy(String type, String to, String value) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        return new GetParamsForTonCryptoTransferRequest(type, to, value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetParamsForTonCryptoTransferRequest) {
            GetParamsForTonCryptoTransferRequest getParamsForTonCryptoTransferRequest = (GetParamsForTonCryptoTransferRequest) obj;
            return Intrinsics.areEqual(this.type, getParamsForTonCryptoTransferRequest.type) && Intrinsics.areEqual(this.f371to, getParamsForTonCryptoTransferRequest.f371to) && Intrinsics.areEqual(this.value, getParamsForTonCryptoTransferRequest.value);
        }
        return false;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.f371to.hashCode()) * 31) + this.value.hashCode();
    }

    public String toString() {
        return "GetParamsForTonCryptoTransferRequest(type=" + this.type + ", to=" + this.f371to + ", value=" + this.value + ')';
    }

    public GetParamsForTonCryptoTransferRequest(String type, String to, String value) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(to, "to");
        Intrinsics.checkNotNullParameter(value, "value");
        this.type = type;
        this.f371to = to;
        this.value = value;
    }

    public final String getType() {
        return this.type;
    }

    public final String getTo() {
        return this.f371to;
    }

    public final String getValue() {
        return this.value;
    }
}
