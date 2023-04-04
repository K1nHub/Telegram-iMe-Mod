package com.google.protobuf;

import java.util.AbstractList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p035j$.util.Iterator;
import p035j$.util.function.Consumer;
/* loaded from: classes3.dex */
public class UnmodifiableLazyStringList extends AbstractList<String> implements LazyStringList, RandomAccess {
    private final LazyStringList list;

    @Override // com.google.protobuf.LazyStringList
    public LazyStringList getUnmodifiableView() {
        return this;
    }

    public UnmodifiableLazyStringList(LazyStringList lazyStringList) {
        this.list = lazyStringList;
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        return (String) this.list.get(i);
    }

    @Override // com.google.protobuf.LazyStringList
    public Object getRaw(int i) {
        return this.list.getRaw(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }

    @Override // com.google.protobuf.LazyStringList
    public void add(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: com.google.protobuf.UnmodifiableLazyStringList$1 */
    /* loaded from: classes3.dex */
    class C12201 implements ListIterator<String>, Iterator {
        ListIterator<String> iter;
        final /* synthetic */ int val$index;

        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        C12201(int i) {
            this.val$index = i;
            this.iter = UnmodifiableLazyStringList.this.list.listIterator(i);
        }

        @Override // java.util.ListIterator, java.util.Iterator, p035j$.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator, p035j$.util.Iterator
        public String next() {
            return this.iter.next();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.iter.hasPrevious();
        }

        @Override // java.util.ListIterator
        public String previous() {
            return this.iter.previous();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.iter.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.iter.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator, p035j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void add(String str) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new C12201(i);
    }

    /* renamed from: com.google.protobuf.UnmodifiableLazyStringList$2 */
    /* loaded from: classes3.dex */
    class C12212 implements java.util.Iterator<String>, Iterator {
        java.util.Iterator<String> iter;

        @Override // p035j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        C12212() {
            this.iter = UnmodifiableLazyStringList.this.list.iterator();
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public String next() {
            return this.iter.next();
        }

        @Override // java.util.Iterator, p035j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public java.util.Iterator<String> iterator() {
        return new C12212();
    }

    @Override // com.google.protobuf.LazyStringList
    public List<?> getUnderlyingElements() {
        return this.list.getUnderlyingElements();
    }
}
