package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.function.Function;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C3042A0;
import p034j$.wrappers.C3046C0;
import p034j$.wrappers.C3050E0;
import p034j$.wrappers.C3063L;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public enum EnumC2687e implements Comparator, Comparator {
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
        java.util.Comparator m632a;
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

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function) {
        java.util.Comparator m632a;
        m632a = Comparator.EL.m632a(this, Comparator.CC.comparing(C3063L.m189a(function)));
        return m632a;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(toDoubleFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(java.util.function.ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(C3042A0.m231a(toDoubleFunction));
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m632a;
        m632a = Comparator.EL.m632a(this, Comparator.CC.comparingInt(toIntFunction));
        return m632a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(java.util.function.ToIntFunction toIntFunction) {
        java.util.Comparator m632a;
        m632a = Comparator.EL.m632a(this, Comparator.CC.comparingInt(C3046C0.m227a(toIntFunction)));
        return m632a;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Objects.requireNonNull(toLongFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(java.util.function.ToLongFunction toLongFunction) {
        return Objects.requireNonNull(C3050E0.m222a(toLongFunction));
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, C3063L.m189a(function), comparator);
    }
}
