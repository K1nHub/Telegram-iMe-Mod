package p033j$.time.format;

import com.google.android.exoplayer2.C0479C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2669d;
import p033j$.time.AbstractC2675a;
import p033j$.time.AbstractC2724n;
import p033j$.time.C2686d;
import p033j$.time.C2718h;
import p033j$.time.C2722l;
import p033j$.time.C2725o;
import p033j$.time.C2728r;
import p033j$.time.DateTimeException;
import p033j$.time.Instant;
import p033j$.time.chrono.AbstractC2678a;
import p033j$.time.chrono.C2685h;
import p033j$.time.chrono.InterfaceC2679b;
import p033j$.time.chrono.InterfaceC2684g;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2745p;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.C2747r;
import p033j$.time.temporal.C2748s;
import p033j$.time.temporal.C2749t;
import p033j$.time.temporal.C2750u;
import p033j$.time.temporal.C2751v;
import p033j$.time.temporal.C2755z;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.y */
/* loaded from: classes2.dex */
public final class C2715y implements InterfaceC2740k {

    /* renamed from: b */
    AbstractC2724n f581b;

    /* renamed from: c */
    InterfaceC2684g f582c;

    /* renamed from: d */
    boolean f583d;

    /* renamed from: e */
    private EnumC2716z f584e;

    /* renamed from: f */
    private InterfaceC2679b f585f;

    /* renamed from: g */
    private C2718h f586g;

    /* renamed from: a */
    final Map f580a = new HashMap();

    /* renamed from: h */
    C2722l f587h = C2722l.f603d;

    /* renamed from: h */
    private void m824h(InterfaceC2740k interfaceC2740k) {
        Iterator it = this.f580a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            InterfaceC2744o interfaceC2744o = (InterfaceC2744o) entry.getKey();
            if (interfaceC2740k.mo736i(interfaceC2744o)) {
                try {
                    long mo738e = interfaceC2740k.mo738e(interfaceC2744o);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (mo738e != longValue) {
                        throw new DateTimeException("Conflict found: Field " + interfaceC2744o + " " + mo738e + " differs from " + interfaceC2744o + " " + longValue + " derived from " + interfaceC2740k);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    /* renamed from: k */
    private void m822k() {
        if (this.f580a.containsKey(EnumC2730a.INSTANT_SECONDS)) {
            AbstractC2724n abstractC2724n = this.f581b;
            if (abstractC2724n == null) {
                Long l = (Long) this.f580a.get(EnumC2730a.OFFSET_SECONDS);
                if (l == null) {
                    return;
                }
                abstractC2724n = C2725o.m781s(l.intValue());
            }
            m821l(abstractC2724n);
        }
    }

    /* renamed from: l */
    private void m821l(AbstractC2724n abstractC2724n) {
        Map map = this.f580a;
        EnumC2730a enumC2730a = EnumC2730a.INSTANT_SECONDS;
        Instant m975m = Instant.m975m(((Long) map.remove(enumC2730a)).longValue());
        Objects.requireNonNull((C2685h) this.f582c);
        C2728r m772m = C2728r.m772m(m975m, abstractC2724n);
        m817p(m772m.m767r());
        m816q(enumC2730a, EnumC2730a.SECOND_OF_DAY, Long.valueOf(m772m.m765t().m802w()));
    }

    /* renamed from: m */
    private void m820m(long j, long j2, long j3, long j4) {
        C2718h m809p;
        C2722l c2722l;
        if (this.f584e == EnumC2716z.LENIENT) {
            long m989c = AbstractC2669d.m989c(AbstractC2669d.m989c(AbstractC2669d.m989c(AbstractC2669d.m986f(j, 3600000000000L), AbstractC2669d.m986f(j2, 60000000000L)), AbstractC2669d.m986f(j3, C0479C.NANOS_PER_SECOND)), j4);
            m809p = C2718h.m808q(AbstractC2669d.m988d(m989c, 86400000000000L));
            c2722l = C2722l.m790d((int) AbstractC2669d.m987e(m989c, 86400000000000L));
        } else {
            int m753i = EnumC2730a.MINUTE_OF_HOUR.m753i(j2);
            int m753i2 = EnumC2730a.NANO_OF_SECOND.m753i(j4);
            if (this.f584e == EnumC2716z.SMART && j == 24 && m753i == 0 && j3 == 0 && m753i2 == 0) {
                m809p = C2718h.f593g;
                c2722l = C2722l.m790d(1);
            } else {
                m809p = C2718h.m809p(EnumC2730a.HOUR_OF_DAY.m753i(j), m753i, EnumC2730a.SECOND_OF_MINUTE.m753i(j3), m753i2);
                c2722l = C2722l.f603d;
            }
        }
        m818o(m809p, c2722l);
    }

    /* renamed from: n */
    private void m819n() {
        InterfaceC2744o interfaceC2744o;
        Long valueOf;
        Map map = this.f580a;
        EnumC2730a enumC2730a = EnumC2730a.CLOCK_HOUR_OF_DAY;
        if (map.containsKey(enumC2730a)) {
            long longValue = ((Long) this.f580a.remove(enumC2730a)).longValue();
            EnumC2716z enumC2716z = this.f584e;
            if (enumC2716z == EnumC2716z.STRICT || (enumC2716z == EnumC2716z.SMART && longValue != 0)) {
                enumC2730a.m752j(longValue);
            }
            InterfaceC2744o interfaceC2744o2 = EnumC2730a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            m816q(enumC2730a, interfaceC2744o2, Long.valueOf(longValue));
        }
        Map map2 = this.f580a;
        EnumC2730a enumC2730a2 = EnumC2730a.CLOCK_HOUR_OF_AMPM;
        if (map2.containsKey(enumC2730a2)) {
            long longValue2 = ((Long) this.f580a.remove(enumC2730a2)).longValue();
            EnumC2716z enumC2716z2 = this.f584e;
            if (enumC2716z2 == EnumC2716z.STRICT || (enumC2716z2 == EnumC2716z.SMART && longValue2 != 0)) {
                enumC2730a2.m752j(longValue2);
            }
            m816q(enumC2730a2, EnumC2730a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.f580a;
        EnumC2730a enumC2730a3 = EnumC2730a.AMPM_OF_DAY;
        if (map3.containsKey(enumC2730a3)) {
            Map map4 = this.f580a;
            EnumC2730a enumC2730a4 = EnumC2730a.HOUR_OF_AMPM;
            if (map4.containsKey(enumC2730a4)) {
                long longValue3 = ((Long) this.f580a.remove(enumC2730a3)).longValue();
                long longValue4 = ((Long) this.f580a.remove(enumC2730a4)).longValue();
                if (this.f584e == EnumC2716z.LENIENT) {
                    interfaceC2744o = EnumC2730a.HOUR_OF_DAY;
                    valueOf = Long.valueOf(AbstractC2669d.m989c(AbstractC2669d.m986f(longValue3, 12L), longValue4));
                } else {
                    enumC2730a3.m752j(longValue3);
                    enumC2730a4.m752j(longValue3);
                    interfaceC2744o = EnumC2730a.HOUR_OF_DAY;
                    valueOf = Long.valueOf((longValue3 * 12) + longValue4);
                }
                m816q(enumC2730a3, interfaceC2744o, valueOf);
            }
        }
        Map map5 = this.f580a;
        EnumC2730a enumC2730a5 = EnumC2730a.NANO_OF_DAY;
        if (map5.containsKey(enumC2730a5)) {
            long longValue5 = ((Long) this.f580a.remove(enumC2730a5)).longValue();
            if (this.f584e != EnumC2716z.LENIENT) {
                enumC2730a5.m752j(longValue5);
            }
            m816q(enumC2730a5, EnumC2730a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            m816q(enumC2730a5, EnumC2730a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            m816q(enumC2730a5, EnumC2730a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / C0479C.NANOS_PER_SECOND) % 60));
            m816q(enumC2730a5, EnumC2730a.NANO_OF_SECOND, Long.valueOf(longValue5 % C0479C.NANOS_PER_SECOND));
        }
        Map map6 = this.f580a;
        EnumC2730a enumC2730a6 = EnumC2730a.MICRO_OF_DAY;
        if (map6.containsKey(enumC2730a6)) {
            long longValue6 = ((Long) this.f580a.remove(enumC2730a6)).longValue();
            if (this.f584e != EnumC2716z.LENIENT) {
                enumC2730a6.m752j(longValue6);
            }
            m816q(enumC2730a6, EnumC2730a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            m816q(enumC2730a6, EnumC2730a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.f580a;
        EnumC2730a enumC2730a7 = EnumC2730a.MILLI_OF_DAY;
        if (map7.containsKey(enumC2730a7)) {
            long longValue7 = ((Long) this.f580a.remove(enumC2730a7)).longValue();
            if (this.f584e != EnumC2716z.LENIENT) {
                enumC2730a7.m752j(longValue7);
            }
            m816q(enumC2730a7, EnumC2730a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            m816q(enumC2730a7, EnumC2730a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.f580a;
        EnumC2730a enumC2730a8 = EnumC2730a.SECOND_OF_DAY;
        if (map8.containsKey(enumC2730a8)) {
            long longValue8 = ((Long) this.f580a.remove(enumC2730a8)).longValue();
            if (this.f584e != EnumC2716z.LENIENT) {
                enumC2730a8.m752j(longValue8);
            }
            m816q(enumC2730a8, EnumC2730a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            m816q(enumC2730a8, EnumC2730a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            m816q(enumC2730a8, EnumC2730a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.f580a;
        EnumC2730a enumC2730a9 = EnumC2730a.MINUTE_OF_DAY;
        if (map9.containsKey(enumC2730a9)) {
            long longValue9 = ((Long) this.f580a.remove(enumC2730a9)).longValue();
            if (this.f584e != EnumC2716z.LENIENT) {
                enumC2730a9.m752j(longValue9);
            }
            m816q(enumC2730a9, EnumC2730a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            m816q(enumC2730a9, EnumC2730a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.f580a;
        EnumC2730a enumC2730a10 = EnumC2730a.NANO_OF_SECOND;
        if (map10.containsKey(enumC2730a10)) {
            long longValue10 = ((Long) this.f580a.get(enumC2730a10)).longValue();
            EnumC2716z enumC2716z3 = this.f584e;
            EnumC2716z enumC2716z4 = EnumC2716z.LENIENT;
            if (enumC2716z3 != enumC2716z4) {
                enumC2730a10.m752j(longValue10);
            }
            Map map11 = this.f580a;
            EnumC2730a enumC2730a11 = EnumC2730a.MICRO_OF_SECOND;
            if (map11.containsKey(enumC2730a11)) {
                long longValue11 = ((Long) this.f580a.remove(enumC2730a11)).longValue();
                if (this.f584e != enumC2716z4) {
                    enumC2730a11.m752j(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                m816q(enumC2730a11, enumC2730a10, Long.valueOf(longValue10));
            }
            Map map12 = this.f580a;
            EnumC2730a enumC2730a12 = EnumC2730a.MILLI_OF_SECOND;
            if (map12.containsKey(enumC2730a12)) {
                long longValue12 = ((Long) this.f580a.remove(enumC2730a12)).longValue();
                if (this.f584e != enumC2716z4) {
                    enumC2730a12.m752j(longValue12);
                }
                m816q(enumC2730a12, enumC2730a10, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.f580a;
        EnumC2730a enumC2730a13 = EnumC2730a.HOUR_OF_DAY;
        if (map13.containsKey(enumC2730a13)) {
            Map map14 = this.f580a;
            EnumC2730a enumC2730a14 = EnumC2730a.MINUTE_OF_HOUR;
            if (map14.containsKey(enumC2730a14)) {
                Map map15 = this.f580a;
                EnumC2730a enumC2730a15 = EnumC2730a.SECOND_OF_MINUTE;
                if (map15.containsKey(enumC2730a15) && this.f580a.containsKey(enumC2730a10)) {
                    m820m(((Long) this.f580a.remove(enumC2730a13)).longValue(), ((Long) this.f580a.remove(enumC2730a14)).longValue(), ((Long) this.f580a.remove(enumC2730a15)).longValue(), ((Long) this.f580a.remove(enumC2730a10)).longValue());
                }
            }
        }
    }

    /* renamed from: o */
    private void m818o(C2718h c2718h, C2722l c2722l) {
        C2718h c2718h2 = this.f586g;
        if (c2718h2 == null) {
            this.f586g = c2718h;
        } else if (!c2718h2.equals(c2718h)) {
            StringBuilder m960a = AbstractC2675a.m960a("Conflict found: Fields resolved to different times: ");
            m960a.append(this.f586g);
            m960a.append(" ");
            m960a.append(c2718h);
            throw new DateTimeException(m960a.toString());
        } else if (!this.f587h.m791c() && !c2722l.m791c() && !this.f587h.equals(c2722l)) {
            StringBuilder m960a2 = AbstractC2675a.m960a("Conflict found: Fields resolved to different excess periods: ");
            m960a2.append(this.f587h);
            m960a2.append(" ");
            m960a2.append(c2722l);
            throw new DateTimeException(m960a2.toString());
        }
        this.f587h = c2722l;
    }

    /* renamed from: p */
    private void m817p(InterfaceC2679b interfaceC2679b) {
        InterfaceC2679b interfaceC2679b2 = this.f585f;
        if (interfaceC2679b2 != null) {
            if (interfaceC2679b == null || ((C2686d) interfaceC2679b2).equals(interfaceC2679b)) {
                return;
            }
            StringBuilder m960a = AbstractC2675a.m960a("Conflict found: Fields resolved to two different dates: ");
            m960a.append(this.f585f);
            m960a.append(" ");
            m960a.append(interfaceC2679b);
            throw new DateTimeException(m960a.toString());
        } else if (interfaceC2679b != null) {
            if (((AbstractC2678a) this.f582c).equals(C2685h.f501a)) {
                this.f585f = interfaceC2679b;
                return;
            }
            StringBuilder m960a2 = AbstractC2675a.m960a("ChronoLocalDate must use the effective parsed chronology: ");
            m960a2.append(this.f582c);
            throw new DateTimeException(m960a2.toString());
        }
    }

    /* renamed from: q */
    private void m816q(InterfaceC2744o interfaceC2744o, InterfaceC2744o interfaceC2744o2, Long l) {
        Long l2 = (Long) this.f580a.put(interfaceC2744o2, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new DateTimeException("Conflict found: " + interfaceC2744o2 + " " + l2 + " differs from " + interfaceC2744o2 + " " + l + " while resolving  " + interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public /* synthetic */ int mo740c(InterfaceC2744o interfaceC2744o) {
        return AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public /* synthetic */ C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return AbstractC2743n.m732c(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        Objects.requireNonNull(interfaceC2744o, "field");
        Long l = (Long) this.f580a.get(interfaceC2744o);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC2679b interfaceC2679b = this.f585f;
        if (interfaceC2679b == null || !((C2686d) interfaceC2679b).mo736i(interfaceC2744o)) {
            C2718h c2718h = this.f586g;
            if (c2718h == null || !c2718h.mo736i(interfaceC2744o)) {
                if (interfaceC2744o instanceof EnumC2730a) {
                    throw new C2755z("Unsupported field: " + interfaceC2744o);
                }
                return interfaceC2744o.mo727d(this);
            }
            return this.f586g.mo738e(interfaceC2744o);
        }
        return ((C2686d) this.f585f).mo738e(interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2745p.f640a) {
            return this.f581b;
        }
        if (interfaceC2753x == C2746q.f641a) {
            return this.f582c;
        }
        if (interfaceC2753x == C2750u.f645a) {
            InterfaceC2679b interfaceC2679b = this.f585f;
            if (interfaceC2679b != null) {
                return C2686d.m944l(interfaceC2679b);
            }
            return null;
        } else if (interfaceC2753x == C2751v.f646a) {
            return this.f586g;
        } else {
            if (interfaceC2753x == C2749t.f644a || interfaceC2753x == C2748s.f643a) {
                return interfaceC2753x.mo722a(this);
            }
            if (interfaceC2753x == C2747r.f642a) {
                return null;
            }
            return interfaceC2753x.mo722a(this);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        if (this.f580a.containsKey(interfaceC2744o)) {
            return true;
        }
        InterfaceC2679b interfaceC2679b = this.f585f;
        if (interfaceC2679b == null || !((C2686d) interfaceC2679b).mo736i(interfaceC2744o)) {
            C2718h c2718h = this.f586g;
            if (c2718h == null || !c2718h.mo736i(interfaceC2744o)) {
                return (interfaceC2744o == null || (interfaceC2744o instanceof EnumC2730a) || !interfaceC2744o.mo726e(this)) ? false : true;
            }
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:108:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0315  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0236  */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p033j$.time.temporal.InterfaceC2740k m823j(p033j$.time.format.EnumC2716z r19, java.util.Set r20) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2715y.m823j(j$.time.format.z, java.util.Set):j$.time.temporal.k");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        sb.append(this.f580a);
        sb.append(',');
        sb.append(this.f582c);
        if (this.f581b != null) {
            sb.append(',');
            sb.append(this.f581b);
        }
        if (this.f585f != null || this.f586g != null) {
            sb.append(" resolved to ");
            InterfaceC2679b interfaceC2679b = this.f585f;
            if (interfaceC2679b != null) {
                sb.append(interfaceC2679b);
                if (this.f586g != null) {
                    sb.append('T');
                }
            }
            sb.append(this.f586g);
        }
        return sb.toString();
    }
}
