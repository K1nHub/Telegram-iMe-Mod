package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class SQLitePersistence$$ExternalSyntheticLambda1 implements Function {
    public static final /* synthetic */ SQLitePersistence$$ExternalSyntheticLambda1 INSTANCE = new SQLitePersistence$$ExternalSyntheticLambda1();

    private /* synthetic */ SQLitePersistence$$ExternalSyntheticLambda1() {
    }

    @Override // com.google.firebase.firestore.util.Function
    public final Object apply(Object obj) {
        Long lambda$getPageCount$1;
        lambda$getPageCount$1 = SQLitePersistence.lambda$getPageCount$1((Cursor) obj);
        return lambda$getPageCount$1;
    }
}
