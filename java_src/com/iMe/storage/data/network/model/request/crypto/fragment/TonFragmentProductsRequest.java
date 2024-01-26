package com.iMe.storage.data.network.model.request.crypto.fragment;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonFragmentProductsRequest.kt */
/* loaded from: classes3.dex */
public final class TonFragmentProductsRequest {
    private final String query;
    private final String sort;

    public static /* synthetic */ TonFragmentProductsRequest copy$default(TonFragmentProductsRequest tonFragmentProductsRequest, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = tonFragmentProductsRequest.sort;
        }
        if ((i & 2) != 0) {
            str2 = tonFragmentProductsRequest.query;
        }
        return tonFragmentProductsRequest.copy(str, str2);
    }

    public final String component1() {
        return this.sort;
    }

    public final String component2() {
        return this.query;
    }

    public final TonFragmentProductsRequest copy(String sort, String query) {
        Intrinsics.checkNotNullParameter(sort, "sort");
        Intrinsics.checkNotNullParameter(query, "query");
        return new TonFragmentProductsRequest(sort, query);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TonFragmentProductsRequest) {
            TonFragmentProductsRequest tonFragmentProductsRequest = (TonFragmentProductsRequest) obj;
            return Intrinsics.areEqual(this.sort, tonFragmentProductsRequest.sort) && Intrinsics.areEqual(this.query, tonFragmentProductsRequest.query);
        }
        return false;
    }

    public int hashCode() {
        return (this.sort.hashCode() * 31) + this.query.hashCode();
    }

    public String toString() {
        return "TonFragmentProductsRequest(sort=" + this.sort + ", query=" + this.query + ')';
    }

    public TonFragmentProductsRequest(String sort, String query) {
        Intrinsics.checkNotNullParameter(sort, "sort");
        Intrinsics.checkNotNullParameter(query, "query");
        this.sort = sort;
        this.query = query;
    }

    public final String getSort() {
        return this.sort;
    }

    public final String getQuery() {
        return this.query;
    }
}
