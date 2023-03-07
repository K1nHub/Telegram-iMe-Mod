package com.google.firebase.firestore.local;

import com.google.firebase.firestore.model.mutation.MutationBatch;
import java.util.Comparator;
/* loaded from: classes3.dex */
public final /* synthetic */ class SQLiteMutationQueue$$ExternalSyntheticLambda10 implements Comparator {
    public static final /* synthetic */ SQLiteMutationQueue$$ExternalSyntheticLambda10 INSTANCE = new SQLiteMutationQueue$$ExternalSyntheticLambda10();

    private /* synthetic */ SQLiteMutationQueue$$ExternalSyntheticLambda10() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$getAllMutationBatchesAffectingDocumentKeys$9;
        lambda$getAllMutationBatchesAffectingDocumentKeys$9 = SQLiteMutationQueue.lambda$getAllMutationBatchesAffectingDocumentKeys$9((MutationBatch) obj, (MutationBatch) obj2);
        return lambda$getAllMutationBatchesAffectingDocumentKeys$9;
    }
}
