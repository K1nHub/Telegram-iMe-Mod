package androidx.sqlite.p011db;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.List;
/* renamed from: androidx.sqlite.db.SupportSQLiteCompat$Api29Impl */
/* loaded from: classes.dex */
public final class SupportSQLiteCompat$Api29Impl {
    public static void setNotificationUris(Cursor cursor, ContentResolver contentResolver, List<Uri> list) {
        cursor.setNotificationUris(contentResolver, list);
    }

    public static List<Uri> getNotificationUris(Cursor cursor) {
        return cursor.getNotificationUris();
    }
}
