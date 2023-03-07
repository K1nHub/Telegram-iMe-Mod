package com.google.firebase.firestore.local;

import com.google.firebase.database.collection.ImmutableSortedSet;
import com.google.firebase.firestore.core.Query;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.model.mutation.Mutation;
import com.google.firebase.firestore.model.mutation.MutationBatch;
import com.google.firebase.firestore.remote.WriteStream;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Preconditions;
import com.google.firebase.firestore.util.Util;
import com.google.protobuf.ByteString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class MemoryMutationQueue implements MutationQueue {
    private final MemoryPersistence persistence;
    private final List<MutationBatch> queue = new ArrayList();
    private ImmutableSortedSet<DocumentReference> batchesByDocumentKey = new ImmutableSortedSet<>(Collections.emptyList(), DocumentReference.BY_KEY);
    private ByteString lastStreamToken = WriteStream.EMPTY_STREAM_TOKEN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MemoryMutationQueue(MemoryPersistence memoryPersistence) {
        this.persistence = memoryPersistence;
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public void start() {
        isEmpty();
    }

    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public void acknowledgeBatch(MutationBatch mutationBatch, ByteString byteString) {
        int batchId = mutationBatch.getBatchId();
        int indexOfExistingBatchId = indexOfExistingBatchId(batchId, "acknowledged");
        Assert.hardAssert(indexOfExistingBatchId == 0, "Can only acknowledge the first batch in the mutation queue", new Object[0]);
        MutationBatch mutationBatch2 = this.queue.get(indexOfExistingBatchId);
        Assert.hardAssert(batchId == mutationBatch2.getBatchId(), "Queue ordering failure: expected batch %d, got batch %d", Integer.valueOf(batchId), Integer.valueOf(mutationBatch2.getBatchId()));
        this.lastStreamToken = (ByteString) Preconditions.checkNotNull(byteString);
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public ByteString getLastStreamToken() {
        return this.lastStreamToken;
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public void setLastStreamToken(ByteString byteString) {
        this.lastStreamToken = (ByteString) Preconditions.checkNotNull(byteString);
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public MutationBatch lookupMutationBatch(int i) {
        int indexOfBatchId = indexOfBatchId(i);
        if (indexOfBatchId < 0 || indexOfBatchId >= this.queue.size()) {
            return null;
        }
        MutationBatch mutationBatch = this.queue.get(indexOfBatchId);
        Assert.hardAssert(mutationBatch.getBatchId() == i, "If found batch must match", new Object[0]);
        return mutationBatch;
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public MutationBatch getNextMutationBatchAfterBatchId(int i) {
        int indexOfBatchId = indexOfBatchId(i + 1);
        if (indexOfBatchId < 0) {
            indexOfBatchId = 0;
        }
        if (this.queue.size() > indexOfBatchId) {
            return this.queue.get(indexOfBatchId);
        }
        return null;
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public List<MutationBatch> getAllMutationBatches() {
        return Collections.unmodifiableList(this.queue);
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public List<MutationBatch> getAllMutationBatchesAffectingDocumentKey(DocumentKey documentKey) {
        DocumentReference documentReference = new DocumentReference(documentKey, 0);
        ArrayList arrayList = new ArrayList();
        Iterator<DocumentReference> iteratorFrom = this.batchesByDocumentKey.iteratorFrom(documentReference);
        while (iteratorFrom.hasNext()) {
            DocumentReference next = iteratorFrom.next();
            if (!documentKey.equals(next.getKey())) {
                break;
            }
            MutationBatch lookupMutationBatch = lookupMutationBatch(next.getId());
            Assert.hardAssert(lookupMutationBatch != null, "Batches in the index must exist in the main table", new Object[0]);
            arrayList.add(lookupMutationBatch);
        }
        return arrayList;
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public List<MutationBatch> getAllMutationBatchesAffectingDocumentKeys(Iterable<DocumentKey> iterable) {
        ImmutableSortedSet<Integer> immutableSortedSet = new ImmutableSortedSet<>(Collections.emptyList(), Util.comparator());
        for (DocumentKey documentKey : iterable) {
            Iterator<DocumentReference> iteratorFrom = this.batchesByDocumentKey.iteratorFrom(new DocumentReference(documentKey, 0));
            while (iteratorFrom.hasNext()) {
                DocumentReference next = iteratorFrom.next();
                if (!documentKey.equals(next.getKey())) {
                    break;
                }
                immutableSortedSet = immutableSortedSet.insert(Integer.valueOf(next.getId()));
            }
        }
        return lookupMutationBatches(immutableSortedSet);
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public List<MutationBatch> getAllMutationBatchesAffectingQuery(Query query) {
        Assert.hardAssert(!query.isCollectionGroupQuery(), "CollectionGroup queries should be handled in LocalDocumentsView", new Object[0]);
        ResourcePath path = query.getPath();
        int length = path.length() + 1;
        DocumentReference documentReference = new DocumentReference(DocumentKey.fromPath(!DocumentKey.isDocumentKey(path) ? path.append("") : path), 0);
        ImmutableSortedSet<Integer> immutableSortedSet = new ImmutableSortedSet<>(Collections.emptyList(), Util.comparator());
        Iterator<DocumentReference> iteratorFrom = this.batchesByDocumentKey.iteratorFrom(documentReference);
        while (iteratorFrom.hasNext()) {
            DocumentReference next = iteratorFrom.next();
            ResourcePath path2 = next.getKey().getPath();
            if (!path.isPrefixOf(path2)) {
                break;
            } else if (path2.length() == length) {
                immutableSortedSet = immutableSortedSet.insert(Integer.valueOf(next.getId()));
            }
        }
        return lookupMutationBatches(immutableSortedSet);
    }

    private List<MutationBatch> lookupMutationBatches(ImmutableSortedSet<Integer> immutableSortedSet) {
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = immutableSortedSet.iterator();
        while (it.hasNext()) {
            MutationBatch lookupMutationBatch = lookupMutationBatch(it.next().intValue());
            if (lookupMutationBatch != null) {
                arrayList.add(lookupMutationBatch);
            }
        }
        return arrayList;
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public void removeMutationBatch(MutationBatch mutationBatch) {
        Assert.hardAssert(indexOfExistingBatchId(mutationBatch.getBatchId(), "removed") == 0, "Can only remove the first entry of the mutation queue", new Object[0]);
        this.queue.remove(0);
        ImmutableSortedSet<DocumentReference> immutableSortedSet = this.batchesByDocumentKey;
        for (Mutation mutation : mutationBatch.getMutations()) {
            DocumentKey key = mutation.getKey();
            this.persistence.getReferenceDelegate().removeMutationReference(key);
            immutableSortedSet = immutableSortedSet.remove(new DocumentReference(key, mutationBatch.getBatchId()));
        }
        this.batchesByDocumentKey = immutableSortedSet;
    }

    @Override // com.google.firebase.firestore.local.MutationQueue
    public void performConsistencyCheck() {
        if (this.queue.isEmpty()) {
            Assert.hardAssert(this.batchesByDocumentKey.isEmpty(), "Document leak -- detected dangling mutation references when queue is empty.", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean containsKey(DocumentKey documentKey) {
        Iterator<DocumentReference> iteratorFrom = this.batchesByDocumentKey.iteratorFrom(new DocumentReference(documentKey, 0));
        if (iteratorFrom.hasNext()) {
            return iteratorFrom.next().getKey().equals(documentKey);
        }
        return false;
    }

    private int indexOfBatchId(int i) {
        if (this.queue.isEmpty()) {
            return 0;
        }
        return i - this.queue.get(0).getBatchId();
    }

    private int indexOfExistingBatchId(int i, String str) {
        int indexOfBatchId = indexOfBatchId(i);
        Assert.hardAssert(indexOfBatchId >= 0 && indexOfBatchId < this.queue.size(), "Batches must exist to be %s", str);
        return indexOfBatchId;
    }
}
