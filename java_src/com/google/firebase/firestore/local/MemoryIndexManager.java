package com.google.firebase.firestore.local;

import com.google.firebase.firestore.model.ResourcePath;
import com.google.firebase.firestore.util.Assert;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes3.dex */
class MemoryIndexManager implements IndexManager {
    private final MemoryCollectionParentIndex collectionParentsIndex = new MemoryCollectionParentIndex();

    @Override // com.google.firebase.firestore.local.IndexManager
    public void addToCollectionParentIndex(ResourcePath resourcePath) {
        this.collectionParentsIndex.add(resourcePath);
    }

    @Override // com.google.firebase.firestore.local.IndexManager
    public List<ResourcePath> getCollectionParents(String str) {
        return this.collectionParentsIndex.getEntries(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class MemoryCollectionParentIndex {
        private final HashMap<String, HashSet<ResourcePath>> index = new HashMap<>();

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean add(ResourcePath resourcePath) {
            Assert.hardAssert(resourcePath.length() % 2 == 1, "Expected a collection path.", new Object[0]);
            String lastSegment = resourcePath.getLastSegment();
            ResourcePath popLast = resourcePath.popLast();
            HashSet<ResourcePath> hashSet = this.index.get(lastSegment);
            if (hashSet == null) {
                hashSet = new HashSet<>();
                this.index.put(lastSegment, hashSet);
            }
            return hashSet.add(popLast);
        }

        List<ResourcePath> getEntries(String str) {
            HashSet<ResourcePath> hashSet = this.index.get(str);
            return hashSet != null ? new ArrayList(hashSet) : Collections.emptyList();
        }
    }
}
