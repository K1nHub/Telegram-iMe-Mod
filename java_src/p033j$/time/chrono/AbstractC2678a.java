package p033j$.time.chrono;

import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2669d;
import p033j$.time.C2686d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2676b;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2730a;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.chrono.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2678a implements InterfaceC2684g {
    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m957a(Map map, EnumC2730a enumC2730a, long j) {
        Long l = (Long) map.get(enumC2730a);
        if (l == null || l.longValue() == j) {
            map.put(enumC2730a, Long.valueOf(j));
            return;
        }
        throw new DateTimeException("Conflict found: " + enumC2730a + " " + l + " differs from " + enumC2730a + " " + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public InterfaceC2679b m956b(InterfaceC2679b interfaceC2679b, long j, long j2, long j3) {
        long j4;
        C2686d mo741f = ((C2686d) interfaceC2679b).mo741f(j, ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        C2686d mo741f2 = mo741f.mo741f(j2, chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                mo741f2 = mo741f2.mo741f(AbstractC2669d.m985g(j3, 7L) / 7, chronoUnit);
                j4 = j3 + 6;
            }
            return mo741f2.m949C(AbstractC2743n.m731d(EnumC2676b.m958k((int) j3)));
        }
        j4 = j3 - 1;
        mo741f2 = mo741f2.mo741f(j4 / 7, chronoUnit);
        j3 = (j4 % 7) + 1;
        return mo741f2.m949C(AbstractC2743n.m731d(EnumC2676b.m958k((int) j3)));
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Objects.requireNonNull((InterfaceC2684g) obj);
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2678a) {
            Objects.requireNonNull((AbstractC2678a) obj);
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
