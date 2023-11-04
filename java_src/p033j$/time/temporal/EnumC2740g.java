package p033j$.time.temporal;

import java.util.Map;
import p033j$.lang.AbstractC2673d;
import p033j$.time.C2690d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2680b;
import p033j$.time.chrono.AbstractC2682a;
import p033j$.time.chrono.AbstractC2685d;
import p033j$.time.chrono.C2689h;
import p033j$.time.format.EnumC2720z;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2740g implements InterfaceC2748o {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: a */
        public C2733A mo731a() {
            return C2733A.m756j(1L, 90L, 92L);
        }

        @Override // p033j$.time.temporal.EnumC2740g, p033j$.time.temporal.InterfaceC2748o
        /* renamed from: c */
        public InterfaceC2744k mo729c(Map map, InterfaceC2744k interfaceC2744k, EnumC2720z enumC2720z) {
            C2690d m939r;
            long j;
            EnumC2734a enumC2734a = EnumC2734a.YEAR;
            Long l = (Long) map.get(enumC2734a);
            InterfaceC2748o interfaceC2748o = EnumC2740g.QUARTER_OF_YEAR;
            Long l2 = (Long) map.get(interfaceC2748o);
            if (l == null || l2 == null) {
                return null;
            }
            int m754i = enumC2734a.m754i(l.longValue());
            long longValue = ((Long) map.get(EnumC2740g.DAY_OF_QUARTER)).longValue();
            EnumC2740g.m751j(interfaceC2744k);
            if (enumC2720z == EnumC2720z.LENIENT) {
                m939r = C2690d.m939r(m754i, 1, 1).m934w(AbstractC2673d.m987f(AbstractC2673d.m986g(l2.longValue(), 1L), 3L));
                j = AbstractC2673d.m986g(longValue, 1L);
            } else {
                m939r = C2690d.m939r(m754i, ((interfaceC2748o.mo731a().m765a(l2.longValue(), interfaceC2748o) - 1) * 3) + 1, 1);
                if (longValue < 1 || longValue > 90) {
                    (enumC2720z == EnumC2720z.STRICT ? mo725g(m939r) : mo731a()).m764b(longValue, this);
                }
                j = longValue - 1;
            }
            map.remove(this);
            map.remove(enumC2734a);
            map.remove(interfaceC2748o);
            return m939r.m935v(j);
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: d */
        public long mo728d(InterfaceC2744k interfaceC2744k) {
            int[] iArr;
            if (mo727e(interfaceC2744k)) {
                int mo741c = interfaceC2744k.mo741c(EnumC2734a.DAY_OF_YEAR);
                int mo741c2 = interfaceC2744k.mo741c(EnumC2734a.MONTH_OF_YEAR);
                long mo739e = interfaceC2744k.mo739e(EnumC2734a.YEAR);
                iArr = EnumC2740g.f632a;
                return mo741c - iArr[((mo741c2 - 1) / 3) + (C2689h.f501a.m954c(mo739e) ? 4 : 0)];
            }
            throw new C2759z("Unsupported field: DayOfQuarter");
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2744k interfaceC2744k) {
            if (interfaceC2744k.mo737i(EnumC2734a.DAY_OF_YEAR) && interfaceC2744k.mo737i(EnumC2734a.MONTH_OF_YEAR) && interfaceC2744k.mo737i(EnumC2734a.YEAR)) {
                if (((AbstractC2682a) AbstractC2685d.m955b(interfaceC2744k)).equals(C2689h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: f */
        public InterfaceC2743j mo726f(InterfaceC2743j interfaceC2743j, long j) {
            long mo728d = mo728d(interfaceC2743j);
            mo731a().m764b(j, this);
            EnumC2734a enumC2734a = EnumC2734a.DAY_OF_YEAR;
            return interfaceC2743j.mo743b(enumC2734a, (j - mo728d) + interfaceC2743j.mo739e(enumC2734a));
        }

        @Override // p033j$.time.temporal.EnumC2740g, p033j$.time.temporal.InterfaceC2748o
        /* renamed from: g */
        public C2733A mo725g(InterfaceC2744k interfaceC2744k) {
            if (mo727e(interfaceC2744k)) {
                long mo739e = interfaceC2744k.mo739e(EnumC2740g.QUARTER_OF_YEAR);
                if (mo739e == 1) {
                    return C2689h.f501a.m954c(interfaceC2744k.mo739e(EnumC2734a.YEAR)) ? C2733A.m757i(1L, 91L) : C2733A.m757i(1L, 90L);
                }
                return mo739e == 2 ? C2733A.m757i(1L, 91L) : (mo739e == 3 || mo739e == 4) ? C2733A.m757i(1L, 92L) : mo731a();
            }
            throw new C2759z("Unsupported field: DayOfQuarter");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: a */
        public C2733A mo731a() {
            return C2733A.m757i(1L, 4L);
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: d */
        public long mo728d(InterfaceC2744k interfaceC2744k) {
            if (mo727e(interfaceC2744k)) {
                return (interfaceC2744k.mo739e(EnumC2734a.MONTH_OF_YEAR) + 2) / 3;
            }
            throw new C2759z("Unsupported field: QuarterOfYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2744k interfaceC2744k) {
            if (interfaceC2744k.mo737i(EnumC2734a.MONTH_OF_YEAR)) {
                if (((AbstractC2682a) AbstractC2685d.m955b(interfaceC2744k)).equals(C2689h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: f */
        public InterfaceC2743j mo726f(InterfaceC2743j interfaceC2743j, long j) {
            long mo728d = mo728d(interfaceC2743j);
            mo731a().m764b(j, this);
            EnumC2734a enumC2734a = EnumC2734a.MONTH_OF_YEAR;
            return interfaceC2743j.mo743b(enumC2734a, ((j - mo728d) * 3) + interfaceC2743j.mo739e(enumC2734a));
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: a */
        public C2733A mo731a() {
            return C2733A.m756j(1L, 52L, 53L);
        }

        @Override // p033j$.time.temporal.EnumC2740g, p033j$.time.temporal.InterfaceC2748o
        /* renamed from: c */
        public InterfaceC2744k mo729c(Map map, InterfaceC2744k interfaceC2744k, EnumC2720z enumC2720z) {
            C2690d mo743b;
            long j;
            C2690d m933x;
            long j2;
            InterfaceC2748o interfaceC2748o = EnumC2740g.WEEK_BASED_YEAR;
            Long l = (Long) map.get(interfaceC2748o);
            EnumC2734a enumC2734a = EnumC2734a.DAY_OF_WEEK;
            Long l2 = (Long) map.get(enumC2734a);
            if (l == null || l2 == null) {
                return null;
            }
            int m765a = interfaceC2748o.mo731a().m765a(l.longValue(), interfaceC2748o);
            long longValue = ((Long) map.get(EnumC2740g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
            EnumC2740g.m751j(interfaceC2744k);
            C2690d m939r = C2690d.m939r(m765a, 1, 4);
            if (enumC2720z == EnumC2720z.LENIENT) {
                long longValue2 = l2.longValue();
                if (longValue2 > 7) {
                    j2 = longValue2 - 1;
                    m933x = m939r.m933x(j2 / 7);
                } else {
                    j = 1;
                    if (longValue2 < 1) {
                        m933x = m939r.m933x(AbstractC2673d.m986g(longValue2, 7L) / 7);
                        j2 = longValue2 + 6;
                    }
                    mo743b = m939r.m933x(AbstractC2673d.m986g(longValue, j)).mo743b(enumC2734a, longValue2);
                }
                m939r = m933x;
                j = 1;
                longValue2 = (j2 % 7) + 1;
                mo743b = m939r.m933x(AbstractC2673d.m986g(longValue, j)).mo743b(enumC2734a, longValue2);
            } else {
                int m754i = enumC2734a.m754i(l2.longValue());
                if (longValue < 1 || longValue > 52) {
                    (enumC2720z == EnumC2720z.STRICT ? EnumC2740g.m750k(m939r) : mo731a()).m764b(longValue, this);
                }
                mo743b = m939r.m933x(longValue - 1).mo743b(enumC2734a, m754i);
            }
            map.remove(this);
            map.remove(interfaceC2748o);
            map.remove(enumC2734a);
            return mo743b;
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: d */
        public long mo728d(InterfaceC2744k interfaceC2744k) {
            if (mo727e(interfaceC2744k)) {
                return EnumC2740g.m749l(C2690d.m945l(interfaceC2744k));
            }
            throw new C2759z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2744k interfaceC2744k) {
            if (interfaceC2744k.mo737i(EnumC2734a.EPOCH_DAY)) {
                if (((AbstractC2682a) AbstractC2685d.m955b(interfaceC2744k)).equals(C2689h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: f */
        public InterfaceC2743j mo726f(InterfaceC2743j interfaceC2743j, long j) {
            mo731a().m764b(j, this);
            return interfaceC2743j.mo742f(AbstractC2673d.m986g(j, mo728d(interfaceC2743j)), ChronoUnit.WEEKS);
        }

        @Override // p033j$.time.temporal.EnumC2740g, p033j$.time.temporal.InterfaceC2748o
        /* renamed from: g */
        public C2733A mo725g(InterfaceC2744k interfaceC2744k) {
            if (mo727e(interfaceC2744k)) {
                return EnumC2740g.m750k(C2690d.m945l(interfaceC2744k));
            }
            throw new C2759z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: a */
        public C2733A mo731a() {
            return EnumC2734a.YEAR.mo731a();
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: d */
        public long mo728d(InterfaceC2744k interfaceC2744k) {
            int m746o;
            if (mo727e(interfaceC2744k)) {
                m746o = EnumC2740g.m746o(C2690d.m945l(interfaceC2744k));
                return m746o;
            }
            throw new C2759z("Unsupported field: WeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2744k interfaceC2744k) {
            if (interfaceC2744k.mo737i(EnumC2734a.EPOCH_DAY)) {
                if (((AbstractC2682a) AbstractC2685d.m955b(interfaceC2744k)).equals(C2689h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2748o
        /* renamed from: f */
        public InterfaceC2743j mo726f(InterfaceC2743j interfaceC2743j, long j) {
            EnumC2734a enumC2734a;
            C2690d m939r;
            int m745p;
            if (mo727e(interfaceC2743j)) {
                int m765a = mo731a().m765a(j, EnumC2740g.WEEK_BASED_YEAR);
                C2690d m945l = C2690d.m945l(interfaceC2743j);
                int mo741c = m945l.mo741c(EnumC2734a.DAY_OF_WEEK);
                int m749l = EnumC2740g.m749l(m945l);
                if (m749l == 53) {
                    m745p = EnumC2740g.m745p(m765a);
                    if (m745p == 52) {
                        m749l = 52;
                    }
                }
                return interfaceC2743j.mo744a(C2690d.m939r(m765a, 1, 4).m935v(((m749l - 1) * 7) + (mo741c - m939r.mo741c(enumC2734a))));
            }
            throw new C2759z("Unsupported field: WeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };
    

    /* renamed from: a */
    private static final int[] f632a = {0, 90, 181, 273, 0, 91, 182, 274};

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2740g(AbstractC2735b abstractC2735b) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static void m751j(InterfaceC2744k interfaceC2744k) {
        if (!((AbstractC2682a) AbstractC2685d.m955b(interfaceC2744k)).equals(C2689h.f501a)) {
            throw new DateTimeException("Resolve requires IsoChronology");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static C2733A m750k(C2690d c2690d) {
        return C2733A.m757i(1L, m745p(m746o(c2690d)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if ((r0 == -3 || (r0 == -2 && r5.m940q())) == false) goto L17;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m749l(p033j$.time.C2690d r5) {
        /*
            j$.time.b r0 = r5.m943n()
            int r0 = r0.ordinal()
            int r1 = r5.m942o()
            r2 = 1
            int r1 = r1 - r2
            int r0 = 3 - r0
            int r0 = r0 + r1
            int r3 = r0 / 7
            int r3 = r3 * 7
            int r0 = r0 - r3
            r3 = -3
            int r0 = r0 + r3
            if (r0 >= r3) goto L1c
            int r0 = r0 + 7
        L1c:
            if (r1 >= r0) goto L3f
            r0 = 180(0xb4, float:2.52E-43)
            j$.time.d r5 = r5.m949D(r0)
            r0 = -1
            j$.time.d r5 = r5.m932y(r0)
            int r5 = m746o(r5)
            int r5 = m745p(r5)
            long r0 = (long) r5
            r2 = 1
            j$.time.temporal.A r5 = p033j$.time.temporal.C2733A.m757i(r2, r0)
            long r0 = r5.m762d()
            int r5 = (int) r0
            goto L5b
        L3f:
            int r1 = r1 - r0
            int r1 = r1 / 7
            int r1 = r1 + r2
            r4 = 53
            if (r1 != r4) goto L59
            if (r0 == r3) goto L55
            r3 = -2
            if (r0 != r3) goto L53
            boolean r5 = r5.m940q()
            if (r5 == 0) goto L53
            goto L55
        L53:
            r5 = 0
            goto L56
        L55:
            r5 = r2
        L56:
            if (r5 != 0) goto L59
            goto L5a
        L59:
            r2 = r1
        L5a:
            r5 = r2
        L5b:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.temporal.EnumC2740g.m749l(j$.time.d):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public static int m746o(C2690d c2690d) {
        int m941p = c2690d.m941p();
        int m942o = c2690d.m942o();
        if (m942o <= 3) {
            return m942o - c2690d.m943n().ordinal() < -2 ? m941p - 1 : m941p;
        } else if (m942o >= 363) {
            return ((m942o - 363) - (c2690d.m940q() ? 1 : 0)) - c2690d.m943n().ordinal() >= 0 ? m941p + 1 : m941p;
        } else {
            return m941p;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public static int m745p(int i) {
        C2690d m939r = C2690d.m939r(i, 1, 1);
        if (m939r.m943n() != EnumC2680b.THURSDAY) {
            return (m939r.m943n() == EnumC2680b.WEDNESDAY && m939r.m940q()) ? 53 : 52;
        }
        return 53;
    }

    @Override // p033j$.time.temporal.InterfaceC2748o
    /* renamed from: b */
    public boolean mo730b() {
        return false;
    }

    /* renamed from: c */
    public /* synthetic */ InterfaceC2744k mo729c(Map map, InterfaceC2744k interfaceC2744k, EnumC2720z enumC2720z) {
        return null;
    }

    /* renamed from: g */
    public C2733A mo725g(InterfaceC2744k interfaceC2744k) {
        return mo731a();
    }

    @Override // p033j$.time.temporal.InterfaceC2748o
    /* renamed from: h */
    public boolean mo724h() {
        return true;
    }
}
