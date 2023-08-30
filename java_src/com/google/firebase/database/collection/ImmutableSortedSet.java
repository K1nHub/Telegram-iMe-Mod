package com.google.firebase.database.collection;

import com.google.firebase.database.collection.ImmutableSortedMap;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* loaded from: classes3.dex */
public class ImmutableSortedSet<T> implements Iterable<T> {
    private final ImmutableSortedMap<T, Void> map;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class WrappedEntryIterator<T> implements Iterator<T>, p033j$.util.Iterator {
        final Iterator<Map.Entry<T, Void>> iterator;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        public WrappedEntryIterator(java.util.Iterator<Map.Entry<T, Void>> it) {
            this.iterator = it;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public T next() {
            return this.iterator.next().getKey();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public void remove() {
            this.iterator.remove();
        }
    }

    public ImmutableSortedSet(List<T> list, Comparator<T> comparator) {
        this.map = ImmutableSortedMap.Builder.buildFrom(list, Collections.emptyMap(), ImmutableSortedMap.Builder.identityTranslator(), comparator);
    }

    private ImmutableSortedSet(ImmutableSortedMap<T, Void> immutableSortedMap) {
        this.map = immutableSortedMap;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ImmutableSortedSet) {
            return this.map.equals(((ImmutableSortedSet) obj).map);
        }
        return false;
    }

    public int hashCode() {
        return this.map.hashCode();
    }

    public boolean contains(T t) {
        return this.map.containsKey(t);
    }

    public ImmutableSortedSet<T> remove(T t) {
        ImmutableSortedMap<T, Void> remove = this.map.remove(t);
        return remove == this.map ? this : new ImmutableSortedSet<>(remove);
    }

    public ImmutableSortedSet<T> insert(T t) {
        return new ImmutableSortedSet<>(this.map.insert(t, null));
    }

    public ImmutableSortedSet<T> unionWith(ImmutableSortedSet<T> immutableSortedSet) {
        ImmutableSortedSet<T> immutableSortedSet2;
        if (size() < immutableSortedSet.size()) {
            immutableSortedSet2 = immutableSortedSet;
            immutableSortedSet = this;
        } else {
            immutableSortedSet2 = this;
        }
        java.util.Iterator<T> it = immutableSortedSet.iterator();
        while (it.hasNext()) {
            immutableSortedSet2 = immutableSortedSet2.insert(it.next());
        }
        return immutableSortedSet2;
    }

    public T getMinEntry() {
        return this.map.getMinKey();
    }

    public T getMaxEntry() {
        return this.map.getMaxKey();
    }

    public int size() {
        return this.map.size();
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<T> iterator() {
        return new WrappedEntryIterator(this.map.iterator());
    }

    public java.util.Iterator<T> iteratorFrom(T t) {
        return new WrappedEntryIterator(this.map.iteratorFrom(t));
    }
}
