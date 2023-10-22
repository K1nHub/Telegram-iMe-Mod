package com.iMe.storage.data.network.model.request.crypto.nft;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: OwnNftCollectionsRequest.kt */
/* loaded from: classes3.dex */
public final class OwnNftCollectionsRequest {
    private final String lastItemId;
    private final int limit;
    @SerializedName("network")
    private final String networkId;
    @SerializedName("networks")
    private final List<String> networksIds;

    public OwnNftCollectionsRequest() {
        this(null, null, null, 0, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OwnNftCollectionsRequest copy$default(OwnNftCollectionsRequest ownNftCollectionsRequest, String str, List list, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = ownNftCollectionsRequest.networkId;
        }
        if ((i2 & 2) != 0) {
            list = ownNftCollectionsRequest.networksIds;
        }
        if ((i2 & 4) != 0) {
            str2 = ownNftCollectionsRequest.lastItemId;
        }
        if ((i2 & 8) != 0) {
            i = ownNftCollectionsRequest.limit;
        }
        return ownNftCollectionsRequest.copy(str, list, str2, i);
    }

    public final String component1() {
        return this.networkId;
    }

    public final List<String> component2() {
        return this.networksIds;
    }

    public final String component3() {
        return this.lastItemId;
    }

    public final int component4() {
        return this.limit;
    }

    public final OwnNftCollectionsRequest copy(String str, List<String> list, String str2, int i) {
        return new OwnNftCollectionsRequest(str, list, str2, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OwnNftCollectionsRequest) {
            OwnNftCollectionsRequest ownNftCollectionsRequest = (OwnNftCollectionsRequest) obj;
            return Intrinsics.areEqual(this.networkId, ownNftCollectionsRequest.networkId) && Intrinsics.areEqual(this.networksIds, ownNftCollectionsRequest.networksIds) && Intrinsics.areEqual(this.lastItemId, ownNftCollectionsRequest.lastItemId) && this.limit == ownNftCollectionsRequest.limit;
        }
        return false;
    }

    public int hashCode() {
        String str = this.networkId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<String> list = this.networksIds;
        int hashCode2 = (hashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.lastItemId;
        return ((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.limit;
    }

    public String toString() {
        return "OwnNftCollectionsRequest(networkId=" + this.networkId + ", networksIds=" + this.networksIds + ", lastItemId=" + this.lastItemId + ", limit=" + this.limit + ')';
    }

    public OwnNftCollectionsRequest(String str, List<String> list, String str2, int i) {
        this.networkId = str;
        this.networksIds = list;
        this.lastItemId = str2;
        this.limit = i;
    }

    public /* synthetic */ OwnNftCollectionsRequest(String str, List list, String str2, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? 30 : i);
    }

    public final String getNetworkId() {
        return this.networkId;
    }

    public final List<String> getNetworksIds() {
        return this.networksIds;
    }

    public final String getLastItemId() {
        return this.lastItemId;
    }

    public final int getLimit() {
        return this.limit;
    }
}
