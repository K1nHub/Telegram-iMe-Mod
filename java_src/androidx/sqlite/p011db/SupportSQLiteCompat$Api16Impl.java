package androidx.sqlite.p011db;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.CancellationSignal;
import java.io.File;
/* renamed from: androidx.sqlite.db.SupportSQLiteCompat$Api16Impl */
/* loaded from: classes.dex */
public final class SupportSQLiteCompat$Api16Impl {
    public static boolean deleteDatabase(File file) {
        return SQLiteDatabase.deleteDatabase(file);
    }

    public static Cursor rawQueryWithFactory(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, CancellationSignal cancellationSignal, SQLiteDatabase.CursorFactory cursorFactory) {
        return sQLiteDatabase.rawQueryWithFactory(cursorFactory, str, strArr, str2, cancellationSignal);
    }

    public static boolean isWriteAheadLoggingEnabled(SQLiteDatabase sQLiteDatabase) {
        return sQLiteDatabase.isWriteAheadLoggingEnabled();
    }

    public static void setWriteAheadLoggingEnabled(SQLiteOpenHelper sQLiteOpenHelper, boolean z) {
        sQLiteOpenHelper.setWriteAheadLoggingEnabled(z);
    }
}
