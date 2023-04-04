package p035j$.util;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.Comparator;
import p035j$.util.function.Function;
import p035j$.util.function.ToDoubleFunction;
import p035j$.util.function.ToIntFunction;
import p035j$.util.function.ToLongFunction;
import p035j$.wrappers.C3016A0;
import p035j$.wrappers.C3020C0;
import p035j$.wrappers.C3024E0;
import p035j$.wrappers.C3037L;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public enum EnumC2661e implements Comparator, Comparator {
    INSTANCE;

    @Override // java.util.Comparator, p035j$.util.Comparator
    public int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }

    @Override // java.util.Comparator, p035j$.util.Comparator
    public Comparator reversed() {
        return Comparator.CC.reverseOrder();
    }

    @Override // p035j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function) {
        java.util.Comparator m598w;
        m598w = AbstractC2628a.m598w(this, Comparator.CC.comparing(function));
        return m598w;
    }

    @Override // p035j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, function, comparator);
    }

    @Override // java.util.Comparator, p035j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.Comparator comparator) {
        return Objects.requireNonNull(comparator);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function) {
        java.util.Comparator m598w;
        m598w = AbstractC2628a.m598w(this, Comparator.CC.comparing(C3037L.m198a(function)));
        return m598w;
    }

    @Override // p035j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(toDoubleFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(java.util.function.ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(C3016A0.m240a(toDoubleFunction));
    }

    @Override // p035j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m598w;
        m598w = AbstractC2628a.m598w(this, Comparator.CC.comparingInt(toIntFunction));
        return m598w;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(java.util.function.ToIntFunction toIntFunction) {
        java.util.Comparator m598w;
        m598w = AbstractC2628a.m598w(this, Comparator.CC.comparingInt(C3020C0.m236a(toIntFunction)));
        return m598w;
    }

    @Override // p035j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Objects.requireNonNull(toLongFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(java.util.function.ToLongFunction toLongFunction) {
        return Objects.requireNonNull(C3024E0.m231a(toLongFunction));
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, C3037L.m198a(function), comparator);
    }
}
