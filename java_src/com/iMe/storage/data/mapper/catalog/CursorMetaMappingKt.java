package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.network.model.response.catalog.CursorMetaResponse;
import com.iMe.storage.domain.model.catalog.CursorMeta;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CursorMetaMapping.kt */
/* loaded from: classes3.dex */
public final class CursorMetaMappingKt {
    public static final CursorMeta mapToDomain(CursorMetaResponse cursorMetaResponse) {
        Intrinsics.checkNotNullParameter(cursorMetaResponse, "<this>");
        return new CursorMeta(cursorMetaResponse.getNextCursor());
    }
}
