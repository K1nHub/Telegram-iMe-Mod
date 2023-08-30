package androidx.sqlite.p011db;

import android.database.Cursor;
import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SupportSQLiteCompat.kt */
/* renamed from: androidx.sqlite.db.SupportSQLiteCompat$Api23Impl */
/* loaded from: classes.dex */
public final class SupportSQLiteCompat$Api23Impl {
    static {
        new SupportSQLiteCompat$Api23Impl();
    }

    private SupportSQLiteCompat$Api23Impl() {
    }

    public static final void setExtras(Cursor cursor, Bundle extras) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Intrinsics.checkNotNullParameter(extras, "extras");
        cursor.setExtras(extras);
    }
}
