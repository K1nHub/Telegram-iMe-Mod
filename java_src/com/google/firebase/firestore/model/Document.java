package com.google.firebase.firestore.model;

import com.google.firestore.p022v1.Value;
import java.util.Comparator;
/* loaded from: classes3.dex */
public interface Document {
    public static final Comparator<Document> KEY_COMPARATOR = Document$$ExternalSyntheticLambda0.INSTANCE;

    ObjectValue getData();

    Value getField(FieldPath fieldPath);

    DocumentKey getKey();

    SnapshotVersion getVersion();

    boolean hasCommittedMutations();

    boolean hasLocalMutations();

    boolean hasPendingWrites();

    boolean isFoundDocument();

    /* renamed from: com.google.firebase.firestore.model.Document$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        static {
            Comparator<Document> comparator = Document.KEY_COMPARATOR;
        }

        public static /* synthetic */ int lambda$static$0(Document document, Document document2) {
            return document.getKey().compareTo(document2.getKey());
        }
    }
}
