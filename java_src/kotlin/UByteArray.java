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
/* compiled from: UByteArray.kt */
/* loaded from: classes4.dex */
public final class UByteArray implements Collection<UByte>, KMappedMarker {
    private final byte[] storage;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ UByteArray m1958boximpl(byte[] bArr) {
        return new UByteArray(bArr);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte[] m1960constructorimpl(byte[] storage) {
        Intrinsics.checkNotNullParameter(storage, "storage");
        return storage;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1963equalsimpl(byte[] bArr, Object obj) {
        return (obj instanceof UByteArray) && Intrinsics.areEqual(bArr, ((UByteArray) obj).m1972unboximpl());
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1966hashCodeimpl(byte[] bArr) {
        return Arrays.hashCode(bArr);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1970toStringimpl(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ')';
    }

    @Override // java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(UByte uByte) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UByte> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m1963equalsimpl(this.storage, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m1966hashCodeimpl(this.storage);
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
        return m1970toStringimpl(this.storage);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ byte[] m1972unboximpl() {
        return this.storage;
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return m1971contains7apg3OU(((UByte) obj).m1957unboximpl());
        }
        return false;
    }

    private /* synthetic */ UByteArray(byte[] bArr) {
        this.storage = bArr;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static byte[] m1959constructorimpl(int i) {
        return m1960constructorimpl(new byte[i]);
    }

    /* renamed from: get-w2LRezQ  reason: not valid java name */
    public static final byte m1964getw2LRezQ(byte[] bArr, int i) {
        return UByte.m1953constructorimpl(bArr[i]);
    }

    /* renamed from: set-VurrAj0  reason: not valid java name */
    public static final void m1969setVurrAj0(byte[] bArr, int i, byte b) {
        bArr[i] = b;
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static int m1965getSizeimpl(byte[] bArr) {
        return bArr.length;
    }

    @Override // java.util.Collection
    /* renamed from: getSize */
    public int size() {
        return m1965getSizeimpl(this.storage);
    }

    /* renamed from: iterator-impl  reason: not valid java name */
    public static java.util.Iterator<UByte> m1968iteratorimpl(byte[] bArr) {
        return new Iterator(bArr);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public java.util.Iterator<UByte> iterator() {
        return m1968iteratorimpl(this.storage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UByteArray.kt */
    /* loaded from: classes4.dex */
    public static final class Iterator implements java.util.Iterator<UByte>, KMappedMarker, p033j$.util.Iterator {
        private final byte[] array;
        private int index;

        @Override // p033j$.util.Iterator
        public /* synthetic */ void forEachRemaining(Consumer consumer) {
            Iterator.CC.$default$forEachRemaining(this, consumer);
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public Iterator(byte[] array) {
            Intrinsics.checkNotNullParameter(array, "array");
            this.array = array;
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return UByte.m1952boximpl(m1973nextw2LRezQ());
        }

        @Override // java.util.Iterator, p033j$.util.Iterator
        public boolean hasNext() {
            return this.index < this.array.length;
        }

        /* renamed from: next-w2LRezQ  reason: not valid java name */
        public byte m1973nextw2LRezQ() {
            int i = this.index;
            byte[] bArr = this.array;
            if (i < bArr.length) {
                this.index = i + 1;
                return UByte.m1953constructorimpl(bArr[i]);
            }
            throw new NoSuchElementException(String.valueOf(this.index));
        }
    }

    /* renamed from: contains-7apg3OU  reason: not valid java name */
    public boolean m1971contains7apg3OU(byte b) {
        return m1961contains7apg3OU(this.storage, b);
    }

    /* renamed from: contains-7apg3OU  reason: not valid java name */
    public static boolean m1961contains7apg3OU(byte[] bArr, byte b) {
        boolean contains;
        contains = ArraysKt___ArraysKt.contains(bArr, b);
        return contains;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return m1962containsAllimpl(this.storage, elements);
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static boolean m1967isEmptyimpl(byte[] bArr) {
        return bArr.length == 0;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m1967isEmptyimpl(this.storage);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032 A[SYNTHETIC] */
    /* renamed from: containsAll-impl  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m1962containsAllimpl(byte[] r4, java.util.Collection<kotlin.UByte> r5) {
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
            boolean r3 = r0 instanceof kotlin.UByte
            if (r3 == 0) goto L2f
            kotlin.UByte r0 = (kotlin.UByte) r0
            byte r0 = r0.m1957unboximpl()
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UByteArray.m1962containsAllimpl(byte[], java.util.Collection):boolean");
    }
}
