package p033j$.util;

import java.util.Comparator;
import p033j$.util.Comparator;
import p033j$.util.function.Function;
import p033j$.util.function.ToDoubleFunction;
import p033j$.util.function.ToIntFunction;
import p033j$.util.function.ToLongFunction;
import p033j$.wrappers.C3223A0;
import p033j$.wrappers.C3227C0;
import p033j$.wrappers.C3231E0;
import p033j$.wrappers.C3244L;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public enum EnumC2868e implements Comparator, Comparator {
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
        java.util.Comparator m650a;
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

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparing(C3244L.m207a(function)));
        return m650a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(ToDoubleFunction toDoubleFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingDouble(toDoubleFunction));
        return m650a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingDouble(java.util.function.ToDoubleFunction toDoubleFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingDouble(C3223A0.m249a(toDoubleFunction)));
        return m650a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(ToIntFunction toIntFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingInt(toIntFunction));
        return m650a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingInt(java.util.function.ToIntFunction toIntFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingInt(C3227C0.m245a(toIntFunction)));
        return m650a;
    }

    @Override // p033j$.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(ToLongFunction toLongFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingLong(toLongFunction));
        return m650a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparingLong(java.util.function.ToLongFunction toLongFunction) {
        java.util.Comparator m650a;
        m650a = Comparator.EL.m650a(this, Comparator.CC.comparingLong(C3231E0.m240a(toLongFunction)));
        return m650a;
    }

    @Override // java.util.Comparator
    public /* synthetic */ java.util.Comparator thenComparing(java.util.function.Function function, java.util.Comparator comparator) {
        return Comparator.CC.$default$thenComparing(this, C3244L.m207a(function), comparator);
    }
}
