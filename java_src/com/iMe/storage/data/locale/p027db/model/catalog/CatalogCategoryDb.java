package com.iMe.storage.data.locale.p027db.model.catalog;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCategoryDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.catalog.CatalogCategoryDb */
/* loaded from: classes3.dex */
public final class CatalogCategoryDb {

    /* renamed from: id */
    private final long f369id;
    private final String title;
    private final int total;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogCategoryDb) {
            CatalogCategoryDb catalogCategoryDb = (CatalogCategoryDb) obj;
            return this.f369id == catalogCategoryDb.f369id && Intrinsics.areEqual(this.title, catalogCategoryDb.title) && this.total == catalogCategoryDb.total;
        }
        return false;
    }

    public int hashCode() {
        return (((BotsDbModel$$ExternalSyntheticBackport0.m706m(this.f369id) * 31) + this.title.hashCode()) * 31) + this.total;
    }

    public String toString() {
        return "CatalogCategoryDb(id=" + this.f369id + ", title=" + this.title + ", total=" + this.total + ')';
    }

    public CatalogCategoryDb(long j, String title, int i) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f369id = j;
        this.title = title;
        this.total = i;
    }

    public final long getId() {
        return this.f369id;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getTotal() {
        return this.total;
    }
}
