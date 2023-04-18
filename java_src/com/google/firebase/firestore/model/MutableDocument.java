package com.google.firebase.firestore.model;

import com.google.firestore.p021v1.Value;
/* loaded from: classes3.dex */
public final class MutableDocument implements Document, Cloneable {
    private DocumentState documentState;
    private DocumentType documentType;
    private final DocumentKey key;
    private ObjectValue value;
    private SnapshotVersion version;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum DocumentState {
        HAS_LOCAL_MUTATIONS,
        HAS_COMMITTED_MUTATIONS,
        SYNCED
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum DocumentType {
        INVALID,
        FOUND_DOCUMENT,
        NO_DOCUMENT,
        UNKNOWN_DOCUMENT
    }

    private MutableDocument(DocumentKey documentKey) {
        this.key = documentKey;
    }

    private MutableDocument(DocumentKey documentKey, DocumentType documentType, SnapshotVersion snapshotVersion, ObjectValue objectValue, DocumentState documentState) {
        this.key = documentKey;
        this.version = snapshotVersion;
        this.documentType = documentType;
        this.documentState = documentState;
        this.value = objectValue;
    }

    public static MutableDocument newInvalidDocument(DocumentKey documentKey) {
        return new MutableDocument(documentKey, DocumentType.INVALID, SnapshotVersion.NONE, new ObjectValue(), DocumentState.SYNCED);
    }

    public static MutableDocument newFoundDocument(DocumentKey documentKey, SnapshotVersion snapshotVersion, ObjectValue objectValue) {
        return new MutableDocument(documentKey).convertToFoundDocument(snapshotVersion, objectValue);
    }

    public static MutableDocument newNoDocument(DocumentKey documentKey, SnapshotVersion snapshotVersion) {
        return new MutableDocument(documentKey).convertToNoDocument(snapshotVersion);
    }

    public static MutableDocument newUnknownDocument(DocumentKey documentKey, SnapshotVersion snapshotVersion) {
        return new MutableDocument(documentKey).convertToUnknownDocument(snapshotVersion);
    }

    public MutableDocument convertToFoundDocument(SnapshotVersion snapshotVersion, ObjectValue objectValue) {
        this.version = snapshotVersion;
        this.documentType = DocumentType.FOUND_DOCUMENT;
        this.value = objectValue;
        this.documentState = DocumentState.SYNCED;
        return this;
    }

    public MutableDocument convertToNoDocument(SnapshotVersion snapshotVersion) {
        this.version = snapshotVersion;
        this.documentType = DocumentType.NO_DOCUMENT;
        this.value = new ObjectValue();
        this.documentState = DocumentState.SYNCED;
        return this;
    }

    public MutableDocument convertToUnknownDocument(SnapshotVersion snapshotVersion) {
        this.version = snapshotVersion;
        this.documentType = DocumentType.UNKNOWN_DOCUMENT;
        this.value = new ObjectValue();
        this.documentState = DocumentState.HAS_COMMITTED_MUTATIONS;
        return this;
    }

    public MutableDocument setHasCommittedMutations() {
        this.documentState = DocumentState.HAS_COMMITTED_MUTATIONS;
        return this;
    }

    public MutableDocument setHasLocalMutations() {
        this.documentState = DocumentState.HAS_LOCAL_MUTATIONS;
        return this;
    }

    @Override // com.google.firebase.firestore.model.Document
    public DocumentKey getKey() {
        return this.key;
    }

    @Override // com.google.firebase.firestore.model.Document
    public SnapshotVersion getVersion() {
        return this.version;
    }

    @Override // com.google.firebase.firestore.model.Document
    public boolean hasLocalMutations() {
        return this.documentState.equals(DocumentState.HAS_LOCAL_MUTATIONS);
    }

    @Override // com.google.firebase.firestore.model.Document
    public boolean hasCommittedMutations() {
        return this.documentState.equals(DocumentState.HAS_COMMITTED_MUTATIONS);
    }

    @Override // com.google.firebase.firestore.model.Document
    public boolean hasPendingWrites() {
        return hasLocalMutations() || hasCommittedMutations();
    }

    @Override // com.google.firebase.firestore.model.Document
    public ObjectValue getData() {
        return this.value;
    }

    @Override // com.google.firebase.firestore.model.Document
    public Value getField(FieldPath fieldPath) {
        return getData().get(fieldPath);
    }

    public boolean isValidDocument() {
        return !this.documentType.equals(DocumentType.INVALID);
    }

    @Override // com.google.firebase.firestore.model.Document
    public boolean isFoundDocument() {
        return this.documentType.equals(DocumentType.FOUND_DOCUMENT);
    }

    public boolean isNoDocument() {
        return this.documentType.equals(DocumentType.NO_DOCUMENT);
    }

    public boolean isUnknownDocument() {
        return this.documentType.equals(DocumentType.UNKNOWN_DOCUMENT);
    }

    /* renamed from: clone */
    public MutableDocument m1079clone() {
        return new MutableDocument(this.key, this.documentType, this.version, this.value.m1080clone(), this.documentState);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || MutableDocument.class != obj.getClass()) {
            return false;
        }
        MutableDocument mutableDocument = (MutableDocument) obj;
        if (this.key.equals(mutableDocument.key) && this.version.equals(mutableDocument.version) && this.documentType.equals(mutableDocument.documentType) && this.documentState.equals(mutableDocument.documentState)) {
            return this.value.equals(mutableDocument.value);
        }
        return false;
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        return "Document{key=" + this.key + ", version=" + this.version + ", type=" + this.documentType + ", documentState=" + this.documentState + ", value=" + this.value + '}';
    }
}
