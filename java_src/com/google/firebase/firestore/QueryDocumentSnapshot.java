package com.google.firebase.firestore;

import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
/* loaded from: classes4.dex */
public class QueryDocumentSnapshot extends DocumentSnapshot {
    private QueryDocumentSnapshot(FirebaseFirestore firebaseFirestore, DocumentKey documentKey, Document document, boolean z, boolean z2) {
        super(firebaseFirestore, documentKey, document, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static QueryDocumentSnapshot fromDocument(FirebaseFirestore firebaseFirestore, Document document, boolean z, boolean z2) {
        return new QueryDocumentSnapshot(firebaseFirestore, document.getKey(), document, z, z2);
    }
}
