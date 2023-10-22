package com.iMe.storage.data.network.model.request.crypto.nft;

import com.google.gson.annotations.SerializedName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: OwnNftItemsRequest.kt */
/* loaded from: classes3.dex */
public final class OwnNftItemsRequest {
    private final String collectionId;
    private final String lastItemId;
    private final int limit;
    @SerializedName("network")
    private final String networkId;

    public OwnNftItemsRequest() {
        this(null, null, null, 0, 15, null);
    }

    public static /* synthetic */ OwnNftItemsRequest copy$default(OwnNftItemsRequest ownNftItemsRequest, String str, String str2, String str3, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = ownNftItemsRequest.networkId;
        }
        if ((i2 & 2) != 0) {
            str2 = ownNftItemsRequest.collectionId;
        }
        if ((i2 & 4) != 0) {
            str3 = ownNftItemsRequest.lastItemId;
        }
        if ((i2 & 8) != 0) {
            i = ownNftItemsRequest.limit;
        }
        return ownNftItemsRequest.copy(str, str2, str3, i);
    }

    public final String component1() {
        return this.networkId;
    }

    public final String component2() {
        return this.collectionId;
    }

    public final String component3() {
        return this.lastItemId;
    }

    public final int component4() {
        return this.limit;
    }

    public final OwnNftItemsRequest copy(String str, String str2, String str3, int i) {
        return new OwnNftItemsRequest(str, str2, str3, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OwnNftItemsRequest) {
            OwnNftItemsRequest ownNftItemsRequest = (OwnNftItemsRequest) obj;
            return Intrinsics.areEqual(this.networkId, ownNftItemsRequest.networkId) && Intrinsics.areEqual(this.collectionId, ownNftItemsRequest.collectionId) && Intrinsics.areEqual(this.lastItemId, ownNftItemsRequest.lastItemId) && this.limit == ownNftItemsRequest.limit;
        }
        return false;
    }

    public int hashCode() {
        String str = this.networkId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.collectionId;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.lastItemId;
        return ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.limit;
    }

    public String toString() {
        return "OwnNftItemsRequest(networkId=" + this.networkId + ", collectionId=" + this.collectionId + ", lastItemId=" + this.lastItemId + ", limit=" + this.limit + ')';
    }

    public OwnNftItemsRequest(String str, String str2, String str3, int i) {
        this.networkId = str;
        this.collectionId = str2;
        this.lastItemId = str3;
        this.limit = i;
    }

    public /* synthetic */ OwnNftItemsRequest(String str, String str2, String str3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? 30 : i);
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final String getLastItemId() {
        return this.lastItemId;
    }

    public final int getLimit() {
        return this.limit;
    }
}
