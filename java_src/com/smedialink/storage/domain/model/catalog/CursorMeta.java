package com.smedialink.storage.domain.model.catalog;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: CursorMeta.kt */
/* loaded from: classes3.dex */
public final class CursorMeta {
    private final String nextCursor;

    public static /* synthetic */ CursorMeta copy$default(CursorMeta cursorMeta, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cursorMeta.nextCursor;
        }
        return cursorMeta.copy(str);
    }

    public final String component1() {
        return this.nextCursor;
    }

    public final CursorMeta copy(String str) {
        return new CursorMeta(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CursorMeta) && Intrinsics.areEqual(this.nextCursor, ((CursorMeta) obj).nextCursor);
    }

    public int hashCode() {
        String str = this.nextCursor;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public String toString() {
        return "CursorMeta(nextCursor=" + this.nextCursor + ')';
    }

    public CursorMeta(String str) {
        this.nextCursor = str;
    }

    public final String getNextCursor() {
        return this.nextCursor;
    }
}
