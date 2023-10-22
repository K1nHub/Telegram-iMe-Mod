package com.iMe.storage.data.network.model.request.wallet;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CustomTokensRequest.kt */
/* loaded from: classes3.dex */
public final class CustomTokensRequest {
    private final String cursor;
    private final String networkType;
    private final Integer size;

    public static /* synthetic */ CustomTokensRequest copy$default(CustomTokensRequest customTokensRequest, String str, String str2, Integer num, int i, Object obj) {
        if ((i & 1) != 0) {
            str = customTokensRequest.networkType;
        }
        if ((i & 2) != 0) {
            str2 = customTokensRequest.cursor;
        }
        if ((i & 4) != 0) {
            num = customTokensRequest.size;
        }
        return customTokensRequest.copy(str, str2, num);
    }

    public final String component1() {
        return this.networkType;
    }

    public final String component2() {
        return this.cursor;
    }

    public final Integer component3() {
        return this.size;
    }

    public final CustomTokensRequest copy(String str, String str2, Integer num) {
        return new CustomTokensRequest(str, str2, num);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CustomTokensRequest) {
            CustomTokensRequest customTokensRequest = (CustomTokensRequest) obj;
            return Intrinsics.areEqual(this.networkType, customTokensRequest.networkType) && Intrinsics.areEqual(this.cursor, customTokensRequest.cursor) && Intrinsics.areEqual(this.size, customTokensRequest.size);
        }
        return false;
    }

    public int hashCode() {
        String str = this.networkType;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.cursor;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.size;
        return hashCode2 + (num != null ? num.hashCode() : 0);
    }

    public String toString() {
        return "CustomTokensRequest(networkType=" + this.networkType + ", cursor=" + this.cursor + ", size=" + this.size + ')';
    }

    public CustomTokensRequest(String str, String str2, Integer num) {
        this.networkType = str;
        this.cursor = str2;
        this.size = num;
    }

    public /* synthetic */ CustomTokensRequest(String str, String str2, Integer num, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, str2, (i & 4) != 0 ? null : num);
    }

    public final String getNetworkType() {
        return this.networkType;
    }

    public final String getCursor() {
        return this.cursor;
    }

    public final Integer getSize() {
        return this.size;
    }
}
