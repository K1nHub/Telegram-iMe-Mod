package androidx.sqlite.p011db.framework;

import android.database.sqlite.SQLiteStatement;
import androidx.sqlite.p011db.SupportSQLiteStatement;
/* renamed from: androidx.sqlite.db.framework.FrameworkSQLiteStatement */
/* loaded from: classes.dex */
class FrameworkSQLiteStatement extends FrameworkSQLiteProgram implements SupportSQLiteStatement {
    private final SQLiteStatement mDelegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FrameworkSQLiteStatement(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.mDelegate = sQLiteStatement;
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        return this.mDelegate.executeUpdateDelete();
    }

    @Override // androidx.sqlite.p011db.SupportSQLiteStatement
    public long executeInsert() {
        return this.mDelegate.executeInsert();
    }
}
