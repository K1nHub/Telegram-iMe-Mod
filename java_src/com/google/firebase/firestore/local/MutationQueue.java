package com.google.firebase.firestore.local;

import com.google.firebase.firestore.core.Query;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.mutation.MutationBatch;
import com.google.protobuf.ByteString;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public interface MutationQueue {
    void acknowledgeBatch(MutationBatch mutationBatch, ByteString byteString);

    List<MutationBatch> getAllMutationBatches();

    List<MutationBatch> getAllMutationBatchesAffectingDocumentKey(DocumentKey documentKey);

    List<MutationBatch> getAllMutationBatchesAffectingDocumentKeys(Iterable<DocumentKey> iterable);

    List<MutationBatch> getAllMutationBatchesAffectingQuery(Query query);

    ByteString getLastStreamToken();

    MutationBatch getNextMutationBatchAfterBatchId(int i);

    MutationBatch lookupMutationBatch(int i);

    void performConsistencyCheck();

    void removeMutationBatch(MutationBatch mutationBatch);

    void setLastStreamToken(ByteString byteString);

    void start();
}
