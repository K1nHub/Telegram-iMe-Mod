package p033j$.time.format;

import com.google.android.exoplayer2.C0483C;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import p033j$.lang.AbstractC2668d;
import p033j$.time.AbstractC2674a;
import p033j$.time.AbstractC2723n;
import p033j$.time.C2685d;
import p033j$.time.C2717h;
import p033j$.time.C2721l;
import p033j$.time.C2724o;
import p033j$.time.C2727r;
import p033j$.time.DateTimeException;
import p033j$.time.Instant;
import p033j$.time.chrono.AbstractC2677a;
import p033j$.time.chrono.C2684h;
import p033j$.time.chrono.InterfaceC2678b;
import p033j$.time.chrono.InterfaceC2683g;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2744p;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.C2746r;
import p033j$.time.temporal.C2747s;
import p033j$.time.temporal.C2748t;
import p033j$.time.temporal.C2749u;
import p033j$.time.temporal.C2750v;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.y */
/* loaded from: classes2.dex */
public final class C2714y implements InterfaceC2739k {

    /* renamed from: b */
    AbstractC2723n f581b;

    /* renamed from: c */
    InterfaceC2683g f582c;

    /* renamed from: d */
    boolean f583d;

    /* renamed from: e */
    private EnumC2715z f584e;

    /* renamed from: f */
    private InterfaceC2678b f585f;

    /* renamed from: g */
    private C2717h f586g;

    /* renamed from: a */
    final Map f580a = new HashMap();

    /* renamed from: h */
    C2721l f587h = C2721l.f603d;

    /* renamed from: h */
    private void m828h(InterfaceC2739k interfaceC2739k) {
        Iterator it = this.f580a.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            InterfaceC2743o interfaceC2743o = (InterfaceC2743o) entry.getKey();
            if (interfaceC2739k.mo740i(interfaceC2743o)) {
                try {
                    long mo742e = interfaceC2739k.mo742e(interfaceC2743o);
                    long longValue = ((Long) entry.getValue()).longValue();
                    if (mo742e != longValue) {
                        throw new DateTimeException("Conflict found: Field " + interfaceC2743o + " " + mo742e + " differs from " + interfaceC2743o + " " + longValue + " derived from " + interfaceC2739k);
                    }
                    it.remove();
                } catch (RuntimeException unused) {
                    continue;
                }
            }
        }
    }

    /* renamed from: k */
    private void m826k() {
        if (this.f580a.containsKey(EnumC2729a.INSTANT_SECONDS)) {
            AbstractC2723n abstractC2723n = this.f581b;
            if (abstractC2723n == null) {
                Long l = (Long) this.f580a.get(EnumC2729a.OFFSET_SECONDS);
                if (l == null) {
                    return;
                }
                abstractC2723n = C2724o.m785s(l.intValue());
            }
            m825l(abstractC2723n);
        }
    }

    /* renamed from: l */
    private void m825l(AbstractC2723n abstractC2723n) {
        Map map = this.f580a;
        EnumC2729a enumC2729a = EnumC2729a.INSTANT_SECONDS;
        Instant m979m = Instant.m979m(((Long) map.remove(enumC2729a)).longValue());
        Objects.requireNonNull((C2684h) this.f582c);
        C2727r m776m = C2727r.m776m(m979m, abstractC2723n);
        m821p(m776m.m771r());
        m820q(enumC2729a, EnumC2729a.SECOND_OF_DAY, Long.valueOf(m776m.m769t().m806w()));
    }

    /* renamed from: m */
    private void m824m(long j, long j2, long j3, long j4) {
        C2717h m813p;
        C2721l c2721l;
        if (this.f584e == EnumC2715z.LENIENT) {
            long m993c = AbstractC2668d.m993c(AbstractC2668d.m993c(AbstractC2668d.m993c(AbstractC2668d.m990f(j, 3600000000000L), AbstractC2668d.m990f(j2, 60000000000L)), AbstractC2668d.m990f(j3, C0483C.NANOS_PER_SECOND)), j4);
            m813p = C2717h.m812q(AbstractC2668d.m992d(m993c, 86400000000000L));
            c2721l = C2721l.m794d((int) AbstractC2668d.m991e(m993c, 86400000000000L));
        } else {
            int m757i = EnumC2729a.MINUTE_OF_HOUR.m757i(j2);
            int m757i2 = EnumC2729a.NANO_OF_SECOND.m757i(j4);
            if (this.f584e == EnumC2715z.SMART && j == 24 && m757i == 0 && j3 == 0 && m757i2 == 0) {
                m813p = C2717h.f593g;
                c2721l = C2721l.m794d(1);
            } else {
                m813p = C2717h.m813p(EnumC2729a.HOUR_OF_DAY.m757i(j), m757i, EnumC2729a.SECOND_OF_MINUTE.m757i(j3), m757i2);
                c2721l = C2721l.f603d;
            }
        }
        m822o(m813p, c2721l);
    }

    /* renamed from: n */
    private void m823n() {
        InterfaceC2743o interfaceC2743o;
        Long valueOf;
        Map map = this.f580a;
        EnumC2729a enumC2729a = EnumC2729a.CLOCK_HOUR_OF_DAY;
        if (map.containsKey(enumC2729a)) {
            long longValue = ((Long) this.f580a.remove(enumC2729a)).longValue();
            EnumC2715z enumC2715z = this.f584e;
            if (enumC2715z == EnumC2715z.STRICT || (enumC2715z == EnumC2715z.SMART && longValue != 0)) {
                enumC2729a.m756j(longValue);
            }
            InterfaceC2743o interfaceC2743o2 = EnumC2729a.HOUR_OF_DAY;
            if (longValue == 24) {
                longValue = 0;
            }
            m820q(enumC2729a, interfaceC2743o2, Long.valueOf(longValue));
        }
        Map map2 = this.f580a;
        EnumC2729a enumC2729a2 = EnumC2729a.CLOCK_HOUR_OF_AMPM;
        if (map2.containsKey(enumC2729a2)) {
            long longValue2 = ((Long) this.f580a.remove(enumC2729a2)).longValue();
            EnumC2715z enumC2715z2 = this.f584e;
            if (enumC2715z2 == EnumC2715z.STRICT || (enumC2715z2 == EnumC2715z.SMART && longValue2 != 0)) {
                enumC2729a2.m756j(longValue2);
            }
            m820q(enumC2729a2, EnumC2729a.HOUR_OF_AMPM, Long.valueOf(longValue2 != 12 ? longValue2 : 0L));
        }
        Map map3 = this.f580a;
        EnumC2729a enumC2729a3 = EnumC2729a.AMPM_OF_DAY;
        if (map3.containsKey(enumC2729a3)) {
            Map map4 = this.f580a;
            EnumC2729a enumC2729a4 = EnumC2729a.HOUR_OF_AMPM;
            if (map4.containsKey(enumC2729a4)) {
                long longValue3 = ((Long) this.f580a.remove(enumC2729a3)).longValue();
                long longValue4 = ((Long) this.f580a.remove(enumC2729a4)).longValue();
                if (this.f584e == EnumC2715z.LENIENT) {
                    interfaceC2743o = EnumC2729a.HOUR_OF_DAY;
                    valueOf = Long.valueOf(AbstractC2668d.m993c(AbstractC2668d.m990f(longValue3, 12L), longValue4));
                } else {
                    enumC2729a3.m756j(longValue3);
                    enumC2729a4.m756j(longValue3);
                    interfaceC2743o = EnumC2729a.HOUR_OF_DAY;
                    valueOf = Long.valueOf((longValue3 * 12) + longValue4);
                }
                m820q(enumC2729a3, interfaceC2743o, valueOf);
            }
        }
        Map map5 = this.f580a;
        EnumC2729a enumC2729a5 = EnumC2729a.NANO_OF_DAY;
        if (map5.containsKey(enumC2729a5)) {
            long longValue5 = ((Long) this.f580a.remove(enumC2729a5)).longValue();
            if (this.f584e != EnumC2715z.LENIENT) {
                enumC2729a5.m756j(longValue5);
            }
            m820q(enumC2729a5, EnumC2729a.HOUR_OF_DAY, Long.valueOf(longValue5 / 3600000000000L));
            m820q(enumC2729a5, EnumC2729a.MINUTE_OF_HOUR, Long.valueOf((longValue5 / 60000000000L) % 60));
            m820q(enumC2729a5, EnumC2729a.SECOND_OF_MINUTE, Long.valueOf((longValue5 / C0483C.NANOS_PER_SECOND) % 60));
            m820q(enumC2729a5, EnumC2729a.NANO_OF_SECOND, Long.valueOf(longValue5 % C0483C.NANOS_PER_SECOND));
        }
        Map map6 = this.f580a;
        EnumC2729a enumC2729a6 = EnumC2729a.MICRO_OF_DAY;
        if (map6.containsKey(enumC2729a6)) {
            long longValue6 = ((Long) this.f580a.remove(enumC2729a6)).longValue();
            if (this.f584e != EnumC2715z.LENIENT) {
                enumC2729a6.m756j(longValue6);
            }
            m820q(enumC2729a6, EnumC2729a.SECOND_OF_DAY, Long.valueOf(longValue6 / 1000000));
            m820q(enumC2729a6, EnumC2729a.MICRO_OF_SECOND, Long.valueOf(longValue6 % 1000000));
        }
        Map map7 = this.f580a;
        EnumC2729a enumC2729a7 = EnumC2729a.MILLI_OF_DAY;
        if (map7.containsKey(enumC2729a7)) {
            long longValue7 = ((Long) this.f580a.remove(enumC2729a7)).longValue();
            if (this.f584e != EnumC2715z.LENIENT) {
                enumC2729a7.m756j(longValue7);
            }
            m820q(enumC2729a7, EnumC2729a.SECOND_OF_DAY, Long.valueOf(longValue7 / 1000));
            m820q(enumC2729a7, EnumC2729a.MILLI_OF_SECOND, Long.valueOf(longValue7 % 1000));
        }
        Map map8 = this.f580a;
        EnumC2729a enumC2729a8 = EnumC2729a.SECOND_OF_DAY;
        if (map8.containsKey(enumC2729a8)) {
            long longValue8 = ((Long) this.f580a.remove(enumC2729a8)).longValue();
            if (this.f584e != EnumC2715z.LENIENT) {
                enumC2729a8.m756j(longValue8);
            }
            m820q(enumC2729a8, EnumC2729a.HOUR_OF_DAY, Long.valueOf(longValue8 / 3600));
            m820q(enumC2729a8, EnumC2729a.MINUTE_OF_HOUR, Long.valueOf((longValue8 / 60) % 60));
            m820q(enumC2729a8, EnumC2729a.SECOND_OF_MINUTE, Long.valueOf(longValue8 % 60));
        }
        Map map9 = this.f580a;
        EnumC2729a enumC2729a9 = EnumC2729a.MINUTE_OF_DAY;
        if (map9.containsKey(enumC2729a9)) {
            long longValue9 = ((Long) this.f580a.remove(enumC2729a9)).longValue();
            if (this.f584e != EnumC2715z.LENIENT) {
                enumC2729a9.m756j(longValue9);
            }
            m820q(enumC2729a9, EnumC2729a.HOUR_OF_DAY, Long.valueOf(longValue9 / 60));
            m820q(enumC2729a9, EnumC2729a.MINUTE_OF_HOUR, Long.valueOf(longValue9 % 60));
        }
        Map map10 = this.f580a;
        EnumC2729a enumC2729a10 = EnumC2729a.NANO_OF_SECOND;
        if (map10.containsKey(enumC2729a10)) {
            long longValue10 = ((Long) this.f580a.get(enumC2729a10)).longValue();
            EnumC2715z enumC2715z3 = this.f584e;
            EnumC2715z enumC2715z4 = EnumC2715z.LENIENT;
            if (enumC2715z3 != enumC2715z4) {
                enumC2729a10.m756j(longValue10);
            }
            Map map11 = this.f580a;
            EnumC2729a enumC2729a11 = EnumC2729a.MICRO_OF_SECOND;
            if (map11.containsKey(enumC2729a11)) {
                long longValue11 = ((Long) this.f580a.remove(enumC2729a11)).longValue();
                if (this.f584e != enumC2715z4) {
                    enumC2729a11.m756j(longValue11);
                }
                longValue10 = (longValue10 % 1000) + (longValue11 * 1000);
                m820q(enumC2729a11, enumC2729a10, Long.valueOf(longValue10));
            }
            Map map12 = this.f580a;
            EnumC2729a enumC2729a12 = EnumC2729a.MILLI_OF_SECOND;
            if (map12.containsKey(enumC2729a12)) {
                long longValue12 = ((Long) this.f580a.remove(enumC2729a12)).longValue();
                if (this.f584e != enumC2715z4) {
                    enumC2729a12.m756j(longValue12);
                }
                m820q(enumC2729a12, enumC2729a10, Long.valueOf((longValue10 % 1000000) + (longValue12 * 1000000)));
            }
        }
        Map map13 = this.f580a;
        EnumC2729a enumC2729a13 = EnumC2729a.HOUR_OF_DAY;
        if (map13.containsKey(enumC2729a13)) {
            Map map14 = this.f580a;
            EnumC2729a enumC2729a14 = EnumC2729a.MINUTE_OF_HOUR;
            if (map14.containsKey(enumC2729a14)) {
                Map map15 = this.f580a;
                EnumC2729a enumC2729a15 = EnumC2729a.SECOND_OF_MINUTE;
                if (map15.containsKey(enumC2729a15) && this.f580a.containsKey(enumC2729a10)) {
                    m824m(((Long) this.f580a.remove(enumC2729a13)).longValue(), ((Long) this.f580a.remove(enumC2729a14)).longValue(), ((Long) this.f580a.remove(enumC2729a15)).longValue(), ((Long) this.f580a.remove(enumC2729a10)).longValue());
                }
            }
        }
    }

    /* renamed from: o */
    private void m822o(C2717h c2717h, C2721l c2721l) {
        C2717h c2717h2 = this.f586g;
        if (c2717h2 == null) {
            this.f586g = c2717h;
        } else if (!c2717h2.equals(c2717h)) {
            StringBuilder m964a = AbstractC2674a.m964a("Conflict found: Fields resolved to different times: ");
            m964a.append(this.f586g);
            m964a.append(" ");
            m964a.append(c2717h);
            throw new DateTimeException(m964a.toString());
        } else if (!this.f587h.m795c() && !c2721l.m795c() && !this.f587h.equals(c2721l)) {
            StringBuilder m964a2 = AbstractC2674a.m964a("Conflict found: Fields resolved to different excess periods: ");
            m964a2.append(this.f587h);
            m964a2.append(" ");
            m964a2.append(c2721l);
            throw new DateTimeException(m964a2.toString());
        }
        this.f587h = c2721l;
    }

    /* renamed from: p */
    private void m821p(InterfaceC2678b interfaceC2678b) {
        InterfaceC2678b interfaceC2678b2 = this.f585f;
        if (interfaceC2678b2 != null) {
            if (interfaceC2678b == null || ((C2685d) interfaceC2678b2).equals(interfaceC2678b)) {
                return;
            }
            StringBuilder m964a = AbstractC2674a.m964a("Conflict found: Fields resolved to two different dates: ");
            m964a.append(this.f585f);
            m964a.append(" ");
            m964a.append(interfaceC2678b);
            throw new DateTimeException(m964a.toString());
        } else if (interfaceC2678b != null) {
            if (((AbstractC2677a) this.f582c).equals(C2684h.f501a)) {
                this.f585f = interfaceC2678b;
                return;
            }
            StringBuilder m964a2 = AbstractC2674a.m964a("ChronoLocalDate must use the effective parsed chronology: ");
            m964a2.append(this.f582c);
            throw new DateTimeException(m964a2.toString());
        }
    }

    /* renamed from: q */
    private void m820q(InterfaceC2743o interfaceC2743o, InterfaceC2743o interfaceC2743o2, Long l) {
        Long l2 = (Long) this.f580a.put(interfaceC2743o2, l);
        if (l2 == null || l2.longValue() == l.longValue()) {
            return;
        }
        throw new DateTimeException("Conflict found: " + interfaceC2743o2 + " " + l2 + " differs from " + interfaceC2743o2 + " " + l + " while resolving  " + interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public /* synthetic */ int mo744c(InterfaceC2743o interfaceC2743o) {
        return AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public /* synthetic */ C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return AbstractC2742n.m736c(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        Objects.requireNonNull(interfaceC2743o, "field");
        Long l = (Long) this.f580a.get(interfaceC2743o);
        if (l != null) {
            return l.longValue();
        }
        InterfaceC2678b interfaceC2678b = this.f585f;
        if (interfaceC2678b == null || !((C2685d) interfaceC2678b).mo740i(interfaceC2743o)) {
            C2717h c2717h = this.f586g;
            if (c2717h == null || !c2717h.mo740i(interfaceC2743o)) {
                if (interfaceC2743o instanceof EnumC2729a) {
                    throw new C2754z("Unsupported field: " + interfaceC2743o);
                }
                return interfaceC2743o.mo731d(this);
            }
            return this.f586g.mo742e(interfaceC2743o);
        }
        return ((C2685d) this.f585f).mo742e(interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2744p.f640a) {
            return this.f581b;
        }
        if (interfaceC2752x == C2745q.f641a) {
            return this.f582c;
        }
        if (interfaceC2752x == C2749u.f645a) {
            InterfaceC2678b interfaceC2678b = this.f585f;
            if (interfaceC2678b != null) {
                return C2685d.m948l(interfaceC2678b);
            }
            return null;
        } else if (interfaceC2752x == C2750v.f646a) {
            return this.f586g;
        } else {
            if (interfaceC2752x == C2748t.f644a || interfaceC2752x == C2747s.f643a) {
                return interfaceC2752x.mo726a(this);
            }
            if (interfaceC2752x == C2746r.f642a) {
                return null;
            }
            return interfaceC2752x.mo726a(this);
        }
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        if (this.f580a.containsKey(interfaceC2743o)) {
            return true;
        }
        InterfaceC2678b interfaceC2678b = this.f585f;
        if (interfaceC2678b == null || !((C2685d) interfaceC2678b).mo740i(interfaceC2743o)) {
            C2717h c2717h = this.f586g;
            if (c2717h == null || !c2717h.mo740i(interfaceC2743o)) {
                return (interfaceC2743o == null || (interfaceC2743o instanceof EnumC2729a) || !interfaceC2743o.mo730e(this)) ? false : true;
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
    public p033j$.time.temporal.InterfaceC2739k m827j(p033j$.time.format.EnumC2715z r19, java.util.Set r20) {
        /*
            Method dump skipped, instructions count: 852
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2714y.m827j(j$.time.format.z, java.util.Set):j$.time.temporal.k");
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
            InterfaceC2678b interfaceC2678b = this.f585f;
            if (interfaceC2678b != null) {
                sb.append(interfaceC2678b);
                if (this.f586g != null) {
                    sb.append('T');
                }
            }
            sb.append(this.f586g);
        }
        return sb.toString();
    }
}
