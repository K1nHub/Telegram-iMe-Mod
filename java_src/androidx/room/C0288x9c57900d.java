package androidx.room;

import androidx.arch.core.util.Function;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
/* renamed from: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$ExternalSyntheticLambda3 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0288x9c57900d implements Function {
    public static final /* synthetic */ C0288x9c57900d INSTANCE = new C0288x9c57900d();

    private /* synthetic */ C0288x9c57900d() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return ((SupportSQLiteDatabase) obj).getAttachedDbs();
    }
}
