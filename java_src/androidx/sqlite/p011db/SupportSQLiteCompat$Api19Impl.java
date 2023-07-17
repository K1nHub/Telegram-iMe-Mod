package androidx.sqlite.p011db;

import android.app.ActivityManager;
import android.database.Cursor;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SupportSQLiteCompat.kt */
/* renamed from: androidx.sqlite.db.SupportSQLiteCompat$Api19Impl */
/* loaded from: classes.dex */
public final class SupportSQLiteCompat$Api19Impl {
    static {
        new SupportSQLiteCompat$Api19Impl();
    }

    private SupportSQLiteCompat$Api19Impl() {
    }

    public static final Uri getNotificationUri(Cursor cursor) {
        Intrinsics.checkNotNullParameter(cursor, "cursor");
        Uri notificationUri = cursor.getNotificationUri();
        Intrinsics.checkNotNullExpressionValue(notificationUri, "cursor.notificationUri");
        return notificationUri;
    }

    public static final boolean isLowRamDevice(ActivityManager activityManager) {
        Intrinsics.checkNotNullParameter(activityManager, "activityManager");
        return activityManager.isLowRamDevice();
    }
}
