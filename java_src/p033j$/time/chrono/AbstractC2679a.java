package p033j$.time.chrono;

import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2670d;
import p033j$.time.C2687d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2677b;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2731a;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.chrono.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2679a implements InterfaceC2685g {
    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m958a(Map map, EnumC2731a enumC2731a, long j) {
        Long l = (Long) map.get(enumC2731a);
        if (l == null || l.longValue() == j) {
            map.put(enumC2731a, Long.valueOf(j));
            return;
        }
        throw new DateTimeException("Conflict found: " + enumC2731a + " " + l + " differs from " + enumC2731a + " " + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public InterfaceC2680b m957b(InterfaceC2680b interfaceC2680b, long j, long j2, long j3) {
        long j4;
        C2687d mo742f = ((C2687d) interfaceC2680b).mo742f(j, ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        C2687d mo742f2 = mo742f.mo742f(j2, chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                mo742f2 = mo742f2.mo742f(AbstractC2670d.m986g(j3, 7L) / 7, chronoUnit);
                j4 = j3 + 6;
            }
            return mo742f2.m950C(AbstractC2744n.m732d(EnumC2677b.m959k((int) j3)));
        }
        j4 = j3 - 1;
        mo742f2 = mo742f2.mo742f(j4 / 7, chronoUnit);
        j3 = (j4 % 7) + 1;
        return mo742f2.m950C(AbstractC2744n.m732d(EnumC2677b.m959k((int) j3)));
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Objects.requireNonNull((InterfaceC2685g) obj);
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2679a) {
            Objects.requireNonNull((AbstractC2679a) obj);
            return true;
        }
        return false;
    }

    public int hashCode() {
        return getClass().hashCode() ^ 72805;
    }

    public String toString() {
        return "ISO";
    }
}
