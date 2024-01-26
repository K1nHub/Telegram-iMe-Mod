package com.iMe.storage.data.network.model.response.kikliko;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SearchResultResponse.kt */
/* loaded from: classes3.dex */
public final class SearchResultResponse {
    private final SearchResponse data;
    private final boolean result;

    public static /* synthetic */ SearchResultResponse copy$default(SearchResultResponse searchResultResponse, boolean z, SearchResponse searchResponse, int i, Object obj) {
        if ((i & 1) != 0) {
            z = searchResultResponse.result;
        }
        if ((i & 2) != 0) {
            searchResponse = searchResultResponse.data;
        }
        return searchResultResponse.copy(z, searchResponse);
    }

    public final boolean component1() {
        return this.result;
    }

    public final SearchResponse component2() {
        return this.data;
    }

    public final SearchResultResponse copy(boolean z, SearchResponse data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new SearchResultResponse(z, data);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SearchResultResponse) {
            SearchResultResponse searchResultResponse = (SearchResultResponse) obj;
            return this.result == searchResultResponse.result && Intrinsics.areEqual(this.data, searchResultResponse.data);
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
        return "SearchResultResponse(result=" + this.result + ", data=" + this.data + ')';
    }

    public SearchResultResponse(boolean z, SearchResponse data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.result = z;
        this.data = data;
    }

    public final boolean getResult() {
        return this.result;
    }

    public final SearchResponse getData() {
        return this.data;
    }
}
