package kotlin.comparisons;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import p033j$.util.Comparator;
import p033j$.util.function.Function;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Comparisons.kt */
/* loaded from: classes4.dex */
public final class NaturalOrderComparator implements Comparator<Comparable<? super Object>>, p033j$.util.Comparator {
    public static final NaturalOrderComparator INSTANCE = new NaturalOrderComparator();

    @Override // p033j$.util.Comparator
    public /* synthetic */ Comparator thenComparing(Function function) {
        Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparing(function));
        return m650a;
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
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingDouble(toDoubleFunction));
        return m650a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingInt(toIntFunction));
        return m650a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingLong(toLongFunction));
        return m650a;
    }

    private NaturalOrderComparator() {
    }

    @Override // java.util.Comparator, p033j$.util.Comparator
    public int compare(Comparable<Object> a, Comparable<Object> b) {
        Intrinsics.checkNotNullParameter(a, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return a.compareTo(b);
    }

    @Override // java.util.Comparator, p033j$.util.Comparator
    public final java.util.Comparator<Comparable<Object>> reversed() {
        return ReverseOrderComparator.INSTANCE;
    }
}
