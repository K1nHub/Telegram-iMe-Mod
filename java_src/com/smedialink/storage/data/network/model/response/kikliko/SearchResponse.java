package com.smedialink.storage.data.network.model.response.kikliko;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SearchResponse.kt */
/* loaded from: classes3.dex */
public final class SearchResponse {
    @SerializedName("current_page")
    private final int currentPage;
    private final List<GifResponse> data;
    @SerializedName("has_next")
    private final boolean hasNext;
    @SerializedName("per_page")
    private final int perPage;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SearchResponse copy$default(SearchResponse searchResponse, List list, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            list = searchResponse.data;
        }
        if ((i3 & 2) != 0) {
            i = searchResponse.currentPage;
        }
        if ((i3 & 4) != 0) {
            i2 = searchResponse.perPage;
        }
        if ((i3 & 8) != 0) {
            z = searchResponse.hasNext;
        }
        return searchResponse.copy(list, i, i2, z);
    }

    public final List<GifResponse> component1() {
        return this.data;
    }

    public final int component2() {
        return this.currentPage;
    }

    public final int component3() {
        return this.perPage;
    }

    public final boolean component4() {
        return this.hasNext;
    }

    public final SearchResponse copy(List<GifResponse> data, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(data, "data");
        return new SearchResponse(data, i, i2, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SearchResponse) {
            SearchResponse searchResponse = (SearchResponse) obj;
            return Intrinsics.areEqual(this.data, searchResponse.data) && this.currentPage == searchResponse.currentPage && this.perPage == searchResponse.perPage && this.hasNext == searchResponse.hasNext;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((((this.data.hashCode() * 31) + this.currentPage) * 31) + this.perPage) * 31;
        boolean z = this.hasNext;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "SearchResponse(data=" + this.data + ", currentPage=" + this.currentPage + ", perPage=" + this.perPage + ", hasNext=" + this.hasNext + ')';
    }

    public SearchResponse(List<GifResponse> data, int i, int i2, boolean z) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.currentPage = i;
        this.perPage = i2;
        this.hasNext = z;
    }

    public final List<GifResponse> getData() {
        return this.data;
    }

    public final int getCurrentPage() {
        return this.currentPage;
    }

    public final int getPerPage() {
        return this.perPage;
    }

    public final boolean getHasNext() {
        return this.hasNext;
    }
}
