package p033j$.time.temporal;

import java.util.Map;
import p033j$.lang.AbstractC2668d;
import p033j$.time.C2685d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2675b;
import p033j$.time.chrono.AbstractC2677a;
import p033j$.time.chrono.AbstractC2680d;
import p033j$.time.chrono.C2684h;
import p033j$.time.format.EnumC2715z;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2735g implements InterfaceC2743o {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: a */
        public C2728A mo734a() {
            return C2728A.m759j(1L, 90L, 92L);
        }

        @Override // p033j$.time.temporal.EnumC2735g, p033j$.time.temporal.InterfaceC2743o
        /* renamed from: c */
        public InterfaceC2739k mo732c(Map map, InterfaceC2739k interfaceC2739k, EnumC2715z enumC2715z) {
            C2685d m942r;
            long j;
            EnumC2729a enumC2729a = EnumC2729a.YEAR;
            Long l = (Long) map.get(enumC2729a);
            InterfaceC2743o interfaceC2743o = EnumC2735g.QUARTER_OF_YEAR;
            Long l2 = (Long) map.get(interfaceC2743o);
            if (l == null || l2 == null) {
                return null;
            }
            int m757i = enumC2729a.m757i(l.longValue());
            long longValue = ((Long) map.get(EnumC2735g.DAY_OF_QUARTER)).longValue();
            EnumC2735g.m754j(interfaceC2739k);
            if (enumC2715z == EnumC2715z.LENIENT) {
                m942r = C2685d.m942r(m757i, 1, 1).m937w(AbstractC2668d.m990f(AbstractC2668d.m989g(l2.longValue(), 1L), 3L));
                j = AbstractC2668d.m989g(longValue, 1L);
            } else {
                m942r = C2685d.m942r(m757i, ((interfaceC2743o.mo734a().m768a(l2.longValue(), interfaceC2743o) - 1) * 3) + 1, 1);
                if (longValue < 1 || longValue > 90) {
                    (enumC2715z == EnumC2715z.STRICT ? mo728g(m942r) : mo734a()).m767b(longValue, this);
                }
                j = longValue - 1;
            }
            map.remove(this);
            map.remove(enumC2729a);
            map.remove(interfaceC2743o);
            return m942r.m938v(j);
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: d */
        public long mo731d(InterfaceC2739k interfaceC2739k) {
            int[] iArr;
            if (mo730e(interfaceC2739k)) {
                int mo744c = interfaceC2739k.mo744c(EnumC2729a.DAY_OF_YEAR);
                int mo744c2 = interfaceC2739k.mo744c(EnumC2729a.MONTH_OF_YEAR);
                long mo742e = interfaceC2739k.mo742e(EnumC2729a.YEAR);
                iArr = EnumC2735g.f632a;
                return mo744c - iArr[((mo744c2 - 1) / 3) + (C2684h.f501a.m957c(mo742e) ? 4 : 0)];
            }
            throw new C2754z("Unsupported field: DayOfQuarter");
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: e */
        public boolean mo730e(InterfaceC2739k interfaceC2739k) {
            if (interfaceC2739k.mo740i(EnumC2729a.DAY_OF_YEAR) && interfaceC2739k.mo740i(EnumC2729a.MONTH_OF_YEAR) && interfaceC2739k.mo740i(EnumC2729a.YEAR)) {
                if (((AbstractC2677a) AbstractC2680d.m958b(interfaceC2739k)).equals(C2684h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: f */
        public InterfaceC2738j mo729f(InterfaceC2738j interfaceC2738j, long j) {
            long mo731d = mo731d(interfaceC2738j);
            mo734a().m767b(j, this);
            EnumC2729a enumC2729a = EnumC2729a.DAY_OF_YEAR;
            return interfaceC2738j.mo746b(enumC2729a, (j - mo731d) + interfaceC2738j.mo742e(enumC2729a));
        }

        @Override // p033j$.time.temporal.EnumC2735g, p033j$.time.temporal.InterfaceC2743o
        /* renamed from: g */
        public C2728A mo728g(InterfaceC2739k interfaceC2739k) {
            if (mo730e(interfaceC2739k)) {
                long mo742e = interfaceC2739k.mo742e(EnumC2735g.QUARTER_OF_YEAR);
                if (mo742e == 1) {
                    return C2684h.f501a.m957c(interfaceC2739k.mo742e(EnumC2729a.YEAR)) ? C2728A.m760i(1L, 91L) : C2728A.m760i(1L, 90L);
                }
                return mo742e == 2 ? C2728A.m760i(1L, 91L) : (mo742e == 3 || mo742e == 4) ? C2728A.m760i(1L, 92L) : mo734a();
            }
            throw new C2754z("Unsupported field: DayOfQuarter");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: a */
        public C2728A mo734a() {
            return C2728A.m760i(1L, 4L);
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: d */
        public long mo731d(InterfaceC2739k interfaceC2739k) {
            if (mo730e(interfaceC2739k)) {
                return (interfaceC2739k.mo742e(EnumC2729a.MONTH_OF_YEAR) + 2) / 3;
            }
            throw new C2754z("Unsupported field: QuarterOfYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: e */
        public boolean mo730e(InterfaceC2739k interfaceC2739k) {
            if (interfaceC2739k.mo740i(EnumC2729a.MONTH_OF_YEAR)) {
                if (((AbstractC2677a) AbstractC2680d.m958b(interfaceC2739k)).equals(C2684h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: f */
        public InterfaceC2738j mo729f(InterfaceC2738j interfaceC2738j, long j) {
            long mo731d = mo731d(interfaceC2738j);
            mo734a().m767b(j, this);
            EnumC2729a enumC2729a = EnumC2729a.MONTH_OF_YEAR;
            return interfaceC2738j.mo746b(enumC2729a, ((j - mo731d) * 3) + interfaceC2738j.mo742e(enumC2729a));
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: a */
        public C2728A mo734a() {
            return C2728A.m759j(1L, 52L, 53L);
        }

        @Override // p033j$.time.temporal.EnumC2735g, p033j$.time.temporal.InterfaceC2743o
        /* renamed from: c */
        public InterfaceC2739k mo732c(Map map, InterfaceC2739k interfaceC2739k, EnumC2715z enumC2715z) {
            C2685d mo746b;
            long j;
            C2685d m936x;
            long j2;
            InterfaceC2743o interfaceC2743o = EnumC2735g.WEEK_BASED_YEAR;
            Long l = (Long) map.get(interfaceC2743o);
            EnumC2729a enumC2729a = EnumC2729a.DAY_OF_WEEK;
            Long l2 = (Long) map.get(enumC2729a);
            if (l == null || l2 == null) {
                return null;
            }
            int m768a = interfaceC2743o.mo734a().m768a(l.longValue(), interfaceC2743o);
            long longValue = ((Long) map.get(EnumC2735g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
            EnumC2735g.m754j(interfaceC2739k);
            C2685d m942r = C2685d.m942r(m768a, 1, 4);
            if (enumC2715z == EnumC2715z.LENIENT) {
                long longValue2 = l2.longValue();
                if (longValue2 > 7) {
                    j2 = longValue2 - 1;
                    m936x = m942r.m936x(j2 / 7);
                } else {
                    j = 1;
                    if (longValue2 < 1) {
                        m936x = m942r.m936x(AbstractC2668d.m989g(longValue2, 7L) / 7);
                        j2 = longValue2 + 6;
                    }
                    mo746b = m942r.m936x(AbstractC2668d.m989g(longValue, j)).mo746b(enumC2729a, longValue2);
                }
                m942r = m936x;
                j = 1;
                longValue2 = (j2 % 7) + 1;
                mo746b = m942r.m936x(AbstractC2668d.m989g(longValue, j)).mo746b(enumC2729a, longValue2);
            } else {
                int m757i = enumC2729a.m757i(l2.longValue());
                if (longValue < 1 || longValue > 52) {
                    (enumC2715z == EnumC2715z.STRICT ? EnumC2735g.m753k(m942r) : mo734a()).m767b(longValue, this);
                }
                mo746b = m942r.m936x(longValue - 1).mo746b(enumC2729a, m757i);
            }
            map.remove(this);
            map.remove(interfaceC2743o);
            map.remove(enumC2729a);
            return mo746b;
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: d */
        public long mo731d(InterfaceC2739k interfaceC2739k) {
            if (mo730e(interfaceC2739k)) {
                return EnumC2735g.m752l(C2685d.m948l(interfaceC2739k));
            }
            throw new C2754z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: e */
        public boolean mo730e(InterfaceC2739k interfaceC2739k) {
            if (interfaceC2739k.mo740i(EnumC2729a.EPOCH_DAY)) {
                if (((AbstractC2677a) AbstractC2680d.m958b(interfaceC2739k)).equals(C2684h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: f */
        public InterfaceC2738j mo729f(InterfaceC2738j interfaceC2738j, long j) {
            mo734a().m767b(j, this);
            return interfaceC2738j.mo745f(AbstractC2668d.m989g(j, mo731d(interfaceC2738j)), ChronoUnit.WEEKS);
        }

        @Override // p033j$.time.temporal.EnumC2735g, p033j$.time.temporal.InterfaceC2743o
        /* renamed from: g */
        public C2728A mo728g(InterfaceC2739k interfaceC2739k) {
            if (mo730e(interfaceC2739k)) {
                return EnumC2735g.m753k(C2685d.m948l(interfaceC2739k));
            }
            throw new C2754z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: a */
        public C2728A mo734a() {
            return EnumC2729a.YEAR.mo734a();
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: d */
        public long mo731d(InterfaceC2739k interfaceC2739k) {
            int m749o;
            if (mo730e(interfaceC2739k)) {
                m749o = EnumC2735g.m749o(C2685d.m948l(interfaceC2739k));
                return m749o;
            }
            throw new C2754z("Unsupported field: WeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: e */
        public boolean mo730e(InterfaceC2739k interfaceC2739k) {
            if (interfaceC2739k.mo740i(EnumC2729a.EPOCH_DAY)) {
                if (((AbstractC2677a) AbstractC2680d.m958b(interfaceC2739k)).equals(C2684h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2743o
        /* renamed from: f */
        public InterfaceC2738j mo729f(InterfaceC2738j interfaceC2738j, long j) {
            EnumC2729a enumC2729a;
            C2685d m942r;
            int m748p;
            if (mo730e(interfaceC2738j)) {
                int m768a = mo734a().m768a(j, EnumC2735g.WEEK_BASED_YEAR);
                C2685d m948l = C2685d.m948l(interfaceC2738j);
                int mo744c = m948l.mo744c(EnumC2729a.DAY_OF_WEEK);
                int m752l = EnumC2735g.m752l(m948l);
                if (m752l == 53) {
                    m748p = EnumC2735g.m748p(m768a);
                    if (m748p == 52) {
                        m752l = 52;
                    }
                }
                return interfaceC2738j.mo747a(C2685d.m942r(m768a, 1, 4).m938v(((m752l - 1) * 7) + (mo744c - m942r.mo744c(enumC2729a))));
            }
            throw new C2754z("Unsupported field: WeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };
    

    /* renamed from: a */
    private static final int[] f632a = {0, 90, 181, 273, 0, 91, 182, 274};

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2735g(AbstractC2730b abstractC2730b) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static void m754j(InterfaceC2739k interfaceC2739k) {
        if (!((AbstractC2677a) AbstractC2680d.m958b(interfaceC2739k)).equals(C2684h.f501a)) {
            throw new DateTimeException("Resolve requires IsoChronology");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static C2728A m753k(C2685d c2685d) {
        return C2728A.m760i(1L, m748p(m749o(c2685d)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if ((r0 == -3 || (r0 == -2 && r5.m943q())) == false) goto L17;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m752l(p033j$.time.C2685d r5) {
        /*
            j$.time.b r0 = r5.m946n()
            int r0 = r0.ordinal()
            int r1 = r5.m945o()
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
            j$.time.d r5 = r5.m952D(r0)
            r0 = -1
            j$.time.d r5 = r5.m935y(r0)
            int r5 = m749o(r5)
            int r5 = m748p(r5)
            long r0 = (long) r5
            r2 = 1
            j$.time.temporal.A r5 = p033j$.time.temporal.C2728A.m760i(r2, r0)
            long r0 = r5.m765d()
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
            boolean r5 = r5.m943q()
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
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.temporal.EnumC2735g.m752l(j$.time.d):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public static int m749o(C2685d c2685d) {
        int m944p = c2685d.m944p();
        int m945o = c2685d.m945o();
        if (m945o <= 3) {
            return m945o - c2685d.m946n().ordinal() < -2 ? m944p - 1 : m944p;
        } else if (m945o >= 363) {
            return ((m945o - 363) - (c2685d.m943q() ? 1 : 0)) - c2685d.m946n().ordinal() >= 0 ? m944p + 1 : m944p;
        } else {
            return m944p;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public static int m748p(int i) {
        C2685d m942r = C2685d.m942r(i, 1, 1);
        if (m942r.m946n() != EnumC2675b.THURSDAY) {
            return (m942r.m946n() == EnumC2675b.WEDNESDAY && m942r.m943q()) ? 53 : 52;
        }
        return 53;
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: b */
    public boolean mo733b() {
        return false;
    }

    /* renamed from: c */
    public /* synthetic */ InterfaceC2739k mo732c(Map map, InterfaceC2739k interfaceC2739k, EnumC2715z enumC2715z) {
        return null;
    }

    /* renamed from: g */
    public C2728A mo728g(InterfaceC2739k interfaceC2739k) {
        return mo734a();
    }

    @Override // p033j$.time.temporal.InterfaceC2743o
    /* renamed from: h */
    public boolean mo727h() {
        return true;
    }
}
