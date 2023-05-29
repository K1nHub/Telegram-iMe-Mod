package androidx.room;

import androidx.arch.core.util.Function;
import androidx.sqlite.p011db.SupportSQLiteStatement;
/* renamed from: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSqliteStatement$$ExternalSyntheticLambda1 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0295xd7aa7fff implements Function {
    public static final /* synthetic */ C0295xd7aa7fff INSTANCE = new C0295xd7aa7fff();

    private /* synthetic */ C0295xd7aa7fff() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return Integer.valueOf(((SupportSQLiteStatement) obj).executeUpdateDelete());
    }
}
