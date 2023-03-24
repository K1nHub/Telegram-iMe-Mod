package kotlin.comparisons;

import java.util.Comparator;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import p034j$.util.AbstractC2552a;
import p034j$.util.Comparator;
import p034j$.util.function.Function;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Comparisons.kt */
/* loaded from: classes4.dex */
public final class NaturalOrderComparator implements Comparator<Comparable<? super Object>>, p034j$.util.Comparator {
    public static final NaturalOrderComparator INSTANCE = new NaturalOrderComparator();

    @Override // p034j$.util.Comparator
    public /* synthetic */ Comparator thenComparing(Function function) {
        Comparator m603w;
        m603w = AbstractC2552a.m603w(this, Comparator.CC.comparing(function));
        return m603w;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, function, comparator);
    }

    @Override // java.util.Comparator, p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.Comparator comparator) {
        return Objects.requireNonNull(comparator);
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(toDoubleFunction);
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m603w;
        m603w = AbstractC2552a.m603w(this, Comparator.CC.comparingInt(toIntFunction));
        return m603w;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Objects.requireNonNull(toLongFunction);
    }

    private NaturalOrderComparator() {
    }

    @Override // java.util.Comparator, p034j$.util.Comparator
    public int compare(Comparable<Object> a, Comparable<Object> b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return a.compareTo(b);
    }

    @Override // java.util.Comparator, p034j$.util.Comparator
    public final java.util.Comparator<Comparable<Object>> reversed() {
        return ReverseOrderComparator.INSTANCE;
    }
}
