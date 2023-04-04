package com.iMe.storage.data.network.model.response.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: ChannelCountryResponse.kt */
/* loaded from: classes3.dex */
public final class ChannelCountryResponse {
    private final String code;

    /* renamed from: id */
    private final int f303id;
    private final String title;

    public ChannelCountryResponse(String code, int i, String title) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(title, "title");
        this.code = code;
        this.f303id = i;
        this.title = title;
    }

    public final String getCode() {
        return this.code;
    }

    public final int getId() {
        return this.f303id;
    }

    public final String getTitle() {
        return this.title;
    }
}
