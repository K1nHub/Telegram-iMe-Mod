package com.smedialink.storage.data.locale.p027db.model.catalog;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCategoryDb.kt */
/* renamed from: com.smedialink.storage.data.locale.db.model.catalog.CatalogCategoryDb */
/* loaded from: classes3.dex */
public final class CatalogCategoryDb {

    /* renamed from: id */
    private final long f287id;
    private final String title;
    private final int total;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogCategoryDb) {
            CatalogCategoryDb catalogCategoryDb = (CatalogCategoryDb) obj;
            return this.f287id == catalogCategoryDb.f287id && Intrinsics.areEqual(this.title, catalogCategoryDb.title) && this.total == catalogCategoryDb.total;
        }
        return false;
    }

    public int hashCode() {
        return (((StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.f287id) * 31) + this.title.hashCode()) * 31) + this.total;
    }

    public String toString() {
        return "CatalogCategoryDb(id=" + this.f287id + ", title=" + this.title + ", total=" + this.total + ')';
    }

    public CatalogCategoryDb(long j, String title, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f287id = j;
        this.title = title;
        this.total = i;
    }

    public final long getId() {
        return this.f287id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTotal() {
        return this.total;
    }
}
