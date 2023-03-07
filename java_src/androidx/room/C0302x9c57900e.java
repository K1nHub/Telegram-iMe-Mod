package androidx.room;

import androidx.arch.core.util.Function;
import androidx.sqlite.p011db.SupportSQLiteDatabase;
/* renamed from: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$$ExternalSyntheticLambda4 */
/* loaded from: classes.dex */
public final /* synthetic */ class C0302x9c57900e implements Function {
    public static final /* synthetic */ C0302x9c57900e INSTANCE = new C0302x9c57900e();

    private /* synthetic */ C0302x9c57900e() {
    }

    @Override // androidx.arch.core.util.Function
    public final Object apply(Object obj) {
        return ((SupportSQLiteDatabase) obj).getPath();
    }
}
