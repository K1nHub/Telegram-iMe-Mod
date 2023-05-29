package com.iMe.storage.data.network.model.request.crypto.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetDataForCryptoTransferRequest.kt */
/* loaded from: classes3.dex */
public final class GetDataForCryptoTransferRequest {
    private final String networkType;

    /* renamed from: to */
    private final String f294to;
    private final String type;
    private final String value;

    public static /* synthetic */ GetDataForCryptoTransferRequest copy$default(GetDataForCryptoTransferRequest getDataForCryptoTransferRequest, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = getDataForCryptoTransferRequest.type;
        }
        if ((i & 2) != 0) {
            str2 = getDataForCryptoTransferRequest.f294to;
        }
        if ((i & 4) != 0) {
            str3 = getDataForCryptoTransferRequest.value;
        }
        if ((i & 8) != 0) {
            str4 = getDataForCryptoTransferRequest.networkType;
        }
        return getDataForCryptoTransferRequest.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.type;
    }

    public final String component2() {
        return this.f294to;
    }

    public final String component3() {
        return this.value;
    }

    public final String component4() {
        return this.networkType;
    }

    public final GetDataForCryptoTransferRequest copy(String type, String str, String str2, String networkType) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new GetDataForCryptoTransferRequest(type, str, str2, networkType);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetDataForCryptoTransferRequest) {
            GetDataForCryptoTransferRequest getDataForCryptoTransferRequest = (GetDataForCryptoTransferRequest) obj;
            return Intrinsics.areEqual(this.type, getDataForCryptoTransferRequest.type) && Intrinsics.areEqual(this.f294to, getDataForCryptoTransferRequest.f294to) && Intrinsics.areEqual(this.value, getDataForCryptoTransferRequest.value) && Intrinsics.areEqual(this.networkType, getDataForCryptoTransferRequest.networkType);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        String str = this.f294to;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.value;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.networkType.hashCode();
    }

    public String toString() {
        return "GetDataForCryptoTransferRequest(type=" + this.type + ", to=" + this.f294to + ", value=" + this.value + ", networkType=" + this.networkType + ')';
    }

    public GetDataForCryptoTransferRequest(String type, String str, String str2, String networkType) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.type = type;
        this.f294to = str;
        this.value = str2;
        this.networkType = networkType;
    }

    public /* synthetic */ GetDataForCryptoTransferRequest(String str, String str2, String str3, String str4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, str4);
    }

    public final String getType() {
        return this.type;
    }

    public final String getTo() {
        return this.f294to;
    }

    public final String getValue() {
        return this.value;
    }

    public final String getNetworkType() {
        return this.networkType;
    }
}
