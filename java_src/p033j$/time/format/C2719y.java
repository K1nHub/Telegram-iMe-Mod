package p033j$.time.format;

import com.google.android.exoplayer2.C0485C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2673d;
import p033j$.time.AbstractC2679a;
import p033j$.time.AbstractC2728n;
import p033j$.time.C2690d;
import p033j$.time.C2722h;
import p033j$.time.C2726l;
import p033j$.time.C2729o;
import p033j$.time.C2732r;
import p033j$.time.DateTimeException;
import p033j$.time.Instant;
import p033j$.time.chrono.AbstractC2682a;
import p033j$.time.chrono.C2689h;
import p033j$.time.chrono.InterfaceC2683b;
import p033j$.time.chrono.InterfaceC2688g;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2749p;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.C2752s;
import p033j$.time.temporal.C2753t;
import p033j$.time.temporal.C2754u;
import p033j$.time.temporal.C2755v;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.y */
/* loaded from: classes2.dex */
public final class C2719y implements InterfaceC2744k {

    /* renamed from: b */
    AbstractC2728n f581b;

    /* renamed from: c */
    InterfaceC2688g f582c;

    /* renamed from: d */
    boolean f583d;

    /* renamed from: e */
    private EnumC2720z f584e;

    /* renamed from: f */
    private InterfaceC2683b f585f;

    /* renamed from: g */
    private C2722h f586g;

    /* renamed from: a */
    final Map f580a = new HashMap();

    /* renamed from: h */
    C2726l f587h = C2726l.f603d;

    /* renamed from: h */
    private void m825h(InterfaceC2744k interfaceC2744k) {
        Iterator it = this.f580a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            InterfaceC2748o interfaceC2748o = (InterfaceC2748o) entry.getKey();
            if (interfaceC2744k.mo737i(interfaceC2748o)) {
                try {
                    long mo739e = interfaceC2744k.mo739e(interfaceC2748o);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (mo739e != longValue) {
                        throw new DateTimeException("Conflict found: Field " + interfaceC2748o + " " + mo739e + " differs from " + interfaceC2748o + " " + longValue + " derived from " + interfaceC2744k);
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
        if (this.f580a.containsKey(EnumC2734a.INSTANT_SECONDS)) {
            AbstractC2728n abstractC2728n = this.f581b;
            if (abstractC2728n == null) {
                Long l = (Long) this.f580a.get(EnumC2734a.OFFSET_SECONDS);
                if (l == null) {
                    return;
                }
                abstractC2728n = C2729o.m782s(l.intValue());
            }
            m822l(abstractC2728n);
        }
    }

    /* renamed from: l */
    private void m822l(AbstractC2728n abstractC2728n) {
        Map map = this.f580a;
        EnumC2734a enumC2734a = EnumC2734a.INSTANT_SECONDS;
        Instant m976m = Instant.m976m(((Long) map.remove(enumC2734a)).longValue());
        Objects.requireNonNull((C2689h) this.f582c);
        C2732r m773m = C2732r.m773m(m976m, abstractC2728n);
        m818p(m773m.m768r());
        m817q(enumC2734a, EnumC2734a.SECOND_OF_DAY, Long.valueOf(m773m.m766t().m803w()));
    }

    /* renamed from: m */
    private void m821m(long j, long j2, long j3, long j4) {
        C2722h m810p;
        C2726l c2726l;
        if (this.f584e == EnumC2720z.LENIENT) {
            long m990c = AbstractC2673d.m990c(AbstractC2673d.m990c(AbstractC2673d.m990c(AbstractC2673d.m987f(j, 3600000000000L), AbstractC2673d.m987f(j2, 60000000000L)), AbstractC2673d.m987f(j3, C0485C.NANOS_PER_SECOND)), j4);
            m810p = C2722h.m809q(AbstractC2673d.m989d(m990c, 86400000000000L));
            c2726l = C2726l.m791d((int) AbstractC2673d.m988e(m990c, 86400000000000L));
        } else {
            int m754i = EnumC2734a.MINUTE_OF_HOUR.m754i(j2);
            int m754i2 = EnumC2734a.NANO_OF_SECOND.m754i(j4);
            if (this.f584e == EnumC2720z.SMART && j == 24 && m754i == 0 && j3 == 0 && m754i2 == 0) {
                m810p = C2722h.f593g;
                c2726l = C2726l.m791d(1);
            } else {
                m810p = C2722h.m810p(EnumC2734a.HOUR_OF_DAY.m754i(j), m754i, EnumC2734a.SECOND_OF_MINUTE.m754i(j3), m754i2);
                c2726l = C2726l.f603d;
            }
        }
        m819o(m810p, c2726l);
    }

    /* renamed from: n */
    private void m820n() {
        InterfaceC2748o interfaceC2748o;
        Long valueOf;
        Map map = this.f580a;
        EnumC2734a enumC2734a = EnumC2734a.CLOCK_HOUR_OF_DAY;
        if (map.containsKey(enumC2734a)) {
            long longValue = ((Long) this.f580a.remove(enumC2734a)).longValue();
            EnumC2720z enumC2720z = this.f584e;
            if (enumC2720z == EnumC2720z.STRICT || (enumC2720z == EnumC2720z.SMART && longValue != 0)) {
                enumC2734a.m753j(longValue);
            }
            InterfaceC2748o interfaceC2748o2 = EnumC2734a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            m817q(enumC2734a, interfaceC2748o2, Long.valueOf(longValue));
        }
        Map map2 = this.f580a;
        EnumC2734a enumC2734a2 = EnumC2734a.CLOCK_HOUR_OF_AMPM;
        if (map2.containsKey(enumC2734a2)) {
            long longValue2 = ((Long) this.f580a.remove(enumC2734a2)).longValue();
            EnumC2720z enumC2720z2 = this.f584e;
            if (enumC2720z2 == EnumC2720z.STRICT || (enumC2720z2 == EnumC2720z.SMART && longValue2 != 0)) {
                enumC2734a2.m753j(longValue2);
            }
            m817q(enumC2734a2, EnumC2734a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.f580a;
        EnumC2734a enumC2734a3 = EnumC2734a.AMPM_OF_DAY;
        if (map3.containsKey(enumC2734a3)) {
            Map map4 = this.f580a;
            EnumC2734a enumC2734a4 = EnumC2734a.HOUR_OF_AMPM;
            if (map4.containsKey(enumC2734a4)) {
                long longValue3 = ((Long) this.f580a.remove(enumC2734a3)).longValue();
                long longValue4 = ((Long) this.f580a.remove(enumC2734a4)).longValue();
                if (this.f584e == EnumC2720z.LENIENT) {
                    interfaceC2748o = EnumC2734a.HOUR_OF_DAY;
                    valueOf = Long.valueOf(AbstractC2673d.m990c(AbstractC2673d.m987f(longValue3, 12L), longValue4));
                } else {
                    enumC2734a3.m753j(longValue3);
                    enumC2734a4.m753j(longValue3);
                    interfaceC2748o = EnumC2734a.HOUR_OF_DAY;
                    valueOf = Long.valueOf((longValue3 * 12) + longValue4);
                }
                m817q(enumC2734a3, interfaceC2748o, valueOf);
            }
        }
        Map map5 = this.f580a;
        EnumC2734a enumC2734a5 = EnumC2734a.NANO_OF_DAY;
        if (map5.containsKey(enumC2734a5)) {
            long longValue5 = ((Long) this.f580a.remove(enumC2734a5)).longValue();
            if (this.f584e != EnumC2720z.LENIENT) {
                enumC2734a5.m753j(longValue5);
            }
            m817q(enumC2734a5, EnumC2734a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            m817q(enumC2734a5, EnumC2734a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            m817q(enumC2734a5, EnumC2734a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / C0485C.NANOS_PER_SECOND) % 60));
            m817q(enumC2734a5, EnumC2734a.NANO_OF_SECOND, Long.valueOf(longValue5 % C0485C.NANOS_PER_SECOND));
        }
        Map map6 = this.f580a;
        EnumC2734a enumC2734a6 = EnumC2734a.MICRO_OF_DAY;
        if (map6.containsKey(enumC2734a6)) {
            long longValue6 = ((Long) this.f580a.remove(enumC2734a6)).longValue();
            if (this.f584e != EnumC2720z.LENIENT) {
                enumC2734a6.m753j(longValue6);
            }
            m817q(enumC2734a6, EnumC2734a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            m817q(enumC2734a6, EnumC2734a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.f580a;
        EnumC2734a enumC2734a7 = EnumC2734a.MILLI_OF_DAY;
        if (map7.containsKey(enumC2734a7)) {
            long longValue7 = ((Long) this.f580a.remove(enumC2734a7)).longValue();
            if (this.f584e != EnumC2720z.LENIENT) {
                enumC2734a7.m753j(longValue7);
            }
            m817q(enumC2734a7, EnumC2734a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            m817q(enumC2734a7, EnumC2734a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.f580a;
        EnumC2734a enumC2734a8 = EnumC2734a.SECOND_OF_DAY;
        if (map8.containsKey(enumC2734a8)) {
            long longValue8 = ((Long) this.f580a.remove(enumC2734a8)).longValue();
            if (this.f584e != EnumC2720z.LENIENT) {
                enumC2734a8.m753j(longValue8);
            }
            m817q(enumC2734a8, EnumC2734a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            m817q(enumC2734a8, EnumC2734a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            m817q(enumC2734a8, EnumC2734a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.f580a;
        EnumC2734a enumC2734a9 = EnumC2734a.MINUTE_OF_DAY;
        if (map9.containsKey(enumC2734a9)) {
            long longValue9 = ((Long) this.f580a.remove(enumC2734a9)).longValue();
            if (this.f584e != EnumC2720z.LENIENT) {
                enumC2734a9.m753j(longValue9);
            }
            m817q(enumC2734a9, EnumC2734a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            m817q(enumC2734a9, EnumC2734a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.f580a;
        EnumC2734a enumC2734a10 = EnumC2734a.NANO_OF_SECOND;
        if (map10.containsKey(enumC2734a10)) {
            long longValue10 = ((Long) this.f580a.get(enumC2734a10)).longValue();
            EnumC2720z enumC2720z3 = this.f584e;
            EnumC2720z enumC2720z4 = EnumC2720z.LENIENT;
            if (enumC2720z3 != enumC2720z4) {
                enumC2734a10.m753j(longValue10);
            }
            Map map11 = this.f580a;
            EnumC2734a enumC2734a11 = EnumC2734a.MICRO_OF_SECOND;
            if (map11.containsKey(enumC2734a11)) {
                long longValue11 = ((Long) this.f580a.remove(enumC2734a11)).longValue();
                if (this.f584e != enumC2720z4) {
                    enumC2734a11.m753j(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                m817q(enumC2734a11, enumC2734a10, Long.valueOf(longValue10));
            }
            Map map12 = this.f580a;
            EnumC2734a enumC2734a12 = EnumC2734a.MILLI_OF_SECOND;
            if (map12.containsKey(enumC2734a12)) {
                long longValue12 = ((Long) this.f580a.remove(enumC2734a12)).longValue();
                if (this.f584e != enumC2720z4) {
                    enumC2734a12.m753j(longValue12);
                }
                m817q(enumC2734a12, enumC2734a10, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.f580a;
        EnumC2734a enumC2734a13 = EnumC2734a.HOUR_OF_DAY;
        if (map13.containsKey(enumC2734a13)) {
            Map map14 = this.f580a;
            EnumC2734a enumC2734a14 = EnumC2734a.MINUTE_OF_HOUR;
            if (map14.containsKey(enumC2734a14)) {
                Map map15 = this.f580a;
                EnumC2734a enumC2734a15 = EnumC2734a.SECOND_OF_MINUTE;
                if (map15.containsKey(enumC2734a15) && this.f580a.containsKey(enumC2734a10)) {
                    m821m(((Long) this.f580a.remove(enumC2734a13)).longValue(), ((Long) this.f580a.remove(enumC2734a14)).longValue(), ((Long) this.f580a.remove(enumC2734a15)).longValue(), ((Long) this.f580a.remove(enumC2734a10)).longValue());
                }
            }
        }
    }

    /* renamed from: o */
    private void m819o(C2722h c2722h, C2726l c2726l) {
        C2722h c2722h2 = this.f586g;
        if (c2722h2 == null) {
            this.f586g = c2722h;
        } else if (!c2722h2.equals(c2722h)) {
            StringBuilder m961a = AbstractC2679a.m961a("Conflict found: Fields resolved to different times: ");
            m961a.append(this.f586g);
            m961a.append(" ");
            m961a.append(c2722h);
            throw new DateTimeException(m961a.toString());
        } else if (!this.f587h.m792c() && !c2726l.m792c() && !this.f587h.equals(c2726l)) {
            StringBuilder m961a2 = AbstractC2679a.m961a("Conflict found: Fields resolved to different excess periods: ");
            m961a2.append(this.f587h);
            m961a2.append(" ");
            m961a2.append(c2726l);
            throw new DateTimeException(m961a2.toString());
        }
        this.f587h = c2726l;
    }

    /* renamed from: p */
    private void m818p(InterfaceC2683b interfaceC2683b) {
        InterfaceC2683b interfaceC2683b2 = this.f585f;
        if (interfaceC2683b2 != null) {
            if (interfaceC2683b == null || ((C2690d) interfaceC2683b2).equals(interfaceC2683b)) {
                return;
            }
            StringBuilder m961a = AbstractC2679a.m961a("Conflict found: Fields resolved to two different dates: ");
            m961a.append(this.f585f);
            m961a.append(" ");
            m961a.append(interfaceC2683b);
            throw new DateTimeException(m961a.toString());
        } else if (interfaceC2683b != null) {
            if (((AbstractC2682a) this.f582c).equals(C2689h.f501a)) {
                this.f585f = interfaceC2683b;
                return;
            }
            StringBuilder m961a2 = AbstractC2679a.m961a("ChronoLocalDate must use the effective parsed chronology: ");
            m961a2.append(this.f582c);
            throw new DateTimeException(m961a2.toString());
        }
    }

    /* renamed from: q */
    private void m817q(InterfaceC2748o interfaceC2748o, InterfaceC2748o interfaceC2748o2, Long l) {
        Long l2 = (Long) this.f580a.put(interfaceC2748o2, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new DateTimeException("Conflict found: " + interfaceC2748o2 + " " + l2 + " differs from " + interfaceC2748o2 + " " + l + " while resolving  " + interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public /* synthetic */ int mo741c(InterfaceC2748o interfaceC2748o) {
        return AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public /* synthetic */ C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return AbstractC2747n.m733c(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        Objects.requireNonNull(interfaceC2748o, "field");
        Long l = (Long) this.f580a.get(interfaceC2748o);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC2683b interfaceC2683b = this.f585f;
        if (interfaceC2683b == null || !((C2690d) interfaceC2683b).mo737i(interfaceC2748o)) {
            C2722h c2722h = this.f586g;
            if (c2722h == null || !c2722h.mo737i(interfaceC2748o)) {
                if (interfaceC2748o instanceof EnumC2734a) {
                    throw new C2759z("Unsupported field: " + interfaceC2748o);
                }
                return interfaceC2748o.mo728d(this);
            }
            return this.f586g.mo739e(interfaceC2748o);
        }
        return ((C2690d) this.f585f).mo739e(interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2749p.f640a) {
            return this.f581b;
        }
        if (interfaceC2757x == C2750q.f641a) {
            return this.f582c;
        }
        if (interfaceC2757x == C2754u.f645a) {
            InterfaceC2683b interfaceC2683b = this.f585f;
            if (interfaceC2683b != null) {
                return C2690d.m945l(interfaceC2683b);
            }
            return null;
        } else if (interfaceC2757x == C2755v.f646a) {
            return this.f586g;
        } else {
            if (interfaceC2757x == C2753t.f644a || interfaceC2757x == C2752s.f643a) {
                return interfaceC2757x.mo723a(this);
            }
            if (interfaceC2757x == C2751r.f642a) {
                return null;
            }
            return interfaceC2757x.mo723a(this);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        if (this.f580a.containsKey(interfaceC2748o)) {
            return true;
        }
        InterfaceC2683b interfaceC2683b = this.f585f;
        if (interfaceC2683b == null || !((C2690d) interfaceC2683b).mo737i(interfaceC2748o)) {
            C2722h c2722h = this.f586g;
            if (c2722h == null || !c2722h.mo737i(interfaceC2748o)) {
                return (interfaceC2748o == null || (interfaceC2748o instanceof EnumC2734a) || !interfaceC2748o.mo727e(this)) ? false : true;
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
    public p033j$.time.temporal.InterfaceC2744k m824j(p033j$.time.format.EnumC2720z r19, java.util.Set r20) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2719y.m824j(j$.time.format.z, java.util.Set):j$.time.temporal.k");
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
            InterfaceC2683b interfaceC2683b = this.f585f;
            if (interfaceC2683b != null) {
                sb.append(interfaceC2683b);
                if (this.f586g != null) {
                    sb.append('T');
                }
            }
            sb.append(this.f586g);
        }
        return sb.toString();
    }
}
