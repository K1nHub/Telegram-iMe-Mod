package com.google.firebase.firestore.model;

import com.google.firebase.firestore.model.Document;
import com.google.firestore.p021v1.Value;
import java.util.Comparator;
/* loaded from: classes4.dex */
public interface Document {
    public static final Comparator<Document> KEY_COMPARATOR = new Comparator() { // from class: com.google.firebase.firestore.model.Document$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int lambda$static$0;
            lambda$static$0 = Document.CC.lambda$static$0((Document) obj, (Document) obj2);
            return lambda$static$0;
        }
    };

    ObjectValue getData();

    Value getField(FieldPath fieldPath);

    DocumentKey getKey();

    SnapshotVersion getVersion();

    boolean hasCommittedMutations();

    boolean hasLocalMutations();

    boolean hasPendingWrites();

    boolean isFoundDocument();

    /* renamed from: com.google.firebase.firestore.model.Document$-CC  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final /* synthetic */ class CC {
        static {
            Comparator<Document> comparator = Document.KEY_COMPARATOR;
        }

        public static /* synthetic */ int lambda$static$0(Document document, Document document2) {
            return document.getKey().compareTo(document2.getKey());
        }
    }
}
