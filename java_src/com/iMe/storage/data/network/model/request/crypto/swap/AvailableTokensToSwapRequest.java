package com.iMe.storage.data.network.model.request.crypto.swap;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: AvailableTokensToSwapRequest.kt */
/* loaded from: classes4.dex */
public final class AvailableTokensToSwapRequest {
    private final String cursor;
    private final String defiProtocol;
    private final String direction;
    private final String networkType;
    private final String query;
    private final Integer size;

    public static /* synthetic */ AvailableTokensToSwapRequest copy$default(AvailableTokensToSwapRequest availableTokensToSwapRequest, String str, String str2, String str3, String str4, String str5, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = availableTokensToSwapRequest.defiProtocol;
        }
        if ((i & 2) != 0) {
            str2 = availableTokensToSwapRequest.networkType;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = availableTokensToSwapRequest.query;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = availableTokensToSwapRequest.direction;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = availableTokensToSwapRequest.cursor;
        }
        String str9 = str5;
        if ((i & 32) != 0) {
            num = availableTokensToSwapRequest.size;
        }
        return availableTokensToSwapRequest.copy(str, str6, str7, str8, str9, num);
    }

    public final String component1() {
        return this.defiProtocol;
    }

    public final String component2() {
        return this.networkType;
    }

    public final String component3() {
        return this.query;
    }

    public final String component4() {
        return this.direction;
    }

    public final String component5() {
        return this.cursor;
    }

    public final Integer component6() {
        return this.size;
    }

    public final AvailableTokensToSwapRequest copy(String defiProtocol, String networkType, String str, String str2, String str3, Integer num) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new AvailableTokensToSwapRequest(defiProtocol, networkType, str, str2, str3, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AvailableTokensToSwapRequest) {
            AvailableTokensToSwapRequest availableTokensToSwapRequest = (AvailableTokensToSwapRequest) obj;
            return Intrinsics.areEqual(this.defiProtocol, availableTokensToSwapRequest.defiProtocol) && Intrinsics.areEqual(this.networkType, availableTokensToSwapRequest.networkType) && Intrinsics.areEqual(this.query, availableTokensToSwapRequest.query) && Intrinsics.areEqual(this.direction, availableTokensToSwapRequest.direction) && Intrinsics.areEqual(this.cursor, availableTokensToSwapRequest.cursor) && Intrinsics.areEqual(this.size, availableTokensToSwapRequest.size);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.defiProtocol.hashCode() * 31) + this.networkType.hashCode()) * 31;
        String str = this.query;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.direction;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.cursor;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.size;
        return hashCode4 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "AvailableTokensToSwapRequest(defiProtocol=" + this.defiProtocol + ", networkType=" + this.networkType + ", query=" + this.query + ", direction=" + this.direction + ", cursor=" + this.cursor + ", size=" + this.size + ')';
    }

    public AvailableTokensToSwapRequest(String defiProtocol, String networkType, String str, String str2, String str3, Integer num) {
        Intrinsics.checkNotNullParameter(defiProtocol, "defiProtocol");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.defiProtocol = defiProtocol;
        this.networkType = networkType;
        this.query = str;
        this.direction = str2;
        this.cursor = str3;
        this.size = num;
    }

    public final String getDefiProtocol() {
        return this.defiProtocol;
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getQuery() {
        return this.query;
    }

    public final String getDirection() {
        return this.direction;
    }

    public final String getCursor() {
        return this.cursor;
    }

    public final Integer getSize() {
        return this.size;
    }
}
