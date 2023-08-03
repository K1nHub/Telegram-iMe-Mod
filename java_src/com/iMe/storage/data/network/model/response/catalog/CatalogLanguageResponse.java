package com.iMe.storage.data.network.model.response.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogLanguageResponse.kt */
/* loaded from: classes3.dex */
public final class CatalogLanguageResponse {

    /* renamed from: id */
    private final long f382id;
    private final String nativeTitle;
    private final String title;

    public CatalogLanguageResponse(long j, String nativeTitle, String title) {
        Intrinsics.checkNotNullParameter(nativeTitle, "nativeTitle");
        Intrinsics.checkNotNullParameter(title, "title");
        this.f382id = j;
        this.nativeTitle = nativeTitle;
        this.title = title;
    }

    public final long getId() {
        return this.f382id;
    }

    public final String getNativeTitle() {
        return this.nativeTitle;
    }

    public final String getTitle() {
        return this.title;
    }
}
