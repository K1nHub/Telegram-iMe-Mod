package kotlin.comparisons;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import p033j$.util.Comparator;
import p033j$.util.function.Function;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* compiled from: Comparisons.kt */
/* loaded from: classes4.dex */
final class ReverseOrderComparator implements Comparator<Comparable<? super Object>>, p033j$.util.Comparator {
    public static final ReverseOrderComparator INSTANCE = new ReverseOrderComparator();

    @Override // p033j$.util.Comparator
    public /* synthetic */ Comparator thenComparing(Function function) {
        Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparing(function));
        return m696a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, function, comparator);
    }

    @Override // java.util.Comparator, p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, comparator);
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingDouble(toDoubleFunction));
        return m696a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingInt(toIntFunction));
        return m696a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingLong(toLongFunction));
        return m696a;
    }

    private ReverseOrderComparator() {
    }

    @Override // java.util.Comparator, p033j$.util.Comparator
    public int compare(Comparable<Object> a, Comparable<Object> b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return b.compareTo(a);
    }

    @Override // java.util.Comparator, p033j$.util.Comparator
    public final java.util.Comparator<Comparable<Object>> reversed() {
        return NaturalOrderComparator.INSTANCE;
    }
}
