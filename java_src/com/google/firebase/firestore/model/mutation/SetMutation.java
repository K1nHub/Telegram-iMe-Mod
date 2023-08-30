package com.google.firebase.firestore.model.mutation;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.FieldPath;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.ObjectValue;
import com.google.firestore.p021v1.Value;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class SetMutation extends Mutation {
    private final ObjectValue value;

    public SetMutation(DocumentKey documentKey, ObjectValue objectValue, Precondition precondition, List<FieldTransform> list) {
        super(documentKey, precondition, list);
        this.value = objectValue;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SetMutation.class != obj.getClass()) {
            return false;
        }
        SetMutation setMutation = (SetMutation) obj;
        return hasSameKeyAndPrecondition(setMutation) && this.value.equals(setMutation.value) && getFieldTransforms().equals(setMutation.getFieldTransforms());
    }

    public int hashCode() {
        return (keyAndPreconditionHashCode() * 31) + this.value.hashCode();
    }

    public String toString() {
        return "SetMutation{" + keyAndPreconditionToString() + ", value=" + this.value + "}";
    }

    @Override // com.google.firebase.firestore.model.mutation.Mutation
    public void applyToRemoteDocument(MutableDocument mutableDocument, MutationResult mutationResult) {
        verifyKeyMatches(mutableDocument);
        ObjectValue m1105clone = this.value.m1105clone();
        m1105clone.setAll(serverTransformResults(mutableDocument, mutationResult.getTransformResults()));
        mutableDocument.convertToFoundDocument(mutationResult.getVersion(), m1105clone).setHasCommittedMutations();
    }

    @Override // com.google.firebase.firestore.model.mutation.Mutation
    public void applyToLocalView(MutableDocument mutableDocument, Timestamp timestamp) {
        verifyKeyMatches(mutableDocument);
        if (getPrecondition().isValidFor(mutableDocument)) {
            Map<FieldPath, Value> localTransformResults = localTransformResults(timestamp, mutableDocument);
            ObjectValue m1105clone = this.value.m1105clone();
            m1105clone.setAll(localTransformResults);
            mutableDocument.convertToFoundDocument(mutableDocument.getVersion(), m1105clone).setHasLocalMutations();
        }
    }

    public ObjectValue getValue() {
        return this.value;
    }
}
