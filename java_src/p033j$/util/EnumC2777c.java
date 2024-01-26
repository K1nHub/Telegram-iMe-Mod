package p033j$.util;

import java.util.Comparator;
import p033j$.util.Comparator;
import p033j$.util.function.Function;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C$r8$wrapper$java$util$function$Function$VWRP;
import p033j$.wrappers.C3161B0;
import p033j$.wrappers.C3242x0;
import p033j$.wrappers.C3246z0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.c */
/* loaded from: classes2.dex */
public enum EnumC2777c implements Comparator, Comparator {
    INSTANCE;

    @Override // java.util.Comparator, p033j$.util.Comparator
    public int compare(Object obj, Object obj2) {
        return ((Comparable) obj).compareTo((Comparable) obj2);
    }

    @Override // java.util.Comparator, p033j$.util.Comparator
    public Comparator reversed() {
        return Comparator.CC.reverseOrder();
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(Function function) {
        java.util.Comparator m696a;
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

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparing(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
        return m696a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingDouble(toDoubleFunction));
        return m696a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(java.util.function.ToDoubleFunction toDoubleFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingDouble(C3242x0.m163a(toDoubleFunction)));
        return m696a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingInt(toIntFunction));
        return m696a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(java.util.function.ToIntFunction toIntFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingInt(C3246z0.m158a(toIntFunction)));
        return m696a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingLong(toLongFunction));
        return m696a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(java.util.function.ToLongFunction toLongFunction) {
        java.util.Comparator m696a;
        m696a = Comparator.EL.m696a(this, Comparator.CC.comparingLong(C3161B0.m297a(toLongFunction)));
        return m696a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, C$r8$wrapper$java$util$function$Function$VWRP.convert(function), comparator);
    }
}
