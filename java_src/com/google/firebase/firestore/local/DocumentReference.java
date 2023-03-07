package com.google.firebase.firestore.local;

import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.util.Util;
import java.util.Comparator;
/* loaded from: classes3.dex */
class DocumentReference {
    static final Comparator<DocumentReference> BY_KEY = DocumentReference$$ExternalSyntheticLambda1.INSTANCE;
    static final Comparator<DocumentReference> BY_TARGET = DocumentReference$$ExternalSyntheticLambda0.INSTANCE;
    private final DocumentKey key;
    private final int targetOrBatchId;

    public DocumentReference(DocumentKey documentKey, int i) {
        this.key = documentKey;
        this.targetOrBatchId = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DocumentKey getKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getId() {
        return this.targetOrBatchId;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$0(DocumentReference documentReference, DocumentReference documentReference2) {
        int compareTo = documentReference.key.compareTo(documentReference2.key);
        return compareTo != 0 ? compareTo : Util.compareIntegers(documentReference.targetOrBatchId, documentReference2.targetOrBatchId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$static$1(DocumentReference documentReference, DocumentReference documentReference2) {
        int compareIntegers = Util.compareIntegers(documentReference.targetOrBatchId, documentReference2.targetOrBatchId);
        return compareIntegers != 0 ? compareIntegers : documentReference.key.compareTo(documentReference2.key);
    }
}
