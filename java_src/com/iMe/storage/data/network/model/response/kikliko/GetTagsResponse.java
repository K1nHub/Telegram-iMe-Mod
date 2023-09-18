package com.iMe.storage.data.network.model.response.kikliko;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GetTagsResponse.kt */
/* loaded from: classes4.dex */
public final class GetTagsResponse {
    private final List<TagResponse> data;
    private final boolean result;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ GetTagsResponse copy$default(GetTagsResponse getTagsResponse, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = getTagsResponse.result;
        }
        if ((i & 2) != 0) {
            list = getTagsResponse.data;
        }
        return getTagsResponse.copy(z, list);
    }

    public final boolean component1() {
        return this.result;
    }

    public final List<TagResponse> component2() {
        return this.data;
    }

    public final GetTagsResponse copy(boolean z, List<TagResponse> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new GetTagsResponse(z, data);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GetTagsResponse) {
            GetTagsResponse getTagsResponse = (GetTagsResponse) obj;
            return this.result == getTagsResponse.result && Intrinsics.areEqual(this.data, getTagsResponse.data);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.result;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.data.hashCode();
    }

    public String toString() {
        return "GetTagsResponse(result=" + this.result + ", data=" + this.data + ')';
    }

    public GetTagsResponse(boolean z, List<TagResponse> data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.result = z;
        this.data = data;
    }

    public final boolean getResult() {
        return this.result;
    }

    public final List<TagResponse> getData() {
        return this.data;
    }
}
