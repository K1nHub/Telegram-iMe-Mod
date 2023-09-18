package com.google.firebase.firestore.local;

import android.util.SparseArray;
import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.database.collection.ImmutableSortedSet;
import com.google.firebase.firestore.auth.User;
import com.google.firebase.firestore.core.Query;
import com.google.firebase.firestore.core.Target;
import com.google.firebase.firestore.core.TargetIdGenerator;
import com.google.firebase.firestore.local.IndexBackfiller;
import com.google.firebase.firestore.local.LruGarbageCollector;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.model.mutation.Mutation;
import com.google.firebase.firestore.model.mutation.MutationBatch;
import com.google.firebase.firestore.model.mutation.MutationBatchResult;
import com.google.firebase.firestore.remote.RemoteEvent;
import com.google.firebase.firestore.remote.TargetChange;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Logger;
import com.google.firebase.firestore.util.Supplier;
import com.google.protobuf.ByteString;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes4.dex */
public final class LocalStore {
    private static final long RESUME_TOKEN_MAX_AGE_SECONDS = TimeUnit.MINUTES.toSeconds(5);
    private final IndexManager indexManager;
    private LocalDocumentsView localDocuments;
    private final ReferenceSet localViewReferences;
    private MutationQueue mutationQueue;
    private final Persistence persistence;
    private final SparseArray<TargetData> queryDataByTarget;
    private QueryEngine queryEngine;
    private final RemoteDocumentCache remoteDocuments;
    private final TargetCache targetCache;
    private final Map<Target, Integer> targetIdByTarget;
    private final TargetIdGenerator targetIdGenerator;

    public LocalStore(Persistence persistence, QueryEngine queryEngine, User user) {
        Assert.hardAssert(persistence.isStarted(), "LocalStore was passed an unstarted persistence implementation", new Object[0]);
        this.persistence = persistence;
        TargetCache targetCache = persistence.getTargetCache();
        this.targetCache = targetCache;
        persistence.getBundleCache();
        this.targetIdGenerator = TargetIdGenerator.forTargetCache(targetCache.getHighestTargetId());
        this.mutationQueue = persistence.getMutationQueue(user);
        RemoteDocumentCache remoteDocumentCache = persistence.getRemoteDocumentCache();
        this.remoteDocuments = remoteDocumentCache;
        IndexManager indexManager = persistence.getIndexManager();
        this.indexManager = indexManager;
        LocalDocumentsView localDocumentsView = new LocalDocumentsView(remoteDocumentCache, this.mutationQueue, indexManager);
        this.localDocuments = localDocumentsView;
        this.queryEngine = queryEngine;
        queryEngine.setLocalDocumentsView(localDocumentsView);
        ReferenceSet referenceSet = new ReferenceSet();
        this.localViewReferences = referenceSet;
        persistence.getReferenceDelegate().setInMemoryPins(referenceSet);
        this.queryDataByTarget = new SparseArray<>();
        this.targetIdByTarget = new HashMap();
    }

    public void start() {
        startMutationQueue();
    }

    private void startMutationQueue() {
        this.persistence.runTransaction("Start MutationQueue", new Runnable() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                LocalStore.this.lambda$startMutationQueue$0();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMutationQueue$0() {
        this.mutationQueue.start();
    }

    public ImmutableSortedMap<DocumentKey, Document> handleUserChange(User user) {
        List<MutationBatch> allMutationBatches = this.mutationQueue.getAllMutationBatches();
        this.mutationQueue = this.persistence.getMutationQueue(user);
        startMutationQueue();
        List<MutationBatch> allMutationBatches2 = this.mutationQueue.getAllMutationBatches();
        LocalDocumentsView localDocumentsView = new LocalDocumentsView(this.remoteDocuments, this.mutationQueue, this.indexManager);
        this.localDocuments = localDocumentsView;
        this.queryEngine.setLocalDocumentsView(localDocumentsView);
        ImmutableSortedSet<DocumentKey> emptyKeySet = DocumentKey.emptyKeySet();
        for (List<MutationBatch> list : Arrays.asList(allMutationBatches, allMutationBatches2)) {
            for (MutationBatch mutationBatch : list) {
                for (Mutation mutation : mutationBatch.getMutations()) {
                    emptyKeySet = emptyKeySet.insert(mutation.getKey());
                }
            }
        }
        return this.localDocuments.getDocuments(emptyKeySet);
    }

    public ImmutableSortedMap<DocumentKey, Document> acknowledgeBatch(final MutationBatchResult mutationBatchResult) {
        return (ImmutableSortedMap) this.persistence.runTransaction("Acknowledge batch", new Supplier() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda3
            @Override // com.google.firebase.firestore.util.Supplier
            public final Object get() {
                ImmutableSortedMap lambda$acknowledgeBatch$2;
                lambda$acknowledgeBatch$2 = LocalStore.this.lambda$acknowledgeBatch$2(mutationBatchResult);
                return lambda$acknowledgeBatch$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ImmutableSortedMap lambda$acknowledgeBatch$2(MutationBatchResult mutationBatchResult) {
        MutationBatch batch = mutationBatchResult.getBatch();
        this.mutationQueue.acknowledgeBatch(batch, mutationBatchResult.getStreamToken());
        applyWriteToRemoteDocuments(mutationBatchResult);
        this.mutationQueue.performConsistencyCheck();
        return this.localDocuments.getDocuments(batch.getKeys());
    }

    public ImmutableSortedMap<DocumentKey, Document> rejectBatch(final int i) {
        return (ImmutableSortedMap) this.persistence.runTransaction("Reject batch", new Supplier() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda1
            @Override // com.google.firebase.firestore.util.Supplier
            public final Object get() {
                ImmutableSortedMap lambda$rejectBatch$3;
                lambda$rejectBatch$3 = LocalStore.this.lambda$rejectBatch$3(i);
                return lambda$rejectBatch$3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ImmutableSortedMap lambda$rejectBatch$3(int i) {
        MutationBatch lookupMutationBatch = this.mutationQueue.lookupMutationBatch(i);
        Assert.hardAssert(lookupMutationBatch != null, "Attempt to reject nonexistent batch!", new Object[0]);
        this.mutationQueue.removeMutationBatch(lookupMutationBatch);
        this.mutationQueue.performConsistencyCheck();
        return this.localDocuments.getDocuments(lookupMutationBatch.getKeys());
    }

    public ByteString getLastStreamToken() {
        return this.mutationQueue.getLastStreamToken();
    }

    public void setLastStreamToken(final ByteString byteString) {
        this.persistence.runTransaction("Set stream token", new Runnable() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                LocalStore.this.lambda$setLastStreamToken$4(byteString);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setLastStreamToken$4(ByteString byteString) {
        this.mutationQueue.setLastStreamToken(byteString);
    }

    public SnapshotVersion getLastRemoteSnapshotVersion() {
        return this.targetCache.getLastRemoteSnapshotVersion();
    }

    public ImmutableSortedMap<DocumentKey, Document> applyRemoteEvent(final RemoteEvent remoteEvent) {
        final SnapshotVersion snapshotVersion = remoteEvent.getSnapshotVersion();
        return (ImmutableSortedMap) this.persistence.runTransaction("Apply remote event", new Supplier() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda4
            @Override // com.google.firebase.firestore.util.Supplier
            public final Object get() {
                ImmutableSortedMap lambda$applyRemoteEvent$5;
                lambda$applyRemoteEvent$5 = LocalStore.this.lambda$applyRemoteEvent$5(remoteEvent, snapshotVersion);
                return lambda$applyRemoteEvent$5;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ImmutableSortedMap lambda$applyRemoteEvent$5(RemoteEvent remoteEvent, SnapshotVersion snapshotVersion) {
        Map<Integer, TargetChange> targetChanges = remoteEvent.getTargetChanges();
        long currentSequenceNumber = this.persistence.getReferenceDelegate().getCurrentSequenceNumber();
        for (Map.Entry<Integer, TargetChange> entry : targetChanges.entrySet()) {
            int intValue = entry.getKey().intValue();
            TargetChange value = entry.getValue();
            TargetData targetData = this.queryDataByTarget.get(intValue);
            if (targetData != null) {
                this.targetCache.removeMatchingKeys(value.getRemovedDocuments(), intValue);
                this.targetCache.addMatchingKeys(value.getAddedDocuments(), intValue);
                ByteString resumeToken = value.getResumeToken();
                if (!resumeToken.isEmpty()) {
                    TargetData withSequenceNumber = targetData.withResumeToken(resumeToken, remoteEvent.getSnapshotVersion()).withSequenceNumber(currentSequenceNumber);
                    this.queryDataByTarget.put(intValue, withSequenceNumber);
                    if (shouldPersistTargetData(targetData, withSequenceNumber, value)) {
                        this.targetCache.updateTargetData(withSequenceNumber);
                    }
                }
            }
        }
        Map<DocumentKey, MutableDocument> documentUpdates = remoteEvent.getDocumentUpdates();
        Set<DocumentKey> resolvedLimboDocuments = remoteEvent.getResolvedLimboDocuments();
        for (DocumentKey documentKey : documentUpdates.keySet()) {
            if (resolvedLimboDocuments.contains(documentKey)) {
                this.persistence.getReferenceDelegate().updateLimboDocument(documentKey);
            }
        }
        Map<DocumentKey, MutableDocument> populateDocumentChanges = populateDocumentChanges(documentUpdates, null, remoteEvent.getSnapshotVersion());
        SnapshotVersion lastRemoteSnapshotVersion = this.targetCache.getLastRemoteSnapshotVersion();
        if (!snapshotVersion.equals(SnapshotVersion.NONE)) {
            Assert.hardAssert(snapshotVersion.compareTo(lastRemoteSnapshotVersion) >= 0, "Watch stream reverted to previous snapshot?? (%s < %s)", snapshotVersion, lastRemoteSnapshotVersion);
            this.targetCache.setLastRemoteSnapshotVersion(snapshotVersion);
        }
        return this.localDocuments.getLocalViewOfDocuments(populateDocumentChanges);
    }

    private Map<DocumentKey, MutableDocument> populateDocumentChanges(Map<DocumentKey, MutableDocument> map, Map<DocumentKey, SnapshotVersion> map2, SnapshotVersion snapshotVersion) {
        HashMap hashMap = new HashMap();
        Map<DocumentKey, MutableDocument> all = this.remoteDocuments.getAll(map.keySet());
        for (Map.Entry<DocumentKey, MutableDocument> entry : map.entrySet()) {
            DocumentKey key = entry.getKey();
            MutableDocument value = entry.getValue();
            MutableDocument mutableDocument = all.get(key);
            SnapshotVersion snapshotVersion2 = map2 != null ? map2.get(key) : snapshotVersion;
            if (value.isNoDocument() && value.getVersion().equals(SnapshotVersion.NONE)) {
                this.remoteDocuments.remove(value.getKey());
                hashMap.put(key, value);
            } else if (!mutableDocument.isValidDocument() || value.getVersion().compareTo(mutableDocument.getVersion()) > 0 || (value.getVersion().compareTo(mutableDocument.getVersion()) == 0 && mutableDocument.hasPendingWrites())) {
                Assert.hardAssert(!SnapshotVersion.NONE.equals(snapshotVersion2), "Cannot add a document when the remote version is zero", new Object[0]);
                this.remoteDocuments.add(value, snapshotVersion2);
                hashMap.put(key, value);
            } else {
                Logger.debug("LocalStore", "Ignoring outdated watch update for %s.Current version: %s  Watch version: %s", key, mutableDocument.getVersion(), value.getVersion());
            }
        }
        return hashMap;
    }

    private static boolean shouldPersistTargetData(TargetData targetData, TargetData targetData2, TargetChange targetChange) {
        Assert.hardAssert(!targetData2.getResumeToken().isEmpty(), "Attempted to persist query data with empty resume token", new Object[0]);
        return targetData.getResumeToken().isEmpty() || targetData2.getSnapshotVersion().getTimestamp().getSeconds() - targetData.getSnapshotVersion().getTimestamp().getSeconds() >= RESUME_TOKEN_MAX_AGE_SECONDS || (targetChange.getAddedDocuments().size() + targetChange.getModifiedDocuments().size()) + targetChange.getRemovedDocuments().size() > 0;
    }

    public void notifyLocalViewChanges(final List<LocalViewChanges> list) {
        this.persistence.runTransaction("notifyLocalViewChanges", new Runnable() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                LocalStore.this.lambda$notifyLocalViewChanges$6(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyLocalViewChanges$6(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            LocalViewChanges localViewChanges = (LocalViewChanges) it.next();
            int targetId = localViewChanges.getTargetId();
            this.localViewReferences.addReferences(localViewChanges.getAdded(), targetId);
            ImmutableSortedSet<DocumentKey> removed = localViewChanges.getRemoved();
            Iterator<DocumentKey> it2 = removed.iterator();
            while (it2.hasNext()) {
                this.persistence.getReferenceDelegate().removeReference(it2.next());
            }
            this.localViewReferences.removeReferences(removed, targetId);
            if (!localViewChanges.isFromCache()) {
                TargetData targetData = this.queryDataByTarget.get(targetId);
                Assert.hardAssert(targetData != null, "Can't set limbo-free snapshot version for unknown target: %s", Integer.valueOf(targetId));
                this.queryDataByTarget.put(targetId, targetData.withLastLimboFreeSnapshotVersion(targetData.getSnapshotVersion()));
            }
        }
    }

    public MutationBatch getNextMutationBatch(int i) {
        return this.mutationQueue.getNextMutationBatchAfterBatchId(i);
    }

    public TargetData allocateTarget(final Target target) {
        int i;
        TargetData targetData = this.targetCache.getTargetData(target);
        if (targetData != null) {
            i = targetData.getTargetId();
        } else {
            final AllocateQueryHolder allocateQueryHolder = new AllocateQueryHolder();
            this.persistence.runTransaction("Allocate target", new Runnable() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    LocalStore.this.lambda$allocateTarget$7(allocateQueryHolder, target);
                }
            });
            i = allocateQueryHolder.targetId;
            targetData = allocateQueryHolder.cached;
        }
        if (this.queryDataByTarget.get(i) == null) {
            this.queryDataByTarget.put(i, targetData);
            this.targetIdByTarget.put(target, Integer.valueOf(i));
        }
        return targetData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$allocateTarget$7(AllocateQueryHolder allocateQueryHolder, Target target) {
        int nextId = this.targetIdGenerator.nextId();
        allocateQueryHolder.targetId = nextId;
        TargetData targetData = new TargetData(target, nextId, this.persistence.getReferenceDelegate().getCurrentSequenceNumber(), QueryPurpose.LISTEN);
        allocateQueryHolder.cached = targetData;
        this.targetCache.addTargetData(targetData);
    }

    TargetData getTargetData(Target target) {
        Integer num = this.targetIdByTarget.get(target);
        if (num != null) {
            return this.queryDataByTarget.get(num.intValue());
        }
        return this.targetCache.getTargetData(target);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class AllocateQueryHolder {
        TargetData cached;
        int targetId;

        private AllocateQueryHolder() {
        }
    }

    public void releaseTarget(final int i) {
        this.persistence.runTransaction("Release target", new Runnable() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                LocalStore.this.lambda$releaseTarget$14(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$releaseTarget$14(int i) {
        TargetData targetData = this.queryDataByTarget.get(i);
        Assert.hardAssert(targetData != null, "Tried to release nonexistent target: %s", Integer.valueOf(i));
        Iterator<DocumentKey> it = this.localViewReferences.removeReferencesForId(i).iterator();
        while (it.hasNext()) {
            this.persistence.getReferenceDelegate().removeReference(it.next());
        }
        this.persistence.getReferenceDelegate().removeTarget(targetData);
        this.queryDataByTarget.remove(i);
        this.targetIdByTarget.remove(targetData.getTarget());
    }

    public QueryResult executeQuery(Query query, boolean z) {
        ImmutableSortedSet<DocumentKey> immutableSortedSet;
        SnapshotVersion snapshotVersion;
        TargetData targetData = getTargetData(query.toTarget());
        SnapshotVersion snapshotVersion2 = SnapshotVersion.NONE;
        ImmutableSortedSet<DocumentKey> emptyKeySet = DocumentKey.emptyKeySet();
        if (targetData != null) {
            snapshotVersion = targetData.getLastLimboFreeSnapshotVersion();
            immutableSortedSet = this.targetCache.getMatchingKeysForTargetId(targetData.getTargetId());
        } else {
            immutableSortedSet = emptyKeySet;
            snapshotVersion = snapshotVersion2;
        }
        QueryEngine queryEngine = this.queryEngine;
        if (z) {
            snapshotVersion2 = snapshotVersion;
        }
        return new QueryResult(queryEngine.getDocumentsMatchingQuery(query, snapshotVersion2, z ? immutableSortedSet : DocumentKey.emptyKeySet()), immutableSortedSet);
    }

    private void applyWriteToRemoteDocuments(MutationBatchResult mutationBatchResult) {
        MutationBatch batch = mutationBatchResult.getBatch();
        for (DocumentKey documentKey : batch.getKeys()) {
            MutableDocument mutableDocument = this.remoteDocuments.get(documentKey);
            SnapshotVersion snapshotVersion = mutationBatchResult.getDocVersions().get(documentKey);
            Assert.hardAssert(snapshotVersion != null, "docVersions should contain every doc in the write.", new Object[0]);
            if (mutableDocument.getVersion().compareTo(snapshotVersion) < 0) {
                batch.applyToRemoteDocument(mutableDocument, mutationBatchResult);
                if (mutableDocument.isValidDocument()) {
                    this.remoteDocuments.add(mutableDocument, mutationBatchResult.getCommitVersion());
                }
            }
        }
        this.mutationQueue.removeMutationBatch(batch);
    }

    public LruGarbageCollector.Results collectGarbage(final LruGarbageCollector lruGarbageCollector) {
        return (LruGarbageCollector.Results) this.persistence.runTransaction("Collect garbage", new Supplier() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda2
            @Override // com.google.firebase.firestore.util.Supplier
            public final Object get() {
                LruGarbageCollector.Results lambda$collectGarbage$15;
                lambda$collectGarbage$15 = LocalStore.this.lambda$collectGarbage$15(lruGarbageCollector);
                return lambda$collectGarbage$15;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ LruGarbageCollector.Results lambda$collectGarbage$15(LruGarbageCollector lruGarbageCollector) {
        return lruGarbageCollector.collect(this.queryDataByTarget);
    }

    public IndexBackfiller.Results backfillIndexes(final IndexBackfiller indexBackfiller) {
        return (IndexBackfiller.Results) this.persistence.runTransaction("Backfill Indexes", new Supplier() { // from class: com.google.firebase.firestore.local.LocalStore$$ExternalSyntheticLambda0
            @Override // com.google.firebase.firestore.util.Supplier
            public final Object get() {
                IndexBackfiller.Results backfill;
                backfill = IndexBackfiller.this.backfill();
                return backfill;
            }
        });
    }
}
