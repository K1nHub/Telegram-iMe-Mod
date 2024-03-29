package com.iMe.storage.domain.model.catalog;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCategory.kt */
/* loaded from: classes3.dex */
public final class CatalogCategory {

    /* renamed from: id */
    private final long f340id;
    private final String title;

    public static /* synthetic */ CatalogCategory copy$default(CatalogCategory catalogCategory, long j, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            j = catalogCategory.f340id;
        }
        if ((i & 2) != 0) {
            str = catalogCategory.title;
        }
        return catalogCategory.copy(j, str);
    }

    public final long component1() {
        return this.f340id;
    }

    public final String component2() {
        return this.title;
    }

    public final CatalogCategory copy(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        return new CatalogCategory(j, title);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CatalogCategory) {
            CatalogCategory catalogCategory = (CatalogCategory) obj;
            return this.f340id == catalogCategory.f340id && Intrinsics.areEqual(this.title, catalogCategory.title);
        }
        return false;
    }

    public int hashCode() {
        return (ProfileData$$ExternalSyntheticBackport0.m1020m(this.f340id) * 31) + this.title.hashCode();
    }

    public String toString() {
        return "CatalogCategory(id=" + this.f340id + ", title=" + this.title + ')';
    }

    public CatalogCategory(long j, String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f340id = j;
        this.title = title;
    }

    public final long getId() {
        return this.f340id;
    }

    public final String getTitle() {
        return this.title;
    }
}
