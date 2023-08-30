package com.google.firebase.firestore.model.mutation;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.util.Assert;
/* loaded from: classes3.dex */
public final class VerifyMutation extends Mutation {
    public VerifyMutation(DocumentKey documentKey, Precondition precondition) {
        super(documentKey, precondition);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || VerifyMutation.class != obj.getClass()) {
            return false;
        }
        return hasSameKeyAndPrecondition((VerifyMutation) obj);
    }

    public int hashCode() {
        return keyAndPreconditionHashCode();
    }

    public String toString() {
        return "VerifyMutation{" + keyAndPreconditionToString() + "}";
    }

    @Override // com.google.firebase.firestore.model.mutation.Mutation
    public void applyToRemoteDocument(MutableDocument mutableDocument, MutationResult mutationResult) {
        throw Assert.fail("VerifyMutation should only be used in Transactions.", new Object[0]);
    }

    @Override // com.google.firebase.firestore.model.mutation.Mutation
    public void applyToLocalView(MutableDocument mutableDocument, Timestamp timestamp) {
        throw Assert.fail("VerifyMutation should only be used in Transactions.", new Object[0]);
    }
}
