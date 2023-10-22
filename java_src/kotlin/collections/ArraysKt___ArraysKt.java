package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.StringsKt__AppendableKt;
/* compiled from: _Arrays.kt */
/* loaded from: classes4.dex */
public class ArraysKt___ArraysKt extends ArraysKt___ArraysJvmKt {
    public static <T> boolean contains(T[] tArr, T t) {
        int indexOf;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        indexOf = indexOf(tArr, t);
        return indexOf >= 0;
    }

    public static boolean contains(byte[] bArr, byte b) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return indexOf(bArr, b) >= 0;
    }

    public static boolean contains(short[] sArr, short s) {
        Intrinsics.checkNotNullParameter(sArr, "<this>");
        return indexOf(sArr, s) >= 0;
    }

    public static boolean contains(int[] iArr, int i) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        return indexOf(iArr, i) >= 0;
    }

    public static boolean contains(long[] jArr, long j) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        return indexOf(jArr, j) >= 0;
    }

    public static boolean contains(char[] cArr, char c) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        return indexOf(cArr, c) >= 0;
    }

    public static <T> T first(T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (tArr.length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        return tArr[0];
    }

    public static byte first(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        if (bArr.length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        return bArr[0];
    }

    public static <T> T firstOrNull(T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (tArr.length == 0) {
            return null;
        }
        return tArr[0];
    }

    public static <T> T getOrNull(T[] tArr, int i) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (i >= 0) {
            lastIndex = getLastIndex(tArr);
            if (i <= lastIndex) {
                return tArr[i];
            }
        }
        return null;
    }

    public static Integer getOrNull(int[] iArr, int i) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        if (i < 0 || i > getLastIndex(iArr)) {
            return null;
        }
        return Integer.valueOf(iArr[i]);
    }

    public static <T> int indexOf(T[] tArr, T t) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int i = 0;
        if (t == null) {
            int length = tArr.length;
            while (i < length) {
                if (tArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i < length2) {
            if (Intrinsics.areEqual(t, tArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final int indexOf(byte[] bArr, byte b) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            if (b == bArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOf(short[] sArr, short s) {
        Intrinsics.checkNotNullParameter(sArr, "<this>");
        int length = sArr.length;
        for (int i = 0; i < length; i++) {
            if (s == sArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOf(int[] iArr, int i) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i == iArr[i2]) {
                return i2;
            }
        }
        return -1;
    }

    public static final int indexOf(long[] jArr, long j) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (j == jArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final int indexOf(char[] cArr, char c) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        int length = cArr.length;
        for (int i = 0; i < length; i++) {
            if (c == cArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static <T> T last(T[] tArr) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (tArr.length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        lastIndex = getLastIndex(tArr);
        return tArr[lastIndex];
    }

    public static final int lastIndexOf(int[] iArr, int i) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i2 = length - 1;
                if (i == iArr[length]) {
                    return length;
                }
                if (i2 < 0) {
                    break;
                }
                length = i2;
            }
        }
        return -1;
    }

    public static <T> T single(T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int length = tArr.length;
        if (length != 0) {
            if (length == 1) {
                return tArr[0];
            }
            throw new IllegalArgumentException("Array has more than one element.");
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static char single(char[] cArr) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        int length = cArr.length;
        if (length != 0) {
            if (length == 1) {
                return cArr[0];
            }
            throw new IllegalArgumentException("Array has more than one element.");
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static <T> T singleOrNull(T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static <T> List<T> filterNotNull(T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        return (List) filterNotNullTo(tArr, new ArrayList());
    }

    public static final <C extends Collection<? super T>, T> C filterNotNullTo(T[] tArr, C destination) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        for (T t : tArr) {
            if (t != null) {
                destination.add(t);
            }
        }
        return destination;
    }

    public static byte[] sliceArray(byte[] bArr, IntRange indices) {
        byte[] copyOfRange;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        Intrinsics.checkNotNullParameter(indices, "indices");
        if (indices.isEmpty()) {
            return new byte[0];
        }
        copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(bArr, indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1);
        return copyOfRange;
    }

    public static List<Byte> take(byte[] bArr, int i) {
        List<Byte> listOf;
        List<Byte> list;
        List<Byte> emptyList;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        } else if (i == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (i >= bArr.length) {
            list = toList(bArr);
            return list;
        } else if (i == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Byte.valueOf(bArr[0]));
            return listOf;
        } else {
            ArrayList arrayList = new ArrayList(i);
            int i2 = 0;
            for (byte b : bArr) {
                arrayList.add(Byte.valueOf(b));
                i2++;
                if (i2 == i) {
                    break;
                }
            }
            return arrayList;
        }
    }

    public static List<Byte> reversed(byte[] bArr) {
        List<Byte> emptyList;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        if (bArr.length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<Byte> mutableList = toMutableList(bArr);
        CollectionsKt___CollectionsJvmKt.reverse(mutableList);
        return mutableList;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    public static float[] reversedArray(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        if (fArr.length == 0) {
            return fArr;
        }
        float[] fArr2 = new float[fArr.length];
        int lastIndex = getLastIndex(fArr);
        ?? it = new IntRange(0, lastIndex).iterator();
        while (it.hasNext()) {
            int nextInt = it.nextInt();
            fArr2[lastIndex - nextInt] = fArr[nextInt];
        }
        return fArr2;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    public static boolean[] reversedArray(boolean[] zArr) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        if (zArr.length == 0) {
            return zArr;
        }
        boolean[] zArr2 = new boolean[zArr.length];
        int lastIndex = getLastIndex(zArr);
        ?? it = new IntRange(0, lastIndex).iterator();
        while (it.hasNext()) {
            int nextInt = it.nextInt();
            zArr2[lastIndex - nextInt] = zArr[nextInt];
        }
        return zArr2;
    }

    public static final <T> T[] sortedArrayWith(T[] tArr, Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        Intrinsics.checkNotNullExpressionValue(tArr2, "copyOf(this, size)");
        ArraysKt___ArraysJvmKt.sortWith(tArr2, comparator);
        return tArr2;
    }

    public static <T> List<T> sortedWith(T[] tArr, Comparator<? super T> comparator) {
        List<T> asList;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        asList = ArraysKt___ArraysJvmKt.asList(sortedArrayWith(tArr, comparator));
        return asList;
    }

    public static <T> IntRange getIndices(T[] tArr) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        lastIndex = getLastIndex(tArr);
        return new IntRange(0, lastIndex);
    }

    public static <T> int getLastIndex(T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        return tArr.length - 1;
    }

    public static int getLastIndex(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return bArr.length - 1;
    }

    public static final int getLastIndex(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        return iArr.length - 1;
    }

    public static int getLastIndex(long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        return jArr.length - 1;
    }

    public static final int getLastIndex(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr.length - 1;
    }

    public static final int getLastIndex(boolean[] zArr) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        return zArr.length - 1;
    }

    public static byte[] toByteArray(Byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr2[i] = bArr[i].byteValue();
        }
        return bArr2;
    }

    public static final <T, C extends Collection<? super T>> C toCollection(T[] tArr, C destination) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        for (T t : tArr) {
            destination.add(t);
        }
        return destination;
    }

    public static <T> List<T> toList(T[] tArr) {
        List<T> emptyList;
        List<T> listOf;
        List<T> mutableList;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int length = tArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(tArr[0]);
            return listOf;
        } else {
            mutableList = toMutableList(tArr);
            return mutableList;
        }
    }

    public static List<Byte> toList(byte[] bArr) {
        List<Byte> emptyList;
        List<Byte> listOf;
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        int length = bArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Byte.valueOf(bArr[0]));
            return listOf;
        } else {
            return toMutableList(bArr);
        }
    }

    public static List<Short> toList(short[] sArr) {
        List<Short> emptyList;
        List<Short> listOf;
        Intrinsics.checkNotNullParameter(sArr, "<this>");
        int length = sArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Short.valueOf(sArr[0]));
            return listOf;
        } else {
            return toMutableList(sArr);
        }
    }

    public static List<Integer> toList(int[] iArr) {
        List<Integer> emptyList;
        List<Integer> listOf;
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        int length = iArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(iArr[0]));
            return listOf;
        } else {
            return toMutableList(iArr);
        }
    }

    public static List<Long> toList(long[] jArr) {
        List<Long> emptyList;
        List<Long> listOf;
        List<Long> mutableList;
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        int length = jArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Long.valueOf(jArr[0]));
            return listOf;
        } else {
            mutableList = toMutableList(jArr);
            return mutableList;
        }
    }

    public static List<Float> toList(float[] fArr) {
        List<Float> emptyList;
        List<Float> listOf;
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        int length = fArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Float.valueOf(fArr[0]));
            return listOf;
        } else {
            return toMutableList(fArr);
        }
    }

    public static List<Double> toList(double[] dArr) {
        List<Double> emptyList;
        List<Double> listOf;
        Intrinsics.checkNotNullParameter(dArr, "<this>");
        int length = dArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Double.valueOf(dArr[0]));
            return listOf;
        } else {
            return toMutableList(dArr);
        }
    }

    public static List<Boolean> toList(boolean[] zArr) {
        List<Boolean> emptyList;
        List<Boolean> listOf;
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        int length = zArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Boolean.valueOf(zArr[0]));
            return listOf;
        } else {
            return toMutableList(zArr);
        }
    }

    public static List<Character> toList(char[] cArr) {
        List<Character> emptyList;
        List<Character> listOf;
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        } else if (length == 1) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Character.valueOf(cArr[0]));
            return listOf;
        } else {
            return toMutableList(cArr);
        }
    }

    public static <T> List<T> toMutableList(T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        return new ArrayList(CollectionsKt__CollectionsKt.asCollection(tArr));
    }

    public static final List<Byte> toMutableList(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b : bArr) {
            arrayList.add(Byte.valueOf(b));
        }
        return arrayList;
    }

    public static final List<Short> toMutableList(short[] sArr) {
        Intrinsics.checkNotNullParameter(sArr, "<this>");
        ArrayList arrayList = new ArrayList(sArr.length);
        for (short s : sArr) {
            arrayList.add(Short.valueOf(s));
        }
        return arrayList;
    }

    public static final List<Integer> toMutableList(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    public static List<Long> toMutableList(long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static final List<Float> toMutableList(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    public static final List<Double> toMutableList(double[] dArr) {
        Intrinsics.checkNotNullParameter(dArr, "<this>");
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d : dArr) {
            arrayList.add(Double.valueOf(d));
        }
        return arrayList;
    }

    public static final List<Boolean> toMutableList(boolean[] zArr) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            arrayList.add(Boolean.valueOf(z));
        }
        return arrayList;
    }

    public static final List<Character> toMutableList(char[] cArr) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        ArrayList arrayList = new ArrayList(cArr.length);
        for (char c : cArr) {
            arrayList.add(Character.valueOf(c));
        }
        return arrayList;
    }

    public static <T> Set<T> toSet(T[] tArr) {
        Set<T> emptySet;
        Set<T> of;
        int mapCapacity;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        int length = tArr.length;
        if (length == 0) {
            emptySet = SetsKt__SetsKt.emptySet();
            return emptySet;
        } else if (length == 1) {
            of = SetsKt__SetsJVMKt.setOf(tArr[0]);
            return of;
        } else {
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(tArr.length);
            return (Set) toCollection(tArr, new LinkedHashSet(mapCapacity));
        }
    }

    public static <T, R> List<R> map(T[] tArr, Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        ArrayList arrayList = new ArrayList(tArr.length);
        for (T t : tArr) {
            arrayList.add(transform.invoke(t));
        }
        return arrayList;
    }

    public static <T> Iterable<IndexedValue<T>> withIndex(final T[] tArr) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        return new IndexingIterable(new Function0<Iterator<? extends T>>() { // from class: kotlin.collections.ArraysKt___ArraysKt$withIndex$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Iterator<T> invoke() {
                return ArrayIteratorKt.iterator(tArr);
            }
        });
    }

    public static <T, R> List<Pair<T, R>> zip(T[] tArr, R[] other) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(tArr.length, other.length);
        ArrayList arrayList = new ArrayList(min);
        for (int i = 0; i < min; i++) {
            arrayList.add(TuplesKt.m144to(tArr[i], other[i]));
        }
        return arrayList;
    }

    public static /* synthetic */ Appendable joinTo$default(Object[] objArr, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        return joinTo(objArr, appendable, (i2 & 2) != 0 ? ", " : charSequence, (i2 & 4) != 0 ? "" : charSequence2, (i2 & 8) == 0 ? charSequence3 : "", (i2 & 16) != 0 ? -1 : i, (i2 & 32) != 0 ? "..." : charSequence4, (i2 & 64) != 0 ? null : function1);
    }

    public static final <T, A extends Appendable> A joinTo(T[] tArr, A buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i, CharSequence truncated, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        buffer.append(prefix);
        int i2 = 0;
        for (T t : tArr) {
            i2++;
            if (i2 > 1) {
                buffer.append(separator);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            StringsKt__AppendableKt.appendElement(buffer, t, function1);
        }
        if (i >= 0 && i2 > i) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static /* synthetic */ String joinToString$default(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        String str = (i2 & 2) != 0 ? "" : charSequence2;
        String str2 = (i2 & 4) == 0 ? charSequence3 : "";
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence5 = charSequence4;
        if ((i2 & 32) != 0) {
            function1 = null;
        }
        return joinToString(objArr, charSequence, str, str2, i3, charSequence5, function1);
    }

    public static final <T> String joinToString(T[] tArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i, CharSequence truncated, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        String sb = ((StringBuilder) joinTo(tArr, new StringBuilder(), separator, prefix, postfix, i, truncated, function1)).toString();
        Intrinsics.checkNotNullExpressionValue(sb, "joinTo(StringBuilder(), …ed, transform).toString()");
        return sb;
    }

    public static <T> Iterable<T> asIterable(T[] tArr) {
        List emptyList;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (tArr.length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return new ArraysKt___ArraysKt$asIterable$$inlined$Iterable$1(tArr);
    }

    public static Iterable<Boolean> asIterable(boolean[] zArr) {
        List emptyList;
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        if (zArr.length == 0) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        return new ArraysKt___ArraysKt$asIterable$$inlined$Iterable$8(zArr);
    }

    public static <T> Sequence<T> asSequence(final T[] tArr) {
        Sequence<T> emptySequence;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        if (tArr.length == 0) {
            emptySequence = SequencesKt__SequencesKt.emptySequence();
            return emptySequence;
        }
        return new Sequence<T>() { // from class: kotlin.collections.ArraysKt___ArraysKt$asSequence$$inlined$Sequence$1
            @Override // kotlin.sequences.Sequence
            public Iterator<T> iterator() {
                return ArrayIteratorKt.iterator(tArr);
            }
        };
    }
}
