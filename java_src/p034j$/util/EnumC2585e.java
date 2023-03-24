package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.function.Function;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2940A0;
import p034j$.wrappers.C2944C0;
import p034j$.wrappers.C2948E0;
import p034j$.wrappers.C2961L;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public enum EnumC2585e implements Comparator, Comparator {
    INSTANCE;

    @Override // java.util.Comparator, p034j$.util.Comparator
    public int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }

    @Override // java.util.Comparator, p034j$.util.Comparator
    public Comparator reversed() {
        return Comparator.CC.reverseOrder();
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function) {
        java.util.Comparator m603w;
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

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function) {
        java.util.Comparator m603w;
        m603w = AbstractC2552a.m603w(this, Comparator.CC.comparing(C2961L.m203a(function)));
        return m603w;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(toDoubleFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(java.util.function.ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(C2940A0.m245a(toDoubleFunction));
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m603w;
        m603w = AbstractC2552a.m603w(this, Comparator.CC.comparingInt(toIntFunction));
        return m603w;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(java.util.function.ToIntFunction toIntFunction) {
        java.util.Comparator m603w;
        m603w = AbstractC2552a.m603w(this, Comparator.CC.comparingInt(C2944C0.m241a(toIntFunction)));
        return m603w;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Objects.requireNonNull(toLongFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(java.util.function.ToLongFunction toLongFunction) {
        return Objects.requireNonNull(C2948E0.m236a(toLongFunction));
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, C2961L.m203a(function), comparator);
    }
}
