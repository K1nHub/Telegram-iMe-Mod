package kotlin.comparisons;

import java.util.Comparator;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import p034j$.util.Comparator;
import p034j$.util.function.Function;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
/* compiled from: Comparisons.kt */
/* loaded from: classes4.dex */
final class ReverseOrderComparator implements Comparator<Comparable<? super Object>>, p034j$.util.Comparator {
    public static final ReverseOrderComparator INSTANCE = new ReverseOrderComparator();

    @Override // p034j$.util.Comparator
    public /* synthetic */ Comparator thenComparing(Function function) {
        Comparator m632a;
        m632a = Comparator.EL.m632a(this, Comparator.CC.comparing(function));
        return m632a;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, function, comparator);
    }

    @Override // java.util.Comparator, p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, comparator);
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(toDoubleFunction);
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m632a;
        m632a = Comparator.EL.m632a(this, Comparator.CC.comparingInt(toIntFunction));
        return m632a;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Objects.requireNonNull(toLongFunction);
    }

    private ReverseOrderComparator() {
    }

    @Override // java.util.Comparator, p034j$.util.Comparator
    public int compare(Comparable<Object> a, Comparable<Object> b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return b.compareTo(a);
    }

    @Override // java.util.Comparator, p034j$.util.Comparator
    public final java.util.Comparator<Comparable<Object>> reversed() {
        return NaturalOrderComparator.INSTANCE;
    }
}
