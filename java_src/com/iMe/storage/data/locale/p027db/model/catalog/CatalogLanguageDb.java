package com.iMe.storage.data.locale.p027db.model.catalog;

import com.iMe.bots.data.model.database.BotsDbModel$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogLanguageDb.kt */
/* renamed from: com.iMe.storage.data.locale.db.model.catalog.CatalogLanguageDb */
/* loaded from: classes3.dex */
public final class CatalogLanguageDb {

    /* renamed from: id */
    private final long f373id;
    private final String nativeTitle;
    private final String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogLanguageDb) {
            CatalogLanguageDb catalogLanguageDb = (CatalogLanguageDb) obj;
            return this.f373id == catalogLanguageDb.f373id && Intrinsics.areEqual(this.nativeTitle, catalogLanguageDb.nativeTitle) && Intrinsics.areEqual(this.title, catalogLanguageDb.title);
        }
        return false;
    }

    public int hashCode() {
        return (((BotsDbModel$$ExternalSyntheticBackport0.m724m(this.f373id) * 31) + this.nativeTitle.hashCode()) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "CatalogLanguageDb(id=" + this.f373id + ", nativeTitle=" + this.nativeTitle + ", title=" + this.title + ')';
    }

    public CatalogLanguageDb(long j, String nativeTitle, String title) {
        Intrinsics.checkNotNullParameter(nativeTitle, "nativeTitle");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f373id = j;
        this.nativeTitle = nativeTitle;
        this.title = title;
    }

    public final long getId() {
        return this.f373id;
    }

    public final String getNativeTitle() {
        return this.nativeTitle;
    }

    public final String getTitle() {
        return this.title;
    }
}
