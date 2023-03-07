package com.smedialink.storage.data.network.model.response.catalog;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCategoryResponse.kt */
/* loaded from: classes3.dex */
public final class CatalogCategoryResponse {

    /* renamed from: id */
    private final long f296id;
    private final String title;

    public static /* synthetic */ CatalogCategoryResponse copy$default(CatalogCategoryResponse catalogCategoryResponse, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = catalogCategoryResponse.f296id;
        }
        if ((i & 2) != 0) {
            str = catalogCategoryResponse.title;
        }
        return catalogCategoryResponse.copy(j, str);
    }

    public final long component1() {
        return this.f296id;
    }

    public final String component2() {
        return this.title;
    }

    public final CatalogCategoryResponse copy(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new CatalogCategoryResponse(j, title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogCategoryResponse) {
            CatalogCategoryResponse catalogCategoryResponse = (CatalogCategoryResponse) obj;
            return this.f296id == catalogCategoryResponse.f296id && Intrinsics.areEqual(this.title, catalogCategoryResponse.title);
        }
        return false;
    }

    public int hashCode() {
        return (StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.f296id) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "CatalogCategoryResponse(id=" + this.f296id + ", title=" + this.title + ')';
    }

    public CatalogCategoryResponse(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f296id = j;
        this.title = title;
    }

    public final long getId() {
        return this.f296id;
    }

    public final String getTitle() {
        return this.title;
    }
}
