package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class SQLitePersistence$$ExternalSyntheticLambda0 implements Function {
    public static final /* synthetic */ SQLitePersistence$$ExternalSyntheticLambda0 INSTANCE = new SQLitePersistence$$ExternalSyntheticLambda0();

    private /* synthetic */ SQLitePersistence$$ExternalSyntheticLambda0() {
    }

    @Override // com.google.firebase.firestore.util.Function
    public final Object apply(Object obj) {
        Long lambda$getPageSize$0;
        lambda$getPageSize$0 = SQLitePersistence.lambda$getPageSize$0((Cursor) obj);
        return lambda$getPageSize$0;
    }
}
