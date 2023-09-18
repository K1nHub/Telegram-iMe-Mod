package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.Timestamp;
import com.google.firebase.database.collection.ImmutableSortedMap;
import com.google.firebase.firestore.core.Query;
import com.google.firebase.firestore.local.SQLitePersistence;
import com.google.firebase.firestore.model.DocumentCollections;
import com.google.firebase.firestore.model.DocumentKey;
import com.google.firebase.firestore.model.MutableDocument;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.model.SnapshotVersion;
import com.google.firebase.firestore.proto.MaybeDocument;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.BackgroundQueue;
import com.google.firebase.firestore.util.Consumer;
import com.google.firebase.firestore.util.Executors;
import com.google.firebase.firestore.util.Function;
import com.google.protobuf.InvalidProtocolBufferException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class SQLiteRemoteDocumentCache implements RemoteDocumentCache {

    /* renamed from: db */
    private final SQLitePersistence f262db;
    private final LocalSerializer serializer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteRemoteDocumentCache(SQLitePersistence sQLitePersistence, LocalSerializer localSerializer) {
        this.f262db = sQLitePersistence;
        this.serializer = localSerializer;
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public void add(MutableDocument mutableDocument, SnapshotVersion snapshotVersion) {
        Assert.hardAssert(!snapshotVersion.equals(SnapshotVersion.NONE), "Cannot add document to the RemoteDocumentCache with a read time of zero", new Object[0]);
        String pathForKey = pathForKey(mutableDocument.getKey());
        Timestamp timestamp = snapshotVersion.getTimestamp();
        this.f262db.execute("INSERT OR REPLACE INTO remote_documents (path, read_time_seconds, read_time_nanos, contents) VALUES (?, ?, ?, ?)", pathForKey, Long.valueOf(timestamp.getSeconds()), Integer.valueOf(timestamp.getNanoseconds()), this.serializer.encodeMaybeDocument(mutableDocument).toByteArray());
        this.f262db.getIndexManager().addToCollectionParentIndex(mutableDocument.getKey().getPath().popLast());
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public void remove(DocumentKey documentKey) {
        this.f262db.execute("DELETE FROM remote_documents WHERE path = ?", pathForKey(documentKey));
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public MutableDocument get(DocumentKey documentKey) {
        MutableDocument mutableDocument = (MutableDocument) this.f262db.query("SELECT contents FROM remote_documents WHERE path = ?").binding(pathForKey(documentKey)).firstValue(new Function() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda2
            @Override // com.google.firebase.firestore.util.Function
            public final Object apply(Object obj) {
                MutableDocument lambda$get$0;
                lambda$get$0 = SQLiteRemoteDocumentCache.this.lambda$get$0((Cursor) obj);
                return lambda$get$0;
            }
        });
        return mutableDocument != null ? mutableDocument : MutableDocument.newInvalidDocument(documentKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ MutableDocument lambda$get$0(Cursor cursor) {
        return decodeMaybeDocument(cursor.getBlob(0));
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public Map<DocumentKey, MutableDocument> getAll(Iterable<DocumentKey> iterable) {
        ArrayList arrayList = new ArrayList();
        for (DocumentKey documentKey : iterable) {
            arrayList.add(EncodedPath.encode(documentKey.getPath()));
        }
        final HashMap hashMap = new HashMap();
        for (DocumentKey documentKey2 : iterable) {
            hashMap.put(documentKey2, MutableDocument.newInvalidDocument(documentKey2));
        }
        SQLitePersistence.LongQuery longQuery = new SQLitePersistence.LongQuery(this.f262db, "SELECT contents FROM remote_documents WHERE path IN (", arrayList, ") ORDER BY path");
        while (longQuery.hasMoreSubqueries()) {
            longQuery.performNextSubquery().forEach(new Consumer() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1
                @Override // com.google.firebase.firestore.util.Consumer
                public final void accept(Object obj) {
                    SQLiteRemoteDocumentCache.this.lambda$getAll$1(hashMap, (Cursor) obj);
                }
            });
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAll$1(Map map, Cursor cursor) {
        MutableDocument decodeMaybeDocument = decodeMaybeDocument(cursor.getBlob(0));
        map.put(decodeMaybeDocument.getKey(), decodeMaybeDocument);
    }

    @Override // com.google.firebase.firestore.local.RemoteDocumentCache
    public ImmutableSortedMap<DocumentKey, MutableDocument> getAllDocumentsMatchingQuery(final Query query, SnapshotVersion snapshotVersion) {
        SQLitePersistence.Query binding;
        Assert.hardAssert(!query.isCollectionGroupQuery(), "CollectionGroup queries should be handled in LocalDocumentsView", new Object[0]);
        ResourcePath path = query.getPath();
        final int length = path.length() + 1;
        String encode = EncodedPath.encode(path);
        String prefixSuccessor = EncodedPath.prefixSuccessor(encode);
        Timestamp timestamp = snapshotVersion.getTimestamp();
        final BackgroundQueue backgroundQueue = new BackgroundQueue();
        final ImmutableSortedMap<DocumentKey, MutableDocument>[] immutableSortedMapArr = {DocumentCollections.emptyMutableDocumentMap()};
        if (snapshotVersion.equals(SnapshotVersion.NONE)) {
            binding = this.f262db.query("SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?").binding(encode, prefixSuccessor);
        } else {
            binding = this.f262db.query("SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?AND (read_time_seconds > ? OR (read_time_seconds = ? AND read_time_nanos > ?))").binding(encode, prefixSuccessor, Long.valueOf(timestamp.getSeconds()), Long.valueOf(timestamp.getSeconds()), Integer.valueOf(timestamp.getNanoseconds()));
        }
        binding.forEach(new Consumer() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0
            @Override // com.google.firebase.firestore.util.Consumer
            public final void accept(Object obj) {
                SQLiteRemoteDocumentCache.this.lambda$getAllDocumentsMatchingQuery$3(length, backgroundQueue, query, immutableSortedMapArr, (Cursor) obj);
            }
        });
        try {
            backgroundQueue.drain();
        } catch (InterruptedException e) {
            Assert.fail("Interrupted while deserializing documents", e);
        }
        return immutableSortedMapArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.concurrent.Executor] */
    public /* synthetic */ void lambda$getAllDocumentsMatchingQuery$3(int i, BackgroundQueue backgroundQueue, final Query query, final ImmutableSortedMap[] immutableSortedMapArr, Cursor cursor) {
        if (EncodedPath.decodeResourcePath(cursor.getString(0)).length() != i) {
            return;
        }
        final byte[] blob = cursor.getBlob(1);
        BackgroundQueue backgroundQueue2 = backgroundQueue;
        if (cursor.isLast()) {
            backgroundQueue2 = Executors.DIRECT_EXECUTOR;
        }
        backgroundQueue2.execute(new Runnable() { // from class: com.google.firebase.firestore.local.SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                SQLiteRemoteDocumentCache.this.lambda$getAllDocumentsMatchingQuery$2(blob, query, immutableSortedMapArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getAllDocumentsMatchingQuery$2(byte[] bArr, Query query, ImmutableSortedMap[] immutableSortedMapArr) {
        MutableDocument decodeMaybeDocument = decodeMaybeDocument(bArr);
        if (decodeMaybeDocument.isFoundDocument() && query.matches(decodeMaybeDocument)) {
            synchronized (this) {
                immutableSortedMapArr[0] = immutableSortedMapArr[0].insert(decodeMaybeDocument.getKey(), decodeMaybeDocument);
            }
        }
    }

    private String pathForKey(DocumentKey documentKey) {
        return EncodedPath.encode(documentKey.getPath());
    }

    private MutableDocument decodeMaybeDocument(byte[] bArr) {
        try {
            return this.serializer.decodeMaybeDocument(MaybeDocument.parseFrom(bArr));
        } catch (InvalidProtocolBufferException e) {
            throw Assert.fail("MaybeDocument failed to parse: %s", e);
        }
    }
}
