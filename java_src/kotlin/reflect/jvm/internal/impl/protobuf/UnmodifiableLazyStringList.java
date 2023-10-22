package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* loaded from: classes4.dex */
public class UnmodifiableLazyStringList extends AbstractList<String> implements RandomAccess, LazyStringList {
    private final LazyStringList list;

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public LazyStringList getUnmodifiableView() {
        return this;
    }

    public UnmodifiableLazyStringList(LazyStringList lazyStringList) {
        this.list = lazyStringList;
    }

    @Override // java.util.AbstractList, java.util.List
    public String get(int i) {
        return this.list.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public ByteString getByteString(int i) {
        return this.list.getByteString(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public void add(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.UnmodifiableLazyStringList$1 */
    /* loaded from: classes4.dex */
    class C34241 implements ListIterator<String>, Iterator {
        ListIterator<String> iter;
        final /* synthetic */ int val$index;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        C34241(int i) {
            this.val$index = i;
            this.iter = UnmodifiableLazyStringList.this.list.listIterator(i);
        }

        @Override // java.util.ListIterator, java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.ListIterator, java.util.Iterator, p033j$.util.Iterator
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

        @Override // java.util.ListIterator, java.util.Iterator, p033j$.util.Iterator
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
        return new C34241(i);
    }

    /* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.UnmodifiableLazyStringList$2 */
    /* loaded from: classes4.dex */
    class C34252 implements java.util.Iterator<String>, Iterator {
        java.util.Iterator<String> iter;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        C34252() {
            this.iter = UnmodifiableLazyStringList.this.list.iterator();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.iter.hasNext();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public String next() {
            return this.iter.next();
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public java.util.Iterator<String> iterator() {
        return new C34252();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.LazyStringList
    public List<?> getUnderlyingElements() {
        return this.list.getUnderlyingElements();
    }
}
