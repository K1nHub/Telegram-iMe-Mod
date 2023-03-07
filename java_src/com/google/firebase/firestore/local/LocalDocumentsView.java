package com.google.firebase.firestore.local;

import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.firestore.core.Query;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.model.DocumentCollections;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.model.mutation.Mutation;
import com.google.firebase.firestore.model.mutation.MutationBatch;
import com.google.firebase.firestore.model.mutation.PatchMutation;
import com.google.firebase.firestore.util.Assert;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class LocalDocumentsView {
    private final IndexManager indexManager;
    private final MutationQueue mutationQueue;
    private final RemoteDocumentCache remoteDocumentCache;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalDocumentsView(RemoteDocumentCache remoteDocumentCache, MutationQueue mutationQueue, IndexManager indexManager) {
        this.remoteDocumentCache = remoteDocumentCache;
        this.mutationQueue = mutationQueue;
        this.indexManager = indexManager;
    }

    Document getDocument(DocumentKey documentKey) {
        return getDocument(documentKey, this.mutationQueue.getAllMutationBatchesAffectingDocumentKey(documentKey));
    }

    private Document getDocument(DocumentKey documentKey, List<MutationBatch> list) {
        MutableDocument mutableDocument = this.remoteDocumentCache.get(documentKey);
        for (MutationBatch mutationBatch : list) {
            mutationBatch.applyToLocalView(mutableDocument);
        }
        return mutableDocument;
    }

    private void applyLocalMutationsToDocuments(Map<DocumentKey, MutableDocument> map, List<MutationBatch> list) {
        for (Map.Entry<DocumentKey, MutableDocument> entry : map.entrySet()) {
            for (MutationBatch mutationBatch : list) {
                mutationBatch.applyToLocalView(entry.getValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedMap<DocumentKey, Document> getDocuments(Iterable<DocumentKey> iterable) {
        return getLocalViewOfDocuments(this.remoteDocumentCache.getAll(iterable));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedMap<DocumentKey, Document> getLocalViewOfDocuments(Map<DocumentKey, MutableDocument> map) {
        ImmutableSortedMap<DocumentKey, Document> emptyDocumentMap = DocumentCollections.emptyDocumentMap();
        applyLocalMutationsToDocuments(map, this.mutationQueue.getAllMutationBatchesAffectingDocumentKeys(map.keySet()));
        for (Map.Entry<DocumentKey, MutableDocument> entry : map.entrySet()) {
            emptyDocumentMap = emptyDocumentMap.insert(entry.getKey(), entry.getValue());
        }
        return emptyDocumentMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableSortedMap<DocumentKey, Document> getDocumentsMatchingQuery(Query query, SnapshotVersion snapshotVersion) {
        ResourcePath path = query.getPath();
        if (query.isDocumentQuery()) {
            return getDocumentsMatchingDocumentQuery(path);
        }
        if (query.isCollectionGroupQuery()) {
            return getDocumentsMatchingCollectionGroupQuery(query, snapshotVersion);
        }
        return getDocumentsMatchingCollectionQuery(query, snapshotVersion);
    }

    private ImmutableSortedMap<DocumentKey, Document> getDocumentsMatchingDocumentQuery(ResourcePath resourcePath) {
        ImmutableSortedMap<DocumentKey, Document> emptyDocumentMap = DocumentCollections.emptyDocumentMap();
        Document document = getDocument(DocumentKey.fromPath(resourcePath));
        return document.isFoundDocument() ? emptyDocumentMap.insert(document.getKey(), document) : emptyDocumentMap;
    }

    private ImmutableSortedMap<DocumentKey, Document> getDocumentsMatchingCollectionGroupQuery(Query query, SnapshotVersion snapshotVersion) {
        Assert.hardAssert(query.getPath().isEmpty(), "Currently we only support collection group queries at the root.", new Object[0]);
        String collectionGroup = query.getCollectionGroup();
        ImmutableSortedMap<DocumentKey, Document> emptyDocumentMap = DocumentCollections.emptyDocumentMap();
        for (ResourcePath resourcePath : this.indexManager.getCollectionParents(collectionGroup)) {
            Iterator<Map.Entry<DocumentKey, Document>> it = getDocumentsMatchingCollectionQuery(query.asCollectionQueryAtPath(resourcePath.append(collectionGroup)), snapshotVersion).iterator();
            while (it.hasNext()) {
                Map.Entry<DocumentKey, Document> next = it.next();
                emptyDocumentMap = emptyDocumentMap.insert(next.getKey(), next.getValue());
            }
        }
        return emptyDocumentMap;
    }

    private ImmutableSortedMap<DocumentKey, Document> getDocumentsMatchingCollectionQuery(Query query, SnapshotVersion snapshotVersion) {
        ImmutableSortedMap<DocumentKey, MutableDocument> allDocumentsMatchingQuery = this.remoteDocumentCache.getAllDocumentsMatchingQuery(query, snapshotVersion);
        List<MutationBatch> allMutationBatchesAffectingQuery = this.mutationQueue.getAllMutationBatchesAffectingQuery(query);
        ImmutableSortedMap<DocumentKey, MutableDocument> addMissingBaseDocuments = addMissingBaseDocuments(allMutationBatchesAffectingQuery, allDocumentsMatchingQuery);
        for (MutationBatch mutationBatch : allMutationBatchesAffectingQuery) {
            for (Mutation mutation : mutationBatch.getMutations()) {
                if (query.getPath().isImmediateParentOf(mutation.getKey().getPath())) {
                    DocumentKey key = mutation.getKey();
                    MutableDocument mutableDocument = addMissingBaseDocuments.get(key);
                    if (mutableDocument == null) {
                        mutableDocument = MutableDocument.newInvalidDocument(key);
                        addMissingBaseDocuments = addMissingBaseDocuments.insert(key, mutableDocument);
                    }
                    mutation.applyToLocalView(mutableDocument, mutationBatch.getLocalWriteTime());
                    if (!mutableDocument.isFoundDocument()) {
                        addMissingBaseDocuments = addMissingBaseDocuments.remove(key);
                    }
                }
            }
        }
        ImmutableSortedMap<DocumentKey, Document> emptyDocumentMap = DocumentCollections.emptyDocumentMap();
        Iterator<Map.Entry<DocumentKey, MutableDocument>> it = addMissingBaseDocuments.iterator();
        while (it.hasNext()) {
            Map.Entry<DocumentKey, MutableDocument> next = it.next();
            if (query.matches(next.getValue())) {
                emptyDocumentMap = emptyDocumentMap.insert(next.getKey(), next.getValue());
            }
        }
        return emptyDocumentMap;
    }

    private ImmutableSortedMap<DocumentKey, MutableDocument> addMissingBaseDocuments(List<MutationBatch> list, ImmutableSortedMap<DocumentKey, MutableDocument> immutableSortedMap) {
        HashSet hashSet = new HashSet();
        for (MutationBatch mutationBatch : list) {
            for (Mutation mutation : mutationBatch.getMutations()) {
                if ((mutation instanceof PatchMutation) && !immutableSortedMap.containsKey(mutation.getKey())) {
                    hashSet.add(mutation.getKey());
                }
            }
        }
        for (Map.Entry<DocumentKey, MutableDocument> entry : this.remoteDocumentCache.getAll(hashSet).entrySet()) {
            if (entry.getValue().isFoundDocument()) {
                immutableSortedMap = immutableSortedMap.insert(entry.getKey(), entry.getValue());
            }
        }
        return immutableSortedMap;
    }
}
