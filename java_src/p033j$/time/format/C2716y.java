package p033j$.time.format;

import com.google.android.exoplayer2.C0485C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2670d;
import p033j$.time.AbstractC2676a;
import p033j$.time.AbstractC2725n;
import p033j$.time.C2687d;
import p033j$.time.C2719h;
import p033j$.time.C2723l;
import p033j$.time.C2726o;
import p033j$.time.C2729r;
import p033j$.time.DateTimeException;
import p033j$.time.Instant;
import p033j$.time.chrono.AbstractC2679a;
import p033j$.time.chrono.C2686h;
import p033j$.time.chrono.InterfaceC2680b;
import p033j$.time.chrono.InterfaceC2685g;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2730A;
import p033j$.time.temporal.C2746p;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.C2748r;
import p033j$.time.temporal.C2749s;
import p033j$.time.temporal.C2750t;
import p033j$.time.temporal.C2751u;
import p033j$.time.temporal.C2752v;
import p033j$.time.temporal.C2756z;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.y */
/* loaded from: classes2.dex */
public final class C2716y implements InterfaceC2741k {

    /* renamed from: b */
    AbstractC2725n f581b;

    /* renamed from: c */
    InterfaceC2685g f582c;

    /* renamed from: d */
    boolean f583d;

    /* renamed from: e */
    private EnumC2717z f584e;

    /* renamed from: f */
    private InterfaceC2680b f585f;

    /* renamed from: g */
    private C2719h f586g;

    /* renamed from: a */
    final Map f580a = new HashMap();

    /* renamed from: h */
    C2723l f587h = C2723l.f603d;

    /* renamed from: h */
    private void m825h(InterfaceC2741k interfaceC2741k) {
        Iterator it = this.f580a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            InterfaceC2745o interfaceC2745o = (InterfaceC2745o) entry.getKey();
            if (interfaceC2741k.mo737i(interfaceC2745o)) {
                try {
                    long mo739e = interfaceC2741k.mo739e(interfaceC2745o);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (mo739e != longValue) {
                        throw new DateTimeException("Conflict found: Field " + interfaceC2745o + " " + mo739e + " differs from " + interfaceC2745o + " " + longValue + " derived from " + interfaceC2741k);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    /* renamed from: k */
    private void m823k() {
        if (this.f580a.containsKey(EnumC2731a.INSTANT_SECONDS)) {
            AbstractC2725n abstractC2725n = this.f581b;
            if (abstractC2725n == null) {
                Long l = (Long) this.f580a.get(EnumC2731a.OFFSET_SECONDS);
                if (l == null) {
                    return;
                }
                abstractC2725n = C2726o.m782s(l.intValue());
            }
            m822l(abstractC2725n);
        }
    }

    /* renamed from: l */
    private void m822l(AbstractC2725n abstractC2725n) {
        Map map = this.f580a;
        EnumC2731a enumC2731a = EnumC2731a.INSTANT_SECONDS;
        Instant m976m = Instant.m976m(((Long) map.remove(enumC2731a)).longValue());
        Objects.requireNonNull((C2686h) this.f582c);
        C2729r m773m = C2729r.m773m(m976m, abstractC2725n);
        m818p(m773m.m768r());
        m817q(enumC2731a, EnumC2731a.SECOND_OF_DAY, Long.valueOf(m773m.m766t().m803w()));
    }

    /* renamed from: m */
    private void m821m(long j, long j2, long j3, long j4) {
        C2719h m810p;
        C2723l c2723l;
        if (this.f584e == EnumC2717z.LENIENT) {
            long m990c = AbstractC2670d.m990c(AbstractC2670d.m990c(AbstractC2670d.m990c(AbstractC2670d.m987f(j, 3600000000000L), AbstractC2670d.m987f(j2, 60000000000L)), AbstractC2670d.m987f(j3, C0485C.NANOS_PER_SECOND)), j4);
            m810p = C2719h.m809q(AbstractC2670d.m989d(m990c, 86400000000000L));
            c2723l = C2723l.m791d((int) AbstractC2670d.m988e(m990c, 86400000000000L));
        } else {
            int m754i = EnumC2731a.MINUTE_OF_HOUR.m754i(j2);
            int m754i2 = EnumC2731a.NANO_OF_SECOND.m754i(j4);
            if (this.f584e == EnumC2717z.SMART && j == 24 && m754i == 0 && j3 == 0 && m754i2 == 0) {
                m810p = C2719h.f593g;
                c2723l = C2723l.m791d(1);
            } else {
                m810p = C2719h.m810p(EnumC2731a.HOUR_OF_DAY.m754i(j), m754i, EnumC2731a.SECOND_OF_MINUTE.m754i(j3), m754i2);
                c2723l = C2723l.f603d;
            }
        }
        m819o(m810p, c2723l);
    }

    /* renamed from: n */
    private void m820n() {
        InterfaceC2745o interfaceC2745o;
        Long valueOf;
        Map map = this.f580a;
        EnumC2731a enumC2731a = EnumC2731a.CLOCK_HOUR_OF_DAY;
        if (map.containsKey(enumC2731a)) {
            long longValue = ((Long) this.f580a.remove(enumC2731a)).longValue();
            EnumC2717z enumC2717z = this.f584e;
            if (enumC2717z == EnumC2717z.STRICT || (enumC2717z == EnumC2717z.SMART && longValue != 0)) {
                enumC2731a.m753j(longValue);
            }
            InterfaceC2745o interfaceC2745o2 = EnumC2731a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            m817q(enumC2731a, interfaceC2745o2, Long.valueOf(longValue));
        }
        Map map2 = this.f580a;
        EnumC2731a enumC2731a2 = EnumC2731a.CLOCK_HOUR_OF_AMPM;
        if (map2.containsKey(enumC2731a2)) {
            long longValue2 = ((Long) this.f580a.remove(enumC2731a2)).longValue();
            EnumC2717z enumC2717z2 = this.f584e;
            if (enumC2717z2 == EnumC2717z.STRICT || (enumC2717z2 == EnumC2717z.SMART && longValue2 != 0)) {
                enumC2731a2.m753j(longValue2);
            }
            m817q(enumC2731a2, EnumC2731a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.f580a;
        EnumC2731a enumC2731a3 = EnumC2731a.AMPM_OF_DAY;
        if (map3.containsKey(enumC2731a3)) {
            Map map4 = this.f580a;
            EnumC2731a enumC2731a4 = EnumC2731a.HOUR_OF_AMPM;
            if (map4.containsKey(enumC2731a4)) {
                long longValue3 = ((Long) this.f580a.remove(enumC2731a3)).longValue();
                long longValue4 = ((Long) this.f580a.remove(enumC2731a4)).longValue();
                if (this.f584e == EnumC2717z.LENIENT) {
                    interfaceC2745o = EnumC2731a.HOUR_OF_DAY;
                    valueOf = Long.valueOf(AbstractC2670d.m990c(AbstractC2670d.m987f(longValue3, 12L), longValue4));
                } else {
                    enumC2731a3.m753j(longValue3);
                    enumC2731a4.m753j(longValue3);
                    interfaceC2745o = EnumC2731a.HOUR_OF_DAY;
                    valueOf = Long.valueOf((longValue3 * 12) + longValue4);
                }
                m817q(enumC2731a3, interfaceC2745o, valueOf);
            }
        }
        Map map5 = this.f580a;
        EnumC2731a enumC2731a5 = EnumC2731a.NANO_OF_DAY;
        if (map5.containsKey(enumC2731a5)) {
            long longValue5 = ((Long) this.f580a.remove(enumC2731a5)).longValue();
            if (this.f584e != EnumC2717z.LENIENT) {
                enumC2731a5.m753j(longValue5);
            }
            m817q(enumC2731a5, EnumC2731a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            m817q(enumC2731a5, EnumC2731a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            m817q(enumC2731a5, EnumC2731a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / C0485C.NANOS_PER_SECOND) % 60));
            m817q(enumC2731a5, EnumC2731a.NANO_OF_SECOND, Long.valueOf(longValue5 % C0485C.NANOS_PER_SECOND));
        }
        Map map6 = this.f580a;
        EnumC2731a enumC2731a6 = EnumC2731a.MICRO_OF_DAY;
        if (map6.containsKey(enumC2731a6)) {
            long longValue6 = ((Long) this.f580a.remove(enumC2731a6)).longValue();
            if (this.f584e != EnumC2717z.LENIENT) {
                enumC2731a6.m753j(longValue6);
            }
            m817q(enumC2731a6, EnumC2731a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            m817q(enumC2731a6, EnumC2731a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.f580a;
        EnumC2731a enumC2731a7 = EnumC2731a.MILLI_OF_DAY;
        if (map7.containsKey(enumC2731a7)) {
            long longValue7 = ((Long) this.f580a.remove(enumC2731a7)).longValue();
            if (this.f584e != EnumC2717z.LENIENT) {
                enumC2731a7.m753j(longValue7);
            }
            m817q(enumC2731a7, EnumC2731a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            m817q(enumC2731a7, EnumC2731a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.f580a;
        EnumC2731a enumC2731a8 = EnumC2731a.SECOND_OF_DAY;
        if (map8.containsKey(enumC2731a8)) {
            long longValue8 = ((Long) this.f580a.remove(enumC2731a8)).longValue();
            if (this.f584e != EnumC2717z.LENIENT) {
                enumC2731a8.m753j(longValue8);
            }
            m817q(enumC2731a8, EnumC2731a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            m817q(enumC2731a8, EnumC2731a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            m817q(enumC2731a8, EnumC2731a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.f580a;
        EnumC2731a enumC2731a9 = EnumC2731a.MINUTE_OF_DAY;
        if (map9.containsKey(enumC2731a9)) {
            long longValue9 = ((Long) this.f580a.remove(enumC2731a9)).longValue();
            if (this.f584e != EnumC2717z.LENIENT) {
                enumC2731a9.m753j(longValue9);
            }
            m817q(enumC2731a9, EnumC2731a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            m817q(enumC2731a9, EnumC2731a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.f580a;
        EnumC2731a enumC2731a10 = EnumC2731a.NANO_OF_SECOND;
        if (map10.containsKey(enumC2731a10)) {
            long longValue10 = ((Long) this.f580a.get(enumC2731a10)).longValue();
            EnumC2717z enumC2717z3 = this.f584e;
            EnumC2717z enumC2717z4 = EnumC2717z.LENIENT;
            if (enumC2717z3 != enumC2717z4) {
                enumC2731a10.m753j(longValue10);
            }
            Map map11 = this.f580a;
            EnumC2731a enumC2731a11 = EnumC2731a.MICRO_OF_SECOND;
            if (map11.containsKey(enumC2731a11)) {
                long longValue11 = ((Long) this.f580a.remove(enumC2731a11)).longValue();
                if (this.f584e != enumC2717z4) {
                    enumC2731a11.m753j(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                m817q(enumC2731a11, enumC2731a10, Long.valueOf(longValue10));
            }
            Map map12 = this.f580a;
            EnumC2731a enumC2731a12 = EnumC2731a.MILLI_OF_SECOND;
            if (map12.containsKey(enumC2731a12)) {
                long longValue12 = ((Long) this.f580a.remove(enumC2731a12)).longValue();
                if (this.f584e != enumC2717z4) {
                    enumC2731a12.m753j(longValue12);
                }
                m817q(enumC2731a12, enumC2731a10, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.f580a;
        EnumC2731a enumC2731a13 = EnumC2731a.HOUR_OF_DAY;
        if (map13.containsKey(enumC2731a13)) {
            Map map14 = this.f580a;
            EnumC2731a enumC2731a14 = EnumC2731a.MINUTE_OF_HOUR;
            if (map14.containsKey(enumC2731a14)) {
                Map map15 = this.f580a;
                EnumC2731a enumC2731a15 = EnumC2731a.SECOND_OF_MINUTE;
                if (map15.containsKey(enumC2731a15) && this.f580a.containsKey(enumC2731a10)) {
                    m821m(((Long) this.f580a.remove(enumC2731a13)).longValue(), ((Long) this.f580a.remove(enumC2731a14)).longValue(), ((Long) this.f580a.remove(enumC2731a15)).longValue(), ((Long) this.f580a.remove(enumC2731a10)).longValue());
                }
            }
        }
    }

    /* renamed from: o */
    private void m819o(C2719h c2719h, C2723l c2723l) {
        C2719h c2719h2 = this.f586g;
        if (c2719h2 == null) {
            this.f586g = c2719h;
        } else if (!c2719h2.equals(c2719h)) {
            StringBuilder m961a = AbstractC2676a.m961a("Conflict found: Fields resolved to different times: ");
            m961a.append(this.f586g);
            m961a.append(" ");
            m961a.append(c2719h);
            throw new DateTimeException(m961a.toString());
        } else if (!this.f587h.m792c() && !c2723l.m792c() && !this.f587h.equals(c2723l)) {
            StringBuilder m961a2 = AbstractC2676a.m961a("Conflict found: Fields resolved to different excess periods: ");
            m961a2.append(this.f587h);
            m961a2.append(" ");
            m961a2.append(c2723l);
            throw new DateTimeException(m961a2.toString());
        }
        this.f587h = c2723l;
    }

    /* renamed from: p */
    private void m818p(InterfaceC2680b interfaceC2680b) {
        InterfaceC2680b interfaceC2680b2 = this.f585f;
        if (interfaceC2680b2 != null) {
            if (interfaceC2680b == null || ((C2687d) interfaceC2680b2).equals(interfaceC2680b)) {
                return;
            }
            StringBuilder m961a = AbstractC2676a.m961a("Conflict found: Fields resolved to two different dates: ");
            m961a.append(this.f585f);
            m961a.append(" ");
            m961a.append(interfaceC2680b);
            throw new DateTimeException(m961a.toString());
        } else if (interfaceC2680b != null) {
            if (((AbstractC2679a) this.f582c).equals(C2686h.f501a)) {
                this.f585f = interfaceC2680b;
                return;
            }
            StringBuilder m961a2 = AbstractC2676a.m961a("ChronoLocalDate must use the effective parsed chronology: ");
            m961a2.append(this.f582c);
            throw new DateTimeException(m961a2.toString());
        }
    }

    /* renamed from: q */
    private void m817q(InterfaceC2745o interfaceC2745o, InterfaceC2745o interfaceC2745o2, Long l) {
        Long l2 = (Long) this.f580a.put(interfaceC2745o2, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new DateTimeException("Conflict found: " + interfaceC2745o2 + " " + l2 + " differs from " + interfaceC2745o2 + " " + l + " while resolving  " + interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public /* synthetic */ int mo741c(InterfaceC2745o interfaceC2745o) {
        return AbstractC2744n.m735a(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public /* synthetic */ C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        return AbstractC2744n.m733c(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        Objects.requireNonNull(interfaceC2745o, "field");
        Long l = (Long) this.f580a.get(interfaceC2745o);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC2680b interfaceC2680b = this.f585f;
        if (interfaceC2680b == null || !((C2687d) interfaceC2680b).mo737i(interfaceC2745o)) {
            C2719h c2719h = this.f586g;
            if (c2719h == null || !c2719h.mo737i(interfaceC2745o)) {
                if (interfaceC2745o instanceof EnumC2731a) {
                    throw new C2756z("Unsupported field: " + interfaceC2745o);
                }
                return interfaceC2745o.mo728d(this);
            }
            return this.f586g.mo739e(interfaceC2745o);
        }
        return ((C2687d) this.f585f).mo739e(interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: g */
    public Object mo738g(InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        if (interfaceC2754x == C2746p.f640a) {
            return this.f581b;
        }
        if (interfaceC2754x == C2747q.f641a) {
            return this.f582c;
        }
        if (interfaceC2754x == C2751u.f645a) {
            InterfaceC2680b interfaceC2680b = this.f585f;
            if (interfaceC2680b != null) {
                return C2687d.m945l(interfaceC2680b);
            }
            return null;
        } else if (interfaceC2754x == C2752v.f646a) {
            return this.f586g;
        } else {
            if (interfaceC2754x == C2750t.f644a || interfaceC2754x == C2749s.f643a) {
                return interfaceC2754x.mo723a(this);
            }
            if (interfaceC2754x == C2748r.f642a) {
                return null;
            }
            return interfaceC2754x.mo723a(this);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        if (this.f580a.containsKey(interfaceC2745o)) {
            return true;
        }
        InterfaceC2680b interfaceC2680b = this.f585f;
        if (interfaceC2680b == null || !((C2687d) interfaceC2680b).mo737i(interfaceC2745o)) {
            C2719h c2719h = this.f586g;
            if (c2719h == null || !c2719h.mo737i(interfaceC2745o)) {
                return (interfaceC2745o == null || (interfaceC2745o instanceof EnumC2731a) || !interfaceC2745o.mo727e(this)) ? false : true;
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
    public p033j$.time.temporal.InterfaceC2741k m824j(p033j$.time.format.EnumC2717z r19, java.util.Set r20) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2716y.m824j(j$.time.format.z, java.util.Set):j$.time.temporal.k");
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
            InterfaceC2680b interfaceC2680b = this.f585f;
            if (interfaceC2680b != null) {
                sb.append(interfaceC2680b);
                if (this.f586g != null) {
                    sb.append('T');
                }
            }
            sb.append(this.f586g);
        }
        return sb.toString();
    }
}
