package com.iMe.storage.data.locale.p026db.model.catalog;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCategoryDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.catalog.CatalogCategoryDb */
/* loaded from: classes3.dex */
public final class CatalogCategoryDb {

    /* renamed from: id */
    private final long f308id;
    private final String title;
    private final int total;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogCategoryDb) {
            CatalogCategoryDb catalogCategoryDb = (CatalogCategoryDb) obj;
            return this.f308id == catalogCategoryDb.f308id && Intrinsics.areEqual(this.title, catalogCategoryDb.title) && this.total == catalogCategoryDb.total;
        }
        return false;
    }

    public int hashCode() {
        return (((ProfileData$$ExternalSyntheticBackport0.m1020m(this.f308id) * 31) + this.title.hashCode()) * 31) + this.total;
    }

    public String toString() {
        return "CatalogCategoryDb(id=" + this.f308id + ", title=" + this.title + ", total=" + this.total + ')';
    }

    public CatalogCategoryDb(long j, String title, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f308id = j;
        this.title = title;
        this.total = i;
    }

    public final long getId() {
        return this.f308id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTotal() {
        return this.total;
    }
}
