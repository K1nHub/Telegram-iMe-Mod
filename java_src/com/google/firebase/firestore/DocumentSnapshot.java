package com.google.firebase.firestore;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.util.Preconditions;
import com.google.firestore.p022v1.Value;
/* loaded from: classes3.dex */
public class DocumentSnapshot {
    private final Document doc;
    private final FirebaseFirestore firestore;
    private final DocumentKey key;
    private final SnapshotMetadata metadata;

    /* loaded from: classes3.dex */
    public enum ServerTimestampBehavior {
        NONE,
        ESTIMATE,
        PREVIOUS;
        
        static final ServerTimestampBehavior DEFAULT = NONE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DocumentSnapshot(FirebaseFirestore firebaseFirestore, DocumentKey documentKey, Document document, boolean z, boolean z2) {
        this.firestore = (FirebaseFirestore) Preconditions.checkNotNull(firebaseFirestore);
        this.key = (DocumentKey) Preconditions.checkNotNull(documentKey);
        this.doc = document;
        this.metadata = new SnapshotMetadata(z2, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DocumentSnapshot fromDocument(FirebaseFirestore firebaseFirestore, Document document, boolean z, boolean z2) {
        return new DocumentSnapshot(firebaseFirestore, document.getKey(), document, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DocumentSnapshot fromNoDocument(FirebaseFirestore firebaseFirestore, DocumentKey documentKey, boolean z) {
        return new DocumentSnapshot(firebaseFirestore, documentKey, null, z, false);
    }

    public String getId() {
        return this.key.getPath().getLastSegment();
    }

    public Object get(String str) {
        return get(FieldPath.fromDotSeparatedPath(str), ServerTimestampBehavior.DEFAULT);
    }

    public Object get(String str, ServerTimestampBehavior serverTimestampBehavior) {
        return get(FieldPath.fromDotSeparatedPath(str), serverTimestampBehavior);
    }

    public Object get(FieldPath fieldPath, ServerTimestampBehavior serverTimestampBehavior) {
        Preconditions.checkNotNull(fieldPath, "Provided field path must not be null.");
        Preconditions.checkNotNull(serverTimestampBehavior, "Provided serverTimestampBehavior value must not be null.");
        return getInternal(fieldPath.getInternalPath(), serverTimestampBehavior);
    }

    public Boolean getBoolean(String str) {
        return (Boolean) getTypedValue(str, Boolean.class);
    }

    public Double getDouble(String str) {
        Number number = (Number) getTypedValue(str, Number.class);
        if (number != null) {
            return Double.valueOf(number.doubleValue());
        }
        return null;
    }

    public String getString(String str) {
        return (String) getTypedValue(str, String.class);
    }

    public Long getLong(String str) {
        Number number = (Number) getTypedValue(str, Number.class);
        if (number != null) {
            return Long.valueOf(number.longValue());
        }
        return null;
    }

    public Timestamp getTimestamp(String str) {
        return getTimestamp(str, ServerTimestampBehavior.DEFAULT);
    }

    public Timestamp getTimestamp(String str, ServerTimestampBehavior serverTimestampBehavior) {
        Preconditions.checkNotNull(str, "Provided field path must not be null.");
        Preconditions.checkNotNull(serverTimestampBehavior, "Provided serverTimestampBehavior value must not be null.");
        return (Timestamp) castTypedValue(getInternal(FieldPath.fromDotSeparatedPath(str).getInternalPath(), serverTimestampBehavior), str, Timestamp.class);
    }

    private <T> T getTypedValue(String str, Class<T> cls) {
        Preconditions.checkNotNull(str, "Provided field must not be null.");
        return (T) castTypedValue(get(str, ServerTimestampBehavior.DEFAULT), str, cls);
    }

    private <T> T castTypedValue(Object obj, String str, Class<T> cls) {
        if (obj == null) {
            return null;
        }
        if (!cls.isInstance(obj)) {
            throw new RuntimeException("Field '" + str + "' is not a " + cls.getName());
        }
        return cls.cast(obj);
    }

    private Object getInternal(com.google.firebase.firestore.model.FieldPath fieldPath, ServerTimestampBehavior serverTimestampBehavior) {
        Value field;
        Document document = this.doc;
        if (document == null || (field = document.getField(fieldPath)) == null) {
            return null;
        }
        return new UserDataWriter(this.firestore, serverTimestampBehavior).convertValue(field);
    }

    public boolean equals(Object obj) {
        Document document;
        if (this == obj) {
            return true;
        }
        if (obj instanceof DocumentSnapshot) {
            DocumentSnapshot documentSnapshot = (DocumentSnapshot) obj;
            return this.firestore.equals(documentSnapshot.firestore) && this.key.equals(documentSnapshot.key) && ((document = this.doc) != null ? document.equals(documentSnapshot.doc) : documentSnapshot.doc == null) && this.metadata.equals(documentSnapshot.metadata);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.firestore.hashCode() * 31) + this.key.hashCode()) * 31;
        Document document = this.doc;
        int hashCode2 = (hashCode + (document != null ? document.getKey().hashCode() : 0)) * 31;
        Document document2 = this.doc;
        return ((hashCode2 + (document2 != null ? document2.getData().hashCode() : 0)) * 31) + this.metadata.hashCode();
    }

    public String toString() {
        return "DocumentSnapshot{key=" + this.key + ", metadata=" + this.metadata + ", doc=" + this.doc + '}';
    }
}
