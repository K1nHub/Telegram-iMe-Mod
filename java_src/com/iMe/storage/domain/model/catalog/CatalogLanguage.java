package com.iMe.storage.domain.model.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogLanguage.kt */
/* loaded from: classes3.dex */
public final class CatalogLanguage {

    /* renamed from: id */
    private final long f315id;
    private final String nativeTitle;
    private final String title;

    public CatalogLanguage(long j, String nativeTitle, String title) {
        Intrinsics.checkNotNullParameter(nativeTitle, "nativeTitle");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f315id = j;
        this.nativeTitle = nativeTitle;
        this.title = title;
    }

    public final long getId() {
        return this.f315id;
    }

    public final String getNativeTitle() {
        return this.nativeTitle;
    }

    public final String getTitle() {
        return this.title;
    }
}
