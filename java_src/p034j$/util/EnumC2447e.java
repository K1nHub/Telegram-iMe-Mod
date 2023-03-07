package p034j$.util;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.Comparator;
import p034j$.util.function.Function;
import p034j$.util.function.ToDoubleFunction;
import p034j$.util.function.ToIntFunction;
import p034j$.util.function.ToLongFunction;
import p034j$.wrappers.C2802A0;
import p034j$.wrappers.C2806C0;
import p034j$.wrappers.C2810E0;
import p034j$.wrappers.C2823L;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public enum EnumC2447e implements Comparator, Comparator {
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
        java.util.Comparator m604w;
        m604w = AbstractC2414a.m604w(this, Comparator.CC.comparing(function));
        return m604w;
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
        java.util.Comparator m604w;
        m604w = AbstractC2414a.m604w(this, Comparator.CC.comparing(C2823L.m204a(function)));
        return m604w;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(toDoubleFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(java.util.function.ToDoubleFunction toDoubleFunction) {
        return Objects.requireNonNull(C2802A0.m246a(toDoubleFunction));
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m604w;
        m604w = AbstractC2414a.m604w(this, Comparator.CC.comparingInt(toIntFunction));
        return m604w;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(java.util.function.ToIntFunction toIntFunction) {
        java.util.Comparator m604w;
        m604w = AbstractC2414a.m604w(this, Comparator.CC.comparingInt(C2806C0.m242a(toIntFunction)));
        return m604w;
    }

    @Override // p034j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        return Objects.requireNonNull(toLongFunction);
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(java.util.function.ToLongFunction toLongFunction) {
        return Objects.requireNonNull(C2810E0.m237a(toLongFunction));
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, C2823L.m204a(function), comparator);
    }
}
