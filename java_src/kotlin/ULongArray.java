package kotlin;

import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: ULongArray.kt */
/* loaded from: classes4.dex */
public final class ULongArray implements Collection<ULong>, KMappedMarker {
    private final long[] storage;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ULongArray m2001boximpl(long[] jArr) {
        return new ULongArray(jArr);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long[] m2003constructorimpl(long[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2006equalsimpl(long[] jArr, Object obj) {
        return (obj instanceof ULongArray) && Intrinsics.areEqual(jArr, ((ULongArray) obj).m2015unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2009hashCodeimpl(long[] jArr) {
        return Arrays.hashCode(jArr);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2013toStringimpl(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(ULong uLong) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ULong> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m2006equalsimpl(this.storage, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m2009hashCodeimpl(this.storage);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    public String toString() {
        return m2013toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ long[] m2015unboximpl() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ULong) {
            return m2014containsVKZWuLQ(((ULong) obj).m2000unboximpl());
        }
        return false;
    }

    private /* synthetic */ ULongArray(long[] jArr) {
        this.storage = jArr;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static long[] m2002constructorimpl(int i) {
        return m2003constructorimpl(new long[i]);
    }

    /* renamed from: get-s-VKNKU  reason: not valid java name */
    public static final long m2007getsVKNKU(long[] jArr, int i) {
        return ULong.m1996constructorimpl(jArr[i]);
    }

    /* renamed from: set-k8EXiF4  reason: not valid java name */
    public static final void m2012setk8EXiF4(long[] jArr, int i, long j) {
        jArr[i] = j;
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m2008getSizeimpl(long[] jArr) {
        return jArr.length;
    }

    @Override // java.util.Collection
    /* renamed from: getSize */
    public int size() {
        return m2008getSizeimpl(this.storage);
    }

    /* renamed from: iterator-impl  reason: not valid java name */
    public static java.util.Iterator<ULong> m2011iteratorimpl(long[] jArr) {
        return new Iterator(jArr);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Iterator<ULong> iterator() {
        return m2011iteratorimpl(this.storage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ULongArray.kt */
    /* loaded from: classes4.dex */
    public static final class Iterator implements java.util.Iterator<ULong>, KMappedMarker, p033j$.util.Iterator {
        private final long[] array;
        private int index;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public Iterator(long[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.array = array;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return ULong.m1995boximpl(m2016nextsVKNKU());
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        /* renamed from: next-s-VKNKU  reason: not valid java name */
        public long m2016nextsVKNKU() {
            int i = this.index;
            long[] jArr = this.array;
            if (i < jArr.length) {
                this.index = i + 1;
                return ULong.m1996constructorimpl(jArr[i]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    /* renamed from: contains-VKZWuLQ  reason: not valid java name */
    public boolean m2014containsVKZWuLQ(long j) {
        return m2004containsVKZWuLQ(this.storage, j);
    }

    /* renamed from: contains-VKZWuLQ  reason: not valid java name */
    public static boolean m2004containsVKZWuLQ(long[] jArr, long j) {
        return ArraysKt.contains(jArr, j);
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return m2005containsAllimpl(this.storage, elements);
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static boolean m2010isEmptyimpl(long[] jArr) {
        return jArr.length == 0;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m2010isEmptyimpl(this.storage);
    }

    /* renamed from: containsAll-impl  reason: not valid java name */
    public static boolean m2005containsAllimpl(long[] jArr, Collection<ULong> elements) {
        boolean z;
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (!elements.isEmpty()) {
            for (Object obj : elements) {
                if ((obj instanceof ULong) && ArraysKt.contains(jArr, ((ULong) obj).m2000unboximpl())) {
                    z = true;
                    continue;
                } else {
                    z = false;
                    continue;
                }
                if (!z) {
                    return false;
                }
            }
        }
        return true;
    }
}
