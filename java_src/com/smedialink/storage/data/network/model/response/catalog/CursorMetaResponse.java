package com.smedialink.storage.data.network.model.response.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CursorMetaResponse.kt */
/* loaded from: classes3.dex */
public final class CursorMetaResponse {
    private final String nextCursor;

    public static /* synthetic */ CursorMetaResponse copy$default(CursorMetaResponse cursorMetaResponse, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cursorMetaResponse.nextCursor;
        }
        return cursorMetaResponse.copy(str);
    }

    public final String component1() {
        return this.nextCursor;
    }

    public final CursorMetaResponse copy(String str) {
        return new CursorMetaResponse(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CursorMetaResponse) && Intrinsics.areEqual(this.nextCursor, ((CursorMetaResponse) obj).nextCursor);
    }

    public int hashCode() {
        String str = this.nextCursor;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "CursorMetaResponse(nextCursor=" + this.nextCursor + ')';
    }

    public CursorMetaResponse(String str) {
        this.nextCursor = str;
    }

    public final String getNextCursor() {
        return this.nextCursor;
    }
}
