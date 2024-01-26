package p033j$.time.chrono;

import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2668d;
import p033j$.time.C2685d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2675b;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2729a;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.chrono.a */
/* loaded from: classes2.dex */
public abstract class AbstractC2677a implements InterfaceC2683g {
    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new Locale("ja", "JP", "JP");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m961a(Map map, EnumC2729a enumC2729a, long j) {
        Long l = (Long) map.get(enumC2729a);
        if (l == null || l.longValue() == j) {
            map.put(enumC2729a, Long.valueOf(j));
            return;
        }
        throw new DateTimeException("Conflict found: " + enumC2729a + " " + l + " differs from " + enumC2729a + " " + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public InterfaceC2678b m960b(InterfaceC2678b interfaceC2678b, long j, long j2, long j3) {
        long j4;
        C2685d mo745f = ((C2685d) interfaceC2678b).mo745f(j, ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        C2685d mo745f2 = mo745f.mo745f(j2, chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                mo745f2 = mo745f2.mo745f(AbstractC2668d.m989g(j3, 7L) / 7, chronoUnit);
                j4 = j3 + 6;
            }
            return mo745f2.m953C(AbstractC2742n.m735d(EnumC2675b.m962k((int) j3)));
        }
        j4 = j3 - 1;
        mo745f2 = mo745f2.mo745f(j4 / 7, chronoUnit);
        j3 = (j4 % 7) + 1;
        return mo745f2.m953C(AbstractC2742n.m735d(EnumC2675b.m962k((int) j3)));
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        Objects.requireNonNull((InterfaceC2683g) obj);
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AbstractC2677a) {
            Objects.requireNonNull((AbstractC2677a) obj);
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
