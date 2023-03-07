package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Function;
/* loaded from: classes3.dex */
public final /* synthetic */ class SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2 implements Function {
    public static final /* synthetic */ SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2 INSTANCE = new SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2();

    private /* synthetic */ SQLiteLruReferenceDelegate$$ExternalSyntheticLambda2() {
    }

    @Override // com.google.firebase.firestore.util.Function
    public final Object apply(Object obj) {
        Long lambda$getSequenceNumberCount$0;
        lambda$getSequenceNumberCount$0 = SQLiteLruReferenceDelegate.lambda$getSequenceNumberCount$0((Cursor) obj);
        return lambda$getSequenceNumberCount$0;
    }
}
