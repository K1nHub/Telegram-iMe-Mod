package androidx.sqlite.p011db;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SupportSQLiteCompat.kt */
/* renamed from: androidx.sqlite.db.SupportSQLiteCompat$Api29Impl */
/* loaded from: classes.dex */
public final class SupportSQLiteCompat$Api29Impl {
    static {
        new SupportSQLiteCompat$Api29Impl();
    }

    private SupportSQLiteCompat$Api29Impl() {
    }

    public static final void setNotificationUris(Cursor cursor, ContentResolver cr, List<? extends Uri> uris) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Intrinsics.checkNotNullParameter(cr, "cr");
        Intrinsics.checkNotNullParameter(uris, "uris");
        cursor.setNotificationUris(cr, uris);
    }

    public static final List<Uri> getNotificationUris(Cursor cursor) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        List<Uri> notificationUris = cursor.getNotificationUris();
        Intrinsics.checkNotNull(notificationUris);
        return notificationUris;
    }
}
