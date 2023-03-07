package androidx.room;

import androidx.arch.core.util.Function;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
/* renamed from: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$ExternalSyntheticLambda5 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0303x9c57900f implements Function {
    public static final /* synthetic */ C0303x9c57900f INSTANCE = new C0303x9c57900f();

    private /* synthetic */ C0303x9c57900f() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return Boolean.valueOf(((SupportSQLiteDatabase) obj).inTransaction());
    }
}
