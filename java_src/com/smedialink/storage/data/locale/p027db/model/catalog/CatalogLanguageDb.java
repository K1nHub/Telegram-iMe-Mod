package com.smedialink.storage.data.locale.p027db.model.catalog;

import com.iMe.i_staking.request.StakingApprovalPrepareRequest$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogLanguageDb.kt */
/* renamed from: com.smedialink.storage.data.locale.db.model.catalog.CatalogLanguageDb */
/* loaded from: classes3.dex */
public final class CatalogLanguageDb {

    /* renamed from: id */
    private final long f288id;
    private final String nativeTitle;
    private final String title;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogLanguageDb) {
            CatalogLanguageDb catalogLanguageDb = (CatalogLanguageDb) obj;
            return this.f288id == catalogLanguageDb.f288id && Intrinsics.areEqual(this.nativeTitle, catalogLanguageDb.nativeTitle) && Intrinsics.areEqual(this.title, catalogLanguageDb.title);
        }
        return false;
    }

    public int hashCode() {
        return (((StakingApprovalPrepareRequest$$ExternalSyntheticBackport0.m716m(this.f288id) * 31) + this.nativeTitle.hashCode()) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "CatalogLanguageDb(id=" + this.f288id + ", nativeTitle=" + this.nativeTitle + ", title=" + this.title + ')';
    }

    public CatalogLanguageDb(long j, String nativeTitle, String title) {
        Intrinsics.checkNotNullParameter(nativeTitle, "nativeTitle");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f288id = j;
        this.nativeTitle = nativeTitle;
        this.title = title;
    }

    public final long getId() {
        return this.f288id;
    }

    public final String getNativeTitle() {
        return this.nativeTitle;
    }

    public final String getTitle() {
        return this.title;
    }
}
