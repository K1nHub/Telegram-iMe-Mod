package com.smedialink.storage.data.mapper.catalog;

import com.smedialink.storage.data.network.model.response.catalog.CursorMetaResponse;
import com.smedialink.storage.domain.model.catalog.CursorMeta;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CursorMetaMapping.kt */
/* loaded from: classes3.dex */
public final class CursorMetaMappingKt {
    public static final CursorMeta mapToDomain(CursorMetaResponse cursorMetaResponse) {
        Intrinsics.checkNotNullParameter(cursorMetaResponse, "<this>");
        return new CursorMeta(cursorMetaResponse.getNextCursor());
    }
}
