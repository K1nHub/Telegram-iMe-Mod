package androidx.sqlite.p011db;

import android.app.ActivityManager;
import android.database.Cursor;
import android.net.Uri;
/* renamed from: androidx.sqlite.db.SupportSQLiteCompat$Api19Impl */
/* loaded from: classes.dex */
public final class SupportSQLiteCompat$Api19Impl {
    public static Uri getNotificationUri(Cursor cursor) {
        return cursor.getNotificationUri();
    }

    public static boolean isLowRamDevice(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
