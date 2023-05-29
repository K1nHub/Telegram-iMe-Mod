package androidx.room;

import androidx.arch.core.util.Function;
import androidx.sqlite.p011db.SupportSQLiteStatement;
/* renamed from: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$$ExternalSyntheticLambda2 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0296xd7aa8000 implements Function {
    public static final /* synthetic */ C0296xd7aa8000 INSTANCE = new C0296xd7aa8000();

    private /* synthetic */ C0296xd7aa8000() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return Long.valueOf(((SupportSQLiteStatement) obj).executeInsert());
    }
}
