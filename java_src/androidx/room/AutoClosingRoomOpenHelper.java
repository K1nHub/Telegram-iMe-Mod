package androidx.room;

import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.database.SQLException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.arch.core.util.Function;
import androidx.room.AutoClosingRoomOpenHelper;
import androidx.room.util.SneakyThrow;
import androidx.sqlite.p011db.SupportSQLiteCompat$Api19Impl;
import androidx.sqlite.p011db.SupportSQLiteCompat$Api23Impl;
import androidx.sqlite.p011db.SupportSQLiteCompat$Api29Impl;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import androidx.sqlite.p011db.SupportSQLiteOpenHelper;
import androidx.sqlite.p011db.SupportSQLiteQuery;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoClosingRoomOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    private final AutoCloser mAutoCloser;
    private final AutoClosingSupportSQLiteDatabase mAutoClosingDb;
    private final SupportSQLiteOpenHelper mDelegateOpenHelper;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoClosingRoomOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper, AutoCloser autoCloser) {
        this.mDelegateOpenHelper = supportSQLiteOpenHelper;
        this.mAutoCloser = autoCloser;
        autoCloser.init(supportSQLiteOpenHelper);
        this.mAutoClosingDb = new AutoClosingSupportSQLiteDatabase(autoCloser);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteOpenHelper
    public String getDatabaseName() {
        return this.mDelegateOpenHelper.getDatabaseName();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteOpenHelper
    public void setWriteAheadLoggingEnabled(boolean z) {
        this.mDelegateOpenHelper.setWriteAheadLoggingEnabled(z);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteOpenHelper
    public SupportSQLiteDatabase getWritableDatabase() {
        this.mAutoClosingDb.pokeOpen();
        return this.mAutoClosingDb;
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.mAutoClosingDb.close();
        } catch (IOException e) {
            SneakyThrow.reThrow(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoCloser getAutoCloser() {
        return this.mAutoCloser;
    }

    @Override // androidx.room.DelegatingOpenHelper
    public SupportSQLiteOpenHelper getDelegate() {
        return this.mDelegateOpenHelper;
    }

    /* loaded from: classes.dex */
    static final class AutoClosingSupportSQLiteDatabase implements SupportSQLiteDatabase {
        private final AutoCloser mAutoCloser;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Object lambda$pokeOpen$0(SupportSQLiteDatabase supportSQLiteDatabase) {
            return null;
        }

        AutoClosingSupportSQLiteDatabase(AutoCloser autoCloser) {
            this.mAutoCloser = autoCloser;
        }

        void pokeOpen() {
            this.mAutoCloser.executeRefCountingFunction(C0300x9c57900c.INSTANCE);
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public SupportSQLiteStatement compileStatement(String str) {
            return new AutoClosingSupportSqliteStatement(str, this.mAutoCloser);
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public void beginTransaction() {
            try {
                this.mAutoCloser.incrementCountAndEnsureDbIsOpen().beginTransaction();
            } catch (Throwable th) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th;
            }
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public void beginTransactionNonExclusive() {
            try {
                this.mAutoCloser.incrementCountAndEnsureDbIsOpen().beginTransactionNonExclusive();
            } catch (Throwable th) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th;
            }
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public void endTransaction() {
            if (this.mAutoCloser.getDelegateDatabase() == null) {
                throw new IllegalStateException("End transaction called but delegateDb is null");
            }
            try {
                this.mAutoCloser.getDelegateDatabase().endTransaction();
            } finally {
                this.mAutoCloser.decrementCountAndScheduleClose();
            }
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public void setTransactionSuccessful() {
            SupportSQLiteDatabase delegateDatabase = this.mAutoCloser.getDelegateDatabase();
            if (delegateDatabase == null) {
                throw new IllegalStateException("setTransactionSuccessful called but delegateDb is null");
            }
            delegateDatabase.setTransactionSuccessful();
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public boolean inTransaction() {
            if (this.mAutoCloser.getDelegateDatabase() == null) {
                return false;
            }
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(C0303x9c57900f.INSTANCE)).booleanValue();
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public Cursor query(String str) {
            try {
                return new KeepAliveCursor(this.mAutoCloser.incrementCountAndEnsureDbIsOpen().query(str), this.mAutoCloser);
            } catch (Throwable th) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th;
            }
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public Cursor query(SupportSQLiteQuery supportSQLiteQuery) {
            try {
                return new KeepAliveCursor(this.mAutoCloser.incrementCountAndEnsureDbIsOpen().query(supportSQLiteQuery), this.mAutoCloser);
            } catch (Throwable th) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th;
            }
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public Cursor query(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
            try {
                return new KeepAliveCursor(this.mAutoCloser.incrementCountAndEnsureDbIsOpen().query(supportSQLiteQuery, cancellationSignal), this.mAutoCloser);
            } catch (Throwable th) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th;
            }
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public void execSQL(final String str) throws SQLException {
            this.mAutoCloser.executeRefCountingFunction(new Function() { // from class: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Object execSQL;
                    execSQL = ((SupportSQLiteDatabase) obj).execSQL(str);
                    return execSQL;
                }
            });
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public boolean isOpen() {
            SupportSQLiteDatabase delegateDatabase = this.mAutoCloser.getDelegateDatabase();
            if (delegateDatabase == null) {
                return false;
            }
            return delegateDatabase.isOpen();
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public String getPath() {
            return (String) this.mAutoCloser.executeRefCountingFunction(C0302x9c57900e.INSTANCE);
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public boolean isWriteAheadLoggingEnabled() {
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(C0299x9c57900b.INSTANCE)).booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ Boolean lambda$isWriteAheadLoggingEnabled$13(SupportSQLiteDatabase supportSQLiteDatabase) {
            if (Build.VERSION.SDK_INT >= 16) {
                return Boolean.valueOf(supportSQLiteDatabase.isWriteAheadLoggingEnabled());
            }
            return Boolean.FALSE;
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
        public List<Pair<String, String>> getAttachedDbs() {
            return (List) this.mAutoCloser.executeRefCountingFunction(C0301x9c57900d.INSTANCE);
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.mAutoCloser.closeDatabaseIfOpen();
        }
    }

    /* loaded from: classes.dex */
    private static final class KeepAliveCursor implements Cursor {
        private final AutoCloser mAutoCloser;
        private final Cursor mDelegate;

        KeepAliveCursor(Cursor cursor, AutoCloser autoCloser) {
            this.mDelegate = cursor;
            this.mAutoCloser = autoCloser;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.mDelegate.close();
            this.mAutoCloser.decrementCountAndScheduleClose();
        }

        @Override // android.database.Cursor
        public boolean isClosed() {
            return this.mDelegate.isClosed();
        }

        @Override // android.database.Cursor
        public int getCount() {
            return this.mDelegate.getCount();
        }

        @Override // android.database.Cursor
        public int getPosition() {
            return this.mDelegate.getPosition();
        }

        @Override // android.database.Cursor
        public boolean move(int i) {
            return this.mDelegate.move(i);
        }

        @Override // android.database.Cursor
        public boolean moveToPosition(int i) {
            return this.mDelegate.moveToPosition(i);
        }

        @Override // android.database.Cursor
        public boolean moveToFirst() {
            return this.mDelegate.moveToFirst();
        }

        @Override // android.database.Cursor
        public boolean moveToLast() {
            return this.mDelegate.moveToLast();
        }

        @Override // android.database.Cursor
        public boolean moveToNext() {
            return this.mDelegate.moveToNext();
        }

        @Override // android.database.Cursor
        public boolean moveToPrevious() {
            return this.mDelegate.moveToPrevious();
        }

        @Override // android.database.Cursor
        public boolean isFirst() {
            return this.mDelegate.isFirst();
        }

        @Override // android.database.Cursor
        public boolean isLast() {
            return this.mDelegate.isLast();
        }

        @Override // android.database.Cursor
        public boolean isBeforeFirst() {
            return this.mDelegate.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public boolean isAfterLast() {
            return this.mDelegate.isAfterLast();
        }

        @Override // android.database.Cursor
        public int getColumnIndex(String str) {
            return this.mDelegate.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public int getColumnIndexOrThrow(String str) throws IllegalArgumentException {
            return this.mDelegate.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public String getColumnName(int i) {
            return this.mDelegate.getColumnName(i);
        }

        @Override // android.database.Cursor
        public String[] getColumnNames() {
            return this.mDelegate.getColumnNames();
        }

        @Override // android.database.Cursor
        public int getColumnCount() {
            return this.mDelegate.getColumnCount();
        }

        @Override // android.database.Cursor
        public byte[] getBlob(int i) {
            return this.mDelegate.getBlob(i);
        }

        @Override // android.database.Cursor
        public String getString(int i) {
            return this.mDelegate.getString(i);
        }

        @Override // android.database.Cursor
        public void copyStringToBuffer(int i, CharArrayBuffer charArrayBuffer) {
            this.mDelegate.copyStringToBuffer(i, charArrayBuffer);
        }

        @Override // android.database.Cursor
        public short getShort(int i) {
            return this.mDelegate.getShort(i);
        }

        @Override // android.database.Cursor
        public int getInt(int i) {
            return this.mDelegate.getInt(i);
        }

        @Override // android.database.Cursor
        public long getLong(int i) {
            return this.mDelegate.getLong(i);
        }

        @Override // android.database.Cursor
        public float getFloat(int i) {
            return this.mDelegate.getFloat(i);
        }

        @Override // android.database.Cursor
        public double getDouble(int i) {
            return this.mDelegate.getDouble(i);
        }

        @Override // android.database.Cursor
        public int getType(int i) {
            return this.mDelegate.getType(i);
        }

        @Override // android.database.Cursor
        public boolean isNull(int i) {
            return this.mDelegate.isNull(i);
        }

        @Override // android.database.Cursor
        @Deprecated
        public void deactivate() {
            this.mDelegate.deactivate();
        }

        @Override // android.database.Cursor
        @Deprecated
        public boolean requery() {
            return this.mDelegate.requery();
        }

        @Override // android.database.Cursor
        public void registerContentObserver(ContentObserver contentObserver) {
            this.mDelegate.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void unregisterContentObserver(ContentObserver contentObserver) {
            this.mDelegate.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDelegate.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.mDelegate.unregisterDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        public void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.mDelegate.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public void setNotificationUris(ContentResolver contentResolver, List<Uri> list) {
            SupportSQLiteCompat$Api29Impl.setNotificationUris(this.mDelegate, contentResolver, list);
        }

        @Override // android.database.Cursor
        public Uri getNotificationUri() {
            return SupportSQLiteCompat$Api19Impl.getNotificationUri(this.mDelegate);
        }

        @Override // android.database.Cursor
        public List<Uri> getNotificationUris() {
            return SupportSQLiteCompat$Api29Impl.getNotificationUris(this.mDelegate);
        }

        @Override // android.database.Cursor
        public boolean getWantsAllOnMoveCalls() {
            return this.mDelegate.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public void setExtras(Bundle bundle) {
            SupportSQLiteCompat$Api23Impl.setExtras(this.mDelegate, bundle);
        }

        @Override // android.database.Cursor
        public Bundle getExtras() {
            return this.mDelegate.getExtras();
        }

        @Override // android.database.Cursor
        public Bundle respond(Bundle bundle) {
            return this.mDelegate.respond(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AutoClosingSupportSqliteStatement implements SupportSQLiteStatement {
        private final AutoCloser mAutoCloser;
        private final ArrayList<Object> mBinds = new ArrayList<>();
        private final String mSql;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        AutoClosingSupportSqliteStatement(String str, AutoCloser autoCloser) {
            this.mSql = str;
            this.mAutoCloser = autoCloser;
        }

        private <T> T executeSqliteStatementWithRefCount(final Function<SupportSQLiteStatement, T> function) {
            return (T) this.mAutoCloser.executeRefCountingFunction(new Function() { // from class: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$$ExternalSyntheticLambda0
                @Override // androidx.arch.core.util.Function
                public final Object apply(Object obj) {
                    Object lambda$executeSqliteStatementWithRefCount$0;
                    lambda$executeSqliteStatementWithRefCount$0 = AutoClosingRoomOpenHelper.AutoClosingSupportSqliteStatement.this.lambda$executeSqliteStatementWithRefCount$0(function, (SupportSQLiteDatabase) obj);
                    return lambda$executeSqliteStatementWithRefCount$0;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Object lambda$executeSqliteStatementWithRefCount$0(Function function, SupportSQLiteDatabase supportSQLiteDatabase) {
            SupportSQLiteStatement compileStatement = supportSQLiteDatabase.compileStatement(this.mSql);
            doBinds(compileStatement);
            return function.apply(compileStatement);
        }

        private void doBinds(SupportSQLiteStatement supportSQLiteStatement) {
            int i = 0;
            while (i < this.mBinds.size()) {
                int i2 = i + 1;
                Object obj = this.mBinds.get(i);
                if (obj == null) {
                    supportSQLiteStatement.bindNull(i2);
                } else if (obj instanceof Long) {
                    supportSQLiteStatement.bindLong(i2, ((Long) obj).longValue());
                } else if (obj instanceof Double) {
                    supportSQLiteStatement.bindDouble(i2, ((Double) obj).doubleValue());
                } else if (obj instanceof String) {
                    supportSQLiteStatement.bindString(i2, (String) obj);
                } else if (obj instanceof byte[]) {
                    supportSQLiteStatement.bindBlob(i2, (byte[]) obj);
                }
                i = i2;
            }
        }

        private void saveBinds(int i, Object obj) {
            int i2 = i - 1;
            if (i2 >= this.mBinds.size()) {
                for (int size = this.mBinds.size(); size <= i2; size++) {
                    this.mBinds.add(null);
                }
            }
            this.mBinds.set(i2, obj);
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteStatement
        public int executeUpdateDelete() {
            return ((Integer) executeSqliteStatementWithRefCount(C0305xd7aa7fff.INSTANCE)).intValue();
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteStatement
        public long executeInsert() {
            return ((Long) executeSqliteStatementWithRefCount(C0306xd7aa8000.INSTANCE)).longValue();
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteProgram
        public void bindNull(int i) {
            saveBinds(i, null);
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteProgram
        public void bindLong(int i, long j) {
            saveBinds(i, Long.valueOf(j));
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteProgram
        public void bindDouble(int i, double d) {
            saveBinds(i, Double.valueOf(d));
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteProgram
        public void bindString(int i, String str) {
            saveBinds(i, str);
        }

        @Override // androidx.sqlite.p011db.SupportSQLiteProgram
        public void bindBlob(int i, byte[] bArr) {
            saveBinds(i, bArr);
        }
    }
}
