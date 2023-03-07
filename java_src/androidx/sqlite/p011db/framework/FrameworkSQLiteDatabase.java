package androidx.sqlite.p011db.framework;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.sqlite.p011db.SimpleSQLiteQuery;
import androidx.sqlite.p011db.SupportSQLiteCompat$Api16Impl;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import androidx.sqlite.p011db.SupportSQLiteQuery;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.List;
/* renamed from: androidx.sqlite.db.framework.FrameworkSQLiteDatabase */
/* loaded from: classes.dex */
class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private final SQLiteDatabase mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        this.mDelegate = sQLiteDatabase;
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public SupportSQLiteStatement compileStatement(String str) {
        return new FrameworkSQLiteStatement(this.mDelegate.compileStatement(str));
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void beginTransaction() {
        this.mDelegate.beginTransaction();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void beginTransactionNonExclusive() {
        this.mDelegate.beginTransactionNonExclusive();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void endTransaction() {
        this.mDelegate.endTransaction();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void setTransactionSuccessful() {
        this.mDelegate.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public boolean inTransaction() {
        return this.mDelegate.inTransaction();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public Cursor query(String str) {
        return query(new SimpleSQLiteQuery(str));
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery) {
        return this.mDelegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory(this) { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase.1
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, supportSQLiteQuery.getSql(), EMPTY_STRING_ARRAY, null);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
        return SupportSQLiteCompat$Api16Impl.rawQueryWithFactory(this.mDelegate, supportSQLiteQuery.getSql(), EMPTY_STRING_ARRAY, null, cancellationSignal, new SQLiteDatabase.CursorFactory(this) { // from class: androidx.sqlite.db.framework.FrameworkSQLiteDatabase.2
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        });
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void execSQL(String str) throws SQLException {
        this.mDelegate.execSQL(str);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.mDelegate.isOpen();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public String getPath() {
        return this.mDelegate.getPath();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public boolean isWriteAheadLoggingEnabled() {
        return SupportSQLiteCompat$Api16Impl.isWriteAheadLoggingEnabled(this.mDelegate);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public List<Pair<String, String>> getAttachedDbs() {
        return this.mDelegate.getAttachedDbs();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mDelegate.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDelegate(SQLiteDatabase sQLiteDatabase) {
        return this.mDelegate == sQLiteDatabase;
    }
}
