package p033j$.time.chrono;

import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2673d;
import p033j$.time.C2690d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2680b;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2734a;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.chrono.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2682a implements InterfaceC2688g {
    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m958a(Map map, EnumC2734a enumC2734a, long j) {
        Long l = (Long) map.get(enumC2734a);
        if (l == null || l.longValue() == j) {
            map.put(enumC2734a, Long.valueOf(j));
            return;
        }
        throw new DateTimeException("Conflict found: " + enumC2734a + " " + l + " differs from " + enumC2734a + " " + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public InterfaceC2683b m957b(InterfaceC2683b interfaceC2683b, long j, long j2, long j3) {
        long j4;
        C2690d mo742f = ((C2690d) interfaceC2683b).mo742f(j, ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        C2690d mo742f2 = mo742f.mo742f(j2, chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                mo742f2 = mo742f2.mo742f(AbstractC2673d.m986g(j3, 7L) / 7, chronoUnit);
                j4 = j3 + 6;
            }
            return mo742f2.m950C(AbstractC2747n.m732d(EnumC2680b.m959k((int) j3)));
        }
        j4 = j3 - 1;
        mo742f2 = mo742f2.mo742f(j4 / 7, chronoUnit);
        j3 = (j4 % 7) + 1;
        return mo742f2.m950C(AbstractC2747n.m732d(EnumC2680b.m959k((int) j3)));
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Objects.requireNonNull((InterfaceC2688g) obj);
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2682a) {
            Objects.requireNonNull((AbstractC2682a) obj);
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
