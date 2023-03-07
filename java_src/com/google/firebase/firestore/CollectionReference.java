package com.google.firebase.firestore;

import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.util.Preconditions;
/* loaded from: classes3.dex */
public class CollectionReference extends Query {
    /* JADX INFO: Access modifiers changed from: package-private */
    public CollectionReference(ResourcePath resourcePath, FirebaseFirestore firebaseFirestore) {
        super(com.google.firebase.firestore.core.Query.atPath(resourcePath), firebaseFirestore);
        if (resourcePath.length() % 2 == 1) {
            return;
        }
        throw new IllegalArgumentException("Invalid collection reference. Collection references must have an odd number of segments, but " + resourcePath.canonicalString() + " has " + resourcePath.length());
    }

    public DocumentReference document(String str) {
        Preconditions.checkNotNull(str, "Provided document path must not be null.");
        return DocumentReference.forPath(this.query.getPath().append(ResourcePath.fromString(str)), this.firestore);
    }
}
