package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.local.MemoryIndexManager;
import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.util.Assert;
import com.google.firebase.firestore.util.Consumer;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class SQLiteIndexManager implements IndexManager {
    private final MemoryIndexManager.MemoryCollectionParentIndex collectionParentsCache = new MemoryIndexManager.MemoryCollectionParentIndex();

    /* renamed from: db */
    private final SQLitePersistence f173db;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SQLiteIndexManager(SQLitePersistence sQLitePersistence, LocalSerializer localSerializer) {
        this.f173db = sQLitePersistence;
    }

    @Override // com.google.firebase.firestore.local.IndexManager
    public void addToCollectionParentIndex(ResourcePath resourcePath) {
        Assert.hardAssert(resourcePath.length() % 2 == 1, "Expected a collection path.", new Object[0]);
        if (this.collectionParentsCache.add(resourcePath)) {
            this.f173db.execute("INSERT OR REPLACE INTO collection_parents (collection_id, parent) VALUES (?, ?)", resourcePath.getLastSegment(), EncodedPath.encode(resourcePath.popLast()));
        }
    }

    @Override // com.google.firebase.firestore.local.IndexManager
    public List<ResourcePath> getCollectionParents(String str) {
        final ArrayList arrayList = new ArrayList();
        this.f173db.query("SELECT parent FROM collection_parents WHERE collection_id = ?").binding(str).forEach(new Consumer() { // from class: com.google.firebase.firestore.local.SQLiteIndexManager$$ExternalSyntheticLambda0
            @Override // com.google.firebase.firestore.util.Consumer
            public final void accept(Object obj) {
                SQLiteIndexManager.lambda$getCollectionParents$0(arrayList, (Cursor) obj);
            }
        });
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getCollectionParents$0(ArrayList arrayList, Cursor cursor) {
        arrayList.add(EncodedPath.decodeResourcePath(cursor.getString(0)));
    }
}
