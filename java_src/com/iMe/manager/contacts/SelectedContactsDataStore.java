package com.iMe.manager.contacts;

import androidx.collection.LongSparseArray;
import java.util.List;
import kotlin.collections.LongIterator;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
/* compiled from: SelectedContactsDataStore.kt */
/* loaded from: classes3.dex */
public final class SelectedContactsDataStore {
    private final LongSparseArray<Void> selectedContactsId = new LongSparseArray<>();

    public final LongSparseArray<Void> getSelectedContactsId() {
        return this.selectedContactsId;
    }

    public final synchronized int size() {
        return this.selectedContactsId.size();
    }

    public final synchronized boolean addSelectedContactId(long j) {
        if (this.selectedContactsId.containsKey(j)) {
            return false;
        }
        this.selectedContactsId.put(j, null);
        return true;
    }

    public final synchronized boolean removeSelectedContactId(long j) {
        if (this.selectedContactsId.containsKey(j)) {
            this.selectedContactsId.remove(j);
            return true;
        }
        return false;
    }

    public final synchronized int indexOfSelectedId(long j) {
        return this.selectedContactsId.indexOfKey(j);
    }

    public final synchronized List<Long> getSelectedIdsAsList() {
        Sequence asSequence;
        List<Long> list;
        asSequence = SequencesKt__SequencesKt.asSequence(new LongIterator() { // from class: com.iMe.manager.contacts.SelectedContactsDataStore$getSelectedIdsAsList$1
            private int index;

            @Override // java.util.Iterator, p033j$.util.Iterator
            public boolean hasNext() {
                return this.index < SelectedContactsDataStore.this.getSelectedContactsId().size();
            }

            @Override // kotlin.collections.LongIterator
            public long nextLong() {
                LongSparseArray<Void> selectedContactsId = SelectedContactsDataStore.this.getSelectedContactsId();
                int i = this.index;
                this.index = i + 1;
                return selectedContactsId.keyAt(i);
            }
        });
        list = SequencesKt___SequencesKt.toList(asSequence);
        return list;
    }

    public final synchronized void clear() {
        this.selectedContactsId.clear();
    }
}
