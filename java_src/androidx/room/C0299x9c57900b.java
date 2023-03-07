package androidx.room;

import androidx.arch.core.util.Function;
import androidx.room.AutoClosingRoomOpenHelper;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
/* renamed from: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$ExternalSyntheticLambda1 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0299x9c57900b implements Function {
    public static final /* synthetic */ C0299x9c57900b INSTANCE = new C0299x9c57900b();

    private /* synthetic */ C0299x9c57900b() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        Boolean lambda$isWriteAheadLoggingEnabled$13;
        lambda$isWriteAheadLoggingEnabled$13 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$isWriteAheadLoggingEnabled$13((SupportSQLiteDatabase) obj);
        return lambda$isWriteAheadLoggingEnabled$13;
    }
}
