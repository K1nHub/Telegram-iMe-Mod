package com.iMe.storage.domain.model.common;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CursoredData.kt */
/* loaded from: classes3.dex */
public final class CursoredData<T> {
    private final String cursor;
    private final List<T> data;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CursoredData copy$default(CursoredData cursoredData, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = cursoredData.data;
        }
        if ((i & 2) != 0) {
            str = cursoredData.cursor;
        }
        return cursoredData.copy(list, str);
    }

    public final List<T> component1() {
        return this.data;
    }

    public final String component2() {
        return this.cursor;
    }

    public final CursoredData<T> copy(List<? extends T> data, String cursor) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        return new CursoredData<>(data, cursor);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CursoredData) {
            CursoredData cursoredData = (CursoredData) obj;
            return Intrinsics.areEqual(this.data, cursoredData.data) && Intrinsics.areEqual(this.cursor, cursoredData.cursor);
        }
        return false;
    }

    public int hashCode() {
        return (this.data.hashCode() * 31) + this.cursor.hashCode();
    }

    public String toString() {
        return "CursoredData(data=" + this.data + ", cursor=" + this.cursor + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CursoredData(List<? extends T> data, String cursor) {
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        this.data = data;
        this.cursor = cursor;
    }

    public final List<T> getData() {
        return this.data;
    }

    public final String getCursor() {
        return this.cursor;
    }
}
