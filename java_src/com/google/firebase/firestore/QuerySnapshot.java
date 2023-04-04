package com.google.firebase.firestore;

import com.google.firebase.firestore.core.ViewSnapshot;
import com.google.firebase.firestore.model.Document;
import com.google.firebase.firestore.util.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* loaded from: classes3.dex */
public class QuerySnapshot implements Iterable<QueryDocumentSnapshot> {
    private final FirebaseFirestore firestore;
    private final SnapshotMetadata metadata;
    private final Query originalQuery;
    private final ViewSnapshot snapshot;

    /* JADX INFO: Access modifiers changed from: package-private */
    public QuerySnapshot(Query query, ViewSnapshot viewSnapshot, FirebaseFirestore firebaseFirestore) {
        this.originalQuery = (Query) Preconditions.checkNotNull(query);
        this.snapshot = (ViewSnapshot) Preconditions.checkNotNull(viewSnapshot);
        this.firestore = (FirebaseFirestore) Preconditions.checkNotNull(firebaseFirestore);
        this.metadata = new SnapshotMetadata(viewSnapshot.hasPendingWrites(), viewSnapshot.isFromCache());
    }

    /* loaded from: classes3.dex */
    private class QuerySnapshotIterator implements Iterator<QueryDocumentSnapshot>, p035j$.util.Iterator {

        /* renamed from: it */
        private final Iterator<Document> f165it;

        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        QuerySnapshotIterator(java.util.Iterator<Document> it) {
            this.f165it = it;
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public boolean hasNext() {
            return this.f165it.hasNext();
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public QueryDocumentSnapshot next() {
            return QuerySnapshot.this.convertDocument(this.f165it.next());
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("QuerySnapshot does not support remove().");
        }
    }

    public SnapshotMetadata getMetadata() {
        return this.metadata;
    }

    public List<DocumentSnapshot> getDocuments() {
        ArrayList arrayList = new ArrayList(this.snapshot.getDocuments().size());
        java.util.Iterator<Document> it = this.snapshot.getDocuments().iterator();
        while (it.hasNext()) {
            arrayList.add(convertDocument(it.next()));
        }
        return arrayList;
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<QueryDocumentSnapshot> iterator() {
        return new QuerySnapshotIterator(this.snapshot.getDocuments().iterator());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public QueryDocumentSnapshot convertDocument(Document document) {
        return QueryDocumentSnapshot.fromDocument(this.firestore, document, this.snapshot.isFromCache(), this.snapshot.getMutatedKeys().contains(document.getKey()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof QuerySnapshot) {
            QuerySnapshot querySnapshot = (QuerySnapshot) obj;
            return this.firestore.equals(querySnapshot.firestore) && this.originalQuery.equals(querySnapshot.originalQuery) && this.snapshot.equals(querySnapshot.snapshot) && this.metadata.equals(querySnapshot.metadata);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.firestore.hashCode() * 31) + this.originalQuery.hashCode()) * 31) + this.snapshot.hashCode()) * 31) + this.metadata.hashCode();
    }
}
