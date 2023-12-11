package kotlin;

import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import p033j$.util.Iterator;
import p033j$.util.function.Consumer;
/* compiled from: UIntArray.kt */
/* loaded from: classes4.dex */
public final class UIntArray implements Collection<UInt>, KMappedMarker {
    private final int[] storage;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UIntArray m1979boximpl(int[] iArr) {
        return new UIntArray(iArr);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m1981constructorimpl(int[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1984equalsimpl(int[] iArr, Object obj) {
        return (obj instanceof UIntArray) && Intrinsics.areEqual(iArr, ((UIntArray) obj).m1993unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1987hashCodeimpl(int[] iArr) {
        return Arrays.hashCode(iArr);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1991toStringimpl(int[] iArr) {
        return "UIntArray(storage=" + Arrays.toString(iArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(UInt uInt) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UInt> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m1984equalsimpl(this.storage, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m1987hashCodeimpl(this.storage);
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
        return m1991toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int[] m1993unboximpl() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UInt) {
            return m1992containsWZ4Q5Ns(((UInt) obj).m1978unboximpl());
        }
        return false;
    }

    private /* synthetic */ UIntArray(int[] iArr) {
        this.storage = iArr;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int[] m1980constructorimpl(int i) {
        return m1981constructorimpl(new int[i]);
    }

    /* renamed from: get-pVg5ArA  reason: not valid java name */
    public static final int m1985getpVg5ArA(int[] iArr, int i) {
        return UInt.m1974constructorimpl(iArr[i]);
    }

    /* renamed from: set-VXSXFK8  reason: not valid java name */
    public static final void m1990setVXSXFK8(int[] iArr, int i, int i2) {
        iArr[i] = i2;
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m1986getSizeimpl(int[] iArr) {
        return iArr.length;
    }

    @Override // java.util.Collection
    /* renamed from: getSize */
    public int size() {
        return m1986getSizeimpl(this.storage);
    }

    /* renamed from: iterator-impl  reason: not valid java name */
    public static java.util.Iterator<UInt> m1989iteratorimpl(int[] iArr) {
        return new Iterator(iArr);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Iterator<UInt> iterator() {
        return m1989iteratorimpl(this.storage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UIntArray.kt */
    /* loaded from: classes4.dex */
    public static final class Iterator implements java.util.Iterator<UInt>, KMappedMarker, p033j$.util.Iterator {
        private final int[] array;
        private int index;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public Iterator(int[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.array = array;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return UInt.m1973boximpl(m1994nextpVg5ArA());
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        /* renamed from: next-pVg5ArA  reason: not valid java name */
        public int m1994nextpVg5ArA() {
            int i = this.index;
            int[] iArr = this.array;
            if (i < iArr.length) {
                this.index = i + 1;
                return UInt.m1974constructorimpl(iArr[i]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
    public boolean m1992containsWZ4Q5Ns(int i) {
        return m1982containsWZ4Q5Ns(this.storage, i);
    }

    /* renamed from: contains-WZ4Q5Ns  reason: not valid java name */
    public static boolean m1982containsWZ4Q5Ns(int[] iArr, int i) {
        boolean contains;
        contains = ArraysKt___ArraysKt.contains(iArr, i);
        return contains;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return m1983containsAllimpl(this.storage, elements);
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static boolean m1988isEmptyimpl(int[] iArr) {
        return iArr.length == 0;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m1988isEmptyimpl(this.storage);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032 A[SYNTHETIC] */
    /* renamed from: containsAll-impl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1983containsAllimpl(int[] r4, java.util.Collection<kotlin.UInt> r5) {
        /*
            java.lang.String r0 = "elements"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            boolean r0 = r5.isEmpty()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto Lf
        Ld:
            r1 = r2
            goto L32
        Lf:
            java.util.Iterator r5 = r5.iterator()
        L13:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto Ld
            java.lang.Object r0 = r5.next()
            boolean r3 = r0 instanceof kotlin.UInt
            if (r3 == 0) goto L2f
            kotlin.UInt r0 = (kotlin.UInt) r0
            int r0 = r0.m1978unboximpl()
            boolean r0 = kotlin.collections.ArraysKt.contains(r4, r0)
            if (r0 == 0) goto L2f
            r0 = r2
            goto L30
        L2f:
            r0 = r1
        L30:
            if (r0 != 0) goto L13
        L32:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UIntArray.m1983containsAllimpl(int[], java.util.Collection):boolean");
    }
}
