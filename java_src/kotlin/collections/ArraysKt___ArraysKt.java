package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: _Arrays.kt */
/* loaded from: classes4.dex */
public class ArraysKt___ArraysKt extends ArraysKt___ArraysJvmKt {
    public static <T> boolean contains(T[] tArr, T t) {
        int indexOf;
        Intrinsics.checkNotNullParameter(tArr, "<this>");
        indexOf = indexOf(tArr, t);
        return indexOf >= 0;
    }

    public static boolean contains(char[] cArr, char c) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        return indexOf(cArr, c) >= 0;
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

    public static float[] reversedArray(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        int i = 0;
        if (fArr.length == 0) {
            return fArr;
        }
        float[] fArr2 = new float[fArr.length];
        int lastIndex = getLastIndex(fArr);
        if (lastIndex >= 0) {
            while (true) {
                fArr2[lastIndex - i] = fArr[i];
                if (i == lastIndex) {
                    break;
                }
                i++;
            }
        }
        return fArr2;
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

    public static final int getLastIndex(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr.length - 1;
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

    public static List<Long> toMutableList(long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
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
}
