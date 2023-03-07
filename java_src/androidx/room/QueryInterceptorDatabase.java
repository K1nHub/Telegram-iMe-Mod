package androidx.room;

import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.room.RoomDatabase;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
import androidx.sqlite.p011db.SupportSQLiteQuery;
import androidx.sqlite.p011db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {
    private final SupportSQLiteDatabase mDelegate;
    private final RoomDatabase.QueryCallback mQueryCallback;
    private final Executor mQueryCallbackExecutor;

    /* JADX INFO: Access modifiers changed from: package-private */
    public QueryInterceptorDatabase(SupportSQLiteDatabase supportSQLiteDatabase, RoomDatabase.QueryCallback queryCallback, Executor executor) {
        this.mDelegate = supportSQLiteDatabase;
        this.mQueryCallback = queryCallback;
        this.mQueryCallbackExecutor = executor;
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public SupportSQLiteStatement compileStatement(String str) {
        return new QueryInterceptorStatement(this.mDelegate.compileStatement(str), this.mQueryCallback, str, this.mQueryCallbackExecutor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$beginTransaction$0() {
        this.mQueryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", Collections.emptyList());
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void beginTransaction() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$beginTransaction$0();
            }
        });
        this.mDelegate.beginTransaction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$beginTransactionNonExclusive$1() {
        this.mQueryCallback.onQuery("BEGIN DEFERRED TRANSACTION", Collections.emptyList());
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void beginTransactionNonExclusive() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$beginTransactionNonExclusive$1();
            }
        });
        this.mDelegate.beginTransactionNonExclusive();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endTransaction$4() {
        this.mQueryCallback.onQuery("END TRANSACTION", Collections.emptyList());
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void endTransaction() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$endTransaction$4();
            }
        });
        this.mDelegate.endTransaction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setTransactionSuccessful$5() {
        this.mQueryCallback.onQuery("TRANSACTION SUCCESSFUL", Collections.emptyList());
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void setTransactionSuccessful() {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$setTransactionSuccessful$5();
            }
        });
        this.mDelegate.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public boolean inTransaction() {
        return this.mDelegate.inTransaction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$query$6(String str) {
        this.mQueryCallback.onQuery(str, Collections.emptyList());
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public Cursor query(final String str) {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$query$6(str);
            }
        });
        return this.mDelegate.query(str);
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery) {
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        supportSQLiteQuery.bindTo(queryInterceptorProgram);
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$query$8(supportSQLiteQuery, queryInterceptorProgram);
            }
        });
        return this.mDelegate.query(supportSQLiteQuery);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$query$8(SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        this.mQueryCallback.onQuery(supportSQLiteQuery.getSql(), queryInterceptorProgram.getBindArgs());
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        supportSQLiteQuery.bindTo(queryInterceptorProgram);
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$query$9(supportSQLiteQuery, queryInterceptorProgram);
            }
        });
        return this.mDelegate.query(supportSQLiteQuery);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$query$9(SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        this.mQueryCallback.onQuery(supportSQLiteQuery.getSql(), queryInterceptorProgram.getBindArgs());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$execSQL$10(String str) {
        this.mQueryCallback.onQuery(str, new ArrayList(0));
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public void execSQL(final String str) throws SQLException {
        this.mQueryCallbackExecutor.execute(new Runnable() { // from class: androidx.room.QueryInterceptorDatabase$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.this.lambda$execSQL$10(str);
            }
        });
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
        return this.mDelegate.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteDatabase
    public List<Pair<String, String>> getAttachedDbs() {
        return this.mDelegate.getAttachedDbs();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.mDelegate.close();
    }
}
