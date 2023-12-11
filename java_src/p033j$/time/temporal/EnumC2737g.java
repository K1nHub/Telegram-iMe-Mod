package p033j$.time.temporal;

import java.util.Map;
import p033j$.lang.AbstractC2670d;
import p033j$.time.C2687d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2677b;
import p033j$.time.chrono.AbstractC2679a;
import p033j$.time.chrono.AbstractC2682d;
import p033j$.time.chrono.C2686h;
import p033j$.time.format.EnumC2717z;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2737g implements InterfaceC2745o {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: a */
        public C2730A mo731a() {
            return C2730A.m756j(1L, 90L, 92L);
        }

        @Override // p033j$.time.temporal.EnumC2737g, p033j$.time.temporal.InterfaceC2745o
        /* renamed from: c */
        public InterfaceC2741k mo729c(Map map, InterfaceC2741k interfaceC2741k, EnumC2717z enumC2717z) {
            C2687d m939r;
            long j;
            EnumC2731a enumC2731a = EnumC2731a.YEAR;
            Long l = (Long) map.get(enumC2731a);
            InterfaceC2745o interfaceC2745o = EnumC2737g.QUARTER_OF_YEAR;
            Long l2 = (Long) map.get(interfaceC2745o);
            if (l == null || l2 == null) {
                return null;
            }
            int m754i = enumC2731a.m754i(l.longValue());
            long longValue = ((Long) map.get(EnumC2737g.DAY_OF_QUARTER)).longValue();
            EnumC2737g.m751j(interfaceC2741k);
            if (enumC2717z == EnumC2717z.LENIENT) {
                m939r = C2687d.m939r(m754i, 1, 1).m934w(AbstractC2670d.m987f(AbstractC2670d.m986g(l2.longValue(), 1L), 3L));
                j = AbstractC2670d.m986g(longValue, 1L);
            } else {
                m939r = C2687d.m939r(m754i, ((interfaceC2745o.mo731a().m765a(l2.longValue(), interfaceC2745o) - 1) * 3) + 1, 1);
                if (longValue < 1 || longValue > 90) {
                    (enumC2717z == EnumC2717z.STRICT ? mo725g(m939r) : mo731a()).m764b(longValue, this);
                }
                j = longValue - 1;
            }
            map.remove(this);
            map.remove(enumC2731a);
            map.remove(interfaceC2745o);
            return m939r.m935v(j);
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: d */
        public long mo728d(InterfaceC2741k interfaceC2741k) {
            int[] iArr;
            if (mo727e(interfaceC2741k)) {
                int mo741c = interfaceC2741k.mo741c(EnumC2731a.DAY_OF_YEAR);
                int mo741c2 = interfaceC2741k.mo741c(EnumC2731a.MONTH_OF_YEAR);
                long mo739e = interfaceC2741k.mo739e(EnumC2731a.YEAR);
                iArr = EnumC2737g.f632a;
                return mo741c - iArr[((mo741c2 - 1) / 3) + (C2686h.f501a.m954c(mo739e) ? 4 : 0)];
            }
            throw new C2756z("Unsupported field: DayOfQuarter");
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2741k interfaceC2741k) {
            if (interfaceC2741k.mo737i(EnumC2731a.DAY_OF_YEAR) && interfaceC2741k.mo737i(EnumC2731a.MONTH_OF_YEAR) && interfaceC2741k.mo737i(EnumC2731a.YEAR)) {
                if (((AbstractC2679a) AbstractC2682d.m955b(interfaceC2741k)).equals(C2686h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: f */
        public InterfaceC2740j mo726f(InterfaceC2740j interfaceC2740j, long j) {
            long mo728d = mo728d(interfaceC2740j);
            mo731a().m764b(j, this);
            EnumC2731a enumC2731a = EnumC2731a.DAY_OF_YEAR;
            return interfaceC2740j.mo743b(enumC2731a, (j - mo728d) + interfaceC2740j.mo739e(enumC2731a));
        }

        @Override // p033j$.time.temporal.EnumC2737g, p033j$.time.temporal.InterfaceC2745o
        /* renamed from: g */
        public C2730A mo725g(InterfaceC2741k interfaceC2741k) {
            if (mo727e(interfaceC2741k)) {
                long mo739e = interfaceC2741k.mo739e(EnumC2737g.QUARTER_OF_YEAR);
                if (mo739e == 1) {
                    return C2686h.f501a.m954c(interfaceC2741k.mo739e(EnumC2731a.YEAR)) ? C2730A.m757i(1L, 91L) : C2730A.m757i(1L, 90L);
                }
                return mo739e == 2 ? C2730A.m757i(1L, 91L) : (mo739e == 3 || mo739e == 4) ? C2730A.m757i(1L, 92L) : mo731a();
            }
            throw new C2756z("Unsupported field: DayOfQuarter");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: a */
        public C2730A mo731a() {
            return C2730A.m757i(1L, 4L);
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: d */
        public long mo728d(InterfaceC2741k interfaceC2741k) {
            if (mo727e(interfaceC2741k)) {
                return (interfaceC2741k.mo739e(EnumC2731a.MONTH_OF_YEAR) + 2) / 3;
            }
            throw new C2756z("Unsupported field: QuarterOfYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2741k interfaceC2741k) {
            if (interfaceC2741k.mo737i(EnumC2731a.MONTH_OF_YEAR)) {
                if (((AbstractC2679a) AbstractC2682d.m955b(interfaceC2741k)).equals(C2686h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: f */
        public InterfaceC2740j mo726f(InterfaceC2740j interfaceC2740j, long j) {
            long mo728d = mo728d(interfaceC2740j);
            mo731a().m764b(j, this);
            EnumC2731a enumC2731a = EnumC2731a.MONTH_OF_YEAR;
            return interfaceC2740j.mo743b(enumC2731a, ((j - mo728d) * 3) + interfaceC2740j.mo739e(enumC2731a));
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: a */
        public C2730A mo731a() {
            return C2730A.m756j(1L, 52L, 53L);
        }

        @Override // p033j$.time.temporal.EnumC2737g, p033j$.time.temporal.InterfaceC2745o
        /* renamed from: c */
        public InterfaceC2741k mo729c(Map map, InterfaceC2741k interfaceC2741k, EnumC2717z enumC2717z) {
            C2687d mo743b;
            long j;
            C2687d m933x;
            long j2;
            InterfaceC2745o interfaceC2745o = EnumC2737g.WEEK_BASED_YEAR;
            Long l = (Long) map.get(interfaceC2745o);
            EnumC2731a enumC2731a = EnumC2731a.DAY_OF_WEEK;
            Long l2 = (Long) map.get(enumC2731a);
            if (l == null || l2 == null) {
                return null;
            }
            int m765a = interfaceC2745o.mo731a().m765a(l.longValue(), interfaceC2745o);
            long longValue = ((Long) map.get(EnumC2737g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
            EnumC2737g.m751j(interfaceC2741k);
            C2687d m939r = C2687d.m939r(m765a, 1, 4);
            if (enumC2717z == EnumC2717z.LENIENT) {
                long longValue2 = l2.longValue();
                if (longValue2 > 7) {
                    j2 = longValue2 - 1;
                    m933x = m939r.m933x(j2 / 7);
                } else {
                    j = 1;
                    if (longValue2 < 1) {
                        m933x = m939r.m933x(AbstractC2670d.m986g(longValue2, 7L) / 7);
                        j2 = longValue2 + 6;
                    }
                    mo743b = m939r.m933x(AbstractC2670d.m986g(longValue, j)).mo743b(enumC2731a, longValue2);
                }
                m939r = m933x;
                j = 1;
                longValue2 = (j2 % 7) + 1;
                mo743b = m939r.m933x(AbstractC2670d.m986g(longValue, j)).mo743b(enumC2731a, longValue2);
            } else {
                int m754i = enumC2731a.m754i(l2.longValue());
                if (longValue < 1 || longValue > 52) {
                    (enumC2717z == EnumC2717z.STRICT ? EnumC2737g.m750k(m939r) : mo731a()).m764b(longValue, this);
                }
                mo743b = m939r.m933x(longValue - 1).mo743b(enumC2731a, m754i);
            }
            map.remove(this);
            map.remove(interfaceC2745o);
            map.remove(enumC2731a);
            return mo743b;
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: d */
        public long mo728d(InterfaceC2741k interfaceC2741k) {
            if (mo727e(interfaceC2741k)) {
                return EnumC2737g.m749l(C2687d.m945l(interfaceC2741k));
            }
            throw new C2756z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2741k interfaceC2741k) {
            if (interfaceC2741k.mo737i(EnumC2731a.EPOCH_DAY)) {
                if (((AbstractC2679a) AbstractC2682d.m955b(interfaceC2741k)).equals(C2686h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: f */
        public InterfaceC2740j mo726f(InterfaceC2740j interfaceC2740j, long j) {
            mo731a().m764b(j, this);
            return interfaceC2740j.mo742f(AbstractC2670d.m986g(j, mo728d(interfaceC2740j)), ChronoUnit.WEEKS);
        }

        @Override // p033j$.time.temporal.EnumC2737g, p033j$.time.temporal.InterfaceC2745o
        /* renamed from: g */
        public C2730A mo725g(InterfaceC2741k interfaceC2741k) {
            if (mo727e(interfaceC2741k)) {
                return EnumC2737g.m750k(C2687d.m945l(interfaceC2741k));
            }
            throw new C2756z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: a */
        public C2730A mo731a() {
            return EnumC2731a.YEAR.mo731a();
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: d */
        public long mo728d(InterfaceC2741k interfaceC2741k) {
            int m746o;
            if (mo727e(interfaceC2741k)) {
                m746o = EnumC2737g.m746o(C2687d.m945l(interfaceC2741k));
                return m746o;
            }
            throw new C2756z("Unsupported field: WeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: e */
        public boolean mo727e(InterfaceC2741k interfaceC2741k) {
            if (interfaceC2741k.mo737i(EnumC2731a.EPOCH_DAY)) {
                if (((AbstractC2679a) AbstractC2682d.m955b(interfaceC2741k)).equals(C2686h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2745o
        /* renamed from: f */
        public InterfaceC2740j mo726f(InterfaceC2740j interfaceC2740j, long j) {
            EnumC2731a enumC2731a;
            C2687d m939r;
            int m745p;
            if (mo727e(interfaceC2740j)) {
                int m765a = mo731a().m765a(j, EnumC2737g.WEEK_BASED_YEAR);
                C2687d m945l = C2687d.m945l(interfaceC2740j);
                int mo741c = m945l.mo741c(EnumC2731a.DAY_OF_WEEK);
                int m749l = EnumC2737g.m749l(m945l);
                if (m749l == 53) {
                    m745p = EnumC2737g.m745p(m765a);
                    if (m745p == 52) {
                        m749l = 52;
                    }
                }
                return interfaceC2740j.mo744a(C2687d.m939r(m765a, 1, 4).m935v(((m749l - 1) * 7) + (mo741c - m939r.mo741c(enumC2731a))));
            }
            throw new C2756z("Unsupported field: WeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };
    

    /* renamed from: a */
    private static final int[] f632a = {0, 90, 181, 273, 0, 91, 182, 274};

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2737g(AbstractC2732b abstractC2732b) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static void m751j(InterfaceC2741k interfaceC2741k) {
        if (!((AbstractC2679a) AbstractC2682d.m955b(interfaceC2741k)).equals(C2686h.f501a)) {
            throw new DateTimeException("Resolve requires IsoChronology");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static C2730A m750k(C2687d c2687d) {
        return C2730A.m757i(1L, m745p(m746o(c2687d)));
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
    public static int m749l(p033j$.time.C2687d r5) {
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
            j$.time.temporal.A r5 = p033j$.time.temporal.C2730A.m757i(r2, r0)
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
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.temporal.EnumC2737g.m749l(j$.time.d):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public static int m746o(C2687d c2687d) {
        int m941p = c2687d.m941p();
        int m942o = c2687d.m942o();
        if (m942o <= 3) {
            return m942o - c2687d.m943n().ordinal() < -2 ? m941p - 1 : m941p;
        } else if (m942o >= 363) {
            return ((m942o - 363) - (c2687d.m940q() ? 1 : 0)) - c2687d.m943n().ordinal() >= 0 ? m941p + 1 : m941p;
        } else {
            return m941p;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public static int m745p(int i) {
        C2687d m939r = C2687d.m939r(i, 1, 1);
        if (m939r.m943n() != EnumC2677b.THURSDAY) {
            return (m939r.m943n() == EnumC2677b.WEDNESDAY && m939r.m940q()) ? 53 : 52;
        }
        return 53;
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: b */
    public boolean mo730b() {
        return false;
    }

    /* renamed from: c */
    public /* synthetic */ InterfaceC2741k mo729c(Map map, InterfaceC2741k interfaceC2741k, EnumC2717z enumC2717z) {
        return null;
    }

    /* renamed from: g */
    public C2730A mo725g(InterfaceC2741k interfaceC2741k) {
        return mo731a();
    }

    @Override // p033j$.time.temporal.InterfaceC2745o
    /* renamed from: h */
    public boolean mo724h() {
        return true;
    }
}
