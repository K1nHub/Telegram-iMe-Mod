package kotlin.collections;

import java.util.List;
import kotlin.jvm.functions.Function1;
/* loaded from: classes4.dex */
public final class ArraysKt extends ArraysKt___ArraysKt {
    public static /* bridge */ /* synthetic */ boolean contains(long[] jArr, long j) {
        return ArraysKt___ArraysKt.contains(jArr, j);
    }

    public static /* bridge */ /* synthetic */ byte[] copyInto(byte[] bArr, byte[] bArr2, int i, int i2, int i3) {
        return ArraysKt___ArraysJvmKt.copyInto(bArr, bArr2, i, i2, i3);
    }

    public static /* bridge */ /* synthetic */ <T> T[] copyInto(T[] tArr, T[] tArr2, int i, int i2, int i3) {
        return (T[]) ArraysKt___ArraysJvmKt.copyInto(tArr, tArr2, i, i2, i3);
    }

    public static /* bridge */ /* synthetic */ <T> T[] copyOfRange(T[] tArr, int i, int i2) {
        return (T[]) ArraysKt___ArraysJvmKt.copyOfRange(tArr, i, i2);
    }

    public static /* bridge */ /* synthetic */ <T> T first(T[] tArr) {
        return (T) ArraysKt___ArraysKt.first(tArr);
    }

    public static /* bridge */ /* synthetic */ <T> T firstOrNull(T[] tArr) {
        return (T) ArraysKt___ArraysKt.firstOrNull(tArr);
    }

    public static /* bridge */ /* synthetic */ <T> T getOrNull(T[] tArr, int i) {
        return (T) ArraysKt___ArraysKt.getOrNull(tArr, i);
    }

    public static /* bridge */ /* synthetic */ <T> T last(T[] tArr) {
        return (T) ArraysKt___ArraysKt.last(tArr);
    }

    public static /* bridge */ /* synthetic */ <T, R> List<R> map(T[] tArr, Function1<? super T, ? extends R> function1) {
        return ArraysKt___ArraysKt.map(tArr, function1);
    }

    public static /* bridge */ /* synthetic */ <T> T single(T[] tArr) {
        return (T) ArraysKt___ArraysKt.single(tArr);
    }

    public static /* bridge */ /* synthetic */ <T> T singleOrNull(T[] tArr) {
        return (T) ArraysKt___ArraysKt.singleOrNull(tArr);
    }
}
