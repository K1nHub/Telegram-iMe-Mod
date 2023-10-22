package p033j$.time.temporal;

import java.util.Map;
import p033j$.lang.AbstractC2669d;
import p033j$.time.C2686d;
import p033j$.time.DateTimeException;
import p033j$.time.EnumC2676b;
import p033j$.time.chrono.AbstractC2678a;
import p033j$.time.chrono.AbstractC2681d;
import p033j$.time.chrono.C2685h;
import p033j$.time.format.EnumC2716z;
/* renamed from: j$.time.temporal.g */
/* loaded from: classes2.dex */
enum EnumC2736g implements InterfaceC2744o {
    DAY_OF_QUARTER { // from class: j$.time.temporal.c
        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: a */
        public C2729A mo730a() {
            return C2729A.m755j(1L, 90L, 92L);
        }

        @Override // p033j$.time.temporal.EnumC2736g, p033j$.time.temporal.InterfaceC2744o
        /* renamed from: c */
        public InterfaceC2740k mo728c(Map map, InterfaceC2740k interfaceC2740k, EnumC2716z enumC2716z) {
            C2686d m938r;
            long j;
            EnumC2730a enumC2730a = EnumC2730a.YEAR;
            Long l = (Long) map.get(enumC2730a);
            InterfaceC2744o interfaceC2744o = EnumC2736g.QUARTER_OF_YEAR;
            Long l2 = (Long) map.get(interfaceC2744o);
            if (l == null || l2 == null) {
                return null;
            }
            int m753i = enumC2730a.m753i(l.longValue());
            long longValue = ((Long) map.get(EnumC2736g.DAY_OF_QUARTER)).longValue();
            EnumC2736g.m750j(interfaceC2740k);
            if (enumC2716z == EnumC2716z.LENIENT) {
                m938r = C2686d.m938r(m753i, 1, 1).m933w(AbstractC2669d.m986f(AbstractC2669d.m985g(l2.longValue(), 1L), 3L));
                j = AbstractC2669d.m985g(longValue, 1L);
            } else {
                m938r = C2686d.m938r(m753i, ((interfaceC2744o.mo730a().m764a(l2.longValue(), interfaceC2744o) - 1) * 3) + 1, 1);
                if (longValue < 1 || longValue > 90) {
                    (enumC2716z == EnumC2716z.STRICT ? mo724g(m938r) : mo730a()).m763b(longValue, this);
                }
                j = longValue - 1;
            }
            map.remove(this);
            map.remove(enumC2730a);
            map.remove(interfaceC2744o);
            return m938r.m934v(j);
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: d */
        public long mo727d(InterfaceC2740k interfaceC2740k) {
            int[] iArr;
            if (mo726e(interfaceC2740k)) {
                int mo740c = interfaceC2740k.mo740c(EnumC2730a.DAY_OF_YEAR);
                int mo740c2 = interfaceC2740k.mo740c(EnumC2730a.MONTH_OF_YEAR);
                long mo738e = interfaceC2740k.mo738e(EnumC2730a.YEAR);
                iArr = EnumC2736g.f632a;
                return mo740c - iArr[((mo740c2 - 1) / 3) + (C2685h.f501a.m953c(mo738e) ? 4 : 0)];
            }
            throw new C2755z("Unsupported field: DayOfQuarter");
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: e */
        public boolean mo726e(InterfaceC2740k interfaceC2740k) {
            if (interfaceC2740k.mo736i(EnumC2730a.DAY_OF_YEAR) && interfaceC2740k.mo736i(EnumC2730a.MONTH_OF_YEAR) && interfaceC2740k.mo736i(EnumC2730a.YEAR)) {
                if (((AbstractC2678a) AbstractC2681d.m954b(interfaceC2740k)).equals(C2685h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: f */
        public InterfaceC2739j mo725f(InterfaceC2739j interfaceC2739j, long j) {
            long mo727d = mo727d(interfaceC2739j);
            mo730a().m763b(j, this);
            EnumC2730a enumC2730a = EnumC2730a.DAY_OF_YEAR;
            return interfaceC2739j.mo742b(enumC2730a, (j - mo727d) + interfaceC2739j.mo738e(enumC2730a));
        }

        @Override // p033j$.time.temporal.EnumC2736g, p033j$.time.temporal.InterfaceC2744o
        /* renamed from: g */
        public C2729A mo724g(InterfaceC2740k interfaceC2740k) {
            if (mo726e(interfaceC2740k)) {
                long mo738e = interfaceC2740k.mo738e(EnumC2736g.QUARTER_OF_YEAR);
                if (mo738e == 1) {
                    return C2685h.f501a.m953c(interfaceC2740k.mo738e(EnumC2730a.YEAR)) ? C2729A.m756i(1L, 91L) : C2729A.m756i(1L, 90L);
                }
                return mo738e == 2 ? C2729A.m756i(1L, 91L) : (mo738e == 3 || mo738e == 4) ? C2729A.m756i(1L, 92L) : mo730a();
            }
            throw new C2755z("Unsupported field: DayOfQuarter");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "DayOfQuarter";
        }
    },
    QUARTER_OF_YEAR { // from class: j$.time.temporal.d
        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: a */
        public C2729A mo730a() {
            return C2729A.m756i(1L, 4L);
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: d */
        public long mo727d(InterfaceC2740k interfaceC2740k) {
            if (mo726e(interfaceC2740k)) {
                return (interfaceC2740k.mo738e(EnumC2730a.MONTH_OF_YEAR) + 2) / 3;
            }
            throw new C2755z("Unsupported field: QuarterOfYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: e */
        public boolean mo726e(InterfaceC2740k interfaceC2740k) {
            if (interfaceC2740k.mo736i(EnumC2730a.MONTH_OF_YEAR)) {
                if (((AbstractC2678a) AbstractC2681d.m954b(interfaceC2740k)).equals(C2685h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: f */
        public InterfaceC2739j mo725f(InterfaceC2739j interfaceC2739j, long j) {
            long mo727d = mo727d(interfaceC2739j);
            mo730a().m763b(j, this);
            EnumC2730a enumC2730a = EnumC2730a.MONTH_OF_YEAR;
            return interfaceC2739j.mo742b(enumC2730a, ((j - mo727d) * 3) + interfaceC2739j.mo738e(enumC2730a));
        }

        @Override // java.lang.Enum
        public String toString() {
            return "QuarterOfYear";
        }
    },
    WEEK_OF_WEEK_BASED_YEAR { // from class: j$.time.temporal.e
        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: a */
        public C2729A mo730a() {
            return C2729A.m755j(1L, 52L, 53L);
        }

        @Override // p033j$.time.temporal.EnumC2736g, p033j$.time.temporal.InterfaceC2744o
        /* renamed from: c */
        public InterfaceC2740k mo728c(Map map, InterfaceC2740k interfaceC2740k, EnumC2716z enumC2716z) {
            C2686d mo742b;
            long j;
            C2686d m932x;
            long j2;
            InterfaceC2744o interfaceC2744o = EnumC2736g.WEEK_BASED_YEAR;
            Long l = (Long) map.get(interfaceC2744o);
            EnumC2730a enumC2730a = EnumC2730a.DAY_OF_WEEK;
            Long l2 = (Long) map.get(enumC2730a);
            if (l == null || l2 == null) {
                return null;
            }
            int m764a = interfaceC2744o.mo730a().m764a(l.longValue(), interfaceC2744o);
            long longValue = ((Long) map.get(EnumC2736g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
            EnumC2736g.m750j(interfaceC2740k);
            C2686d m938r = C2686d.m938r(m764a, 1, 4);
            if (enumC2716z == EnumC2716z.LENIENT) {
                long longValue2 = l2.longValue();
                if (longValue2 > 7) {
                    j2 = longValue2 - 1;
                    m932x = m938r.m932x(j2 / 7);
                } else {
                    j = 1;
                    if (longValue2 < 1) {
                        m932x = m938r.m932x(AbstractC2669d.m985g(longValue2, 7L) / 7);
                        j2 = longValue2 + 6;
                    }
                    mo742b = m938r.m932x(AbstractC2669d.m985g(longValue, j)).mo742b(enumC2730a, longValue2);
                }
                m938r = m932x;
                j = 1;
                longValue2 = (j2 % 7) + 1;
                mo742b = m938r.m932x(AbstractC2669d.m985g(longValue, j)).mo742b(enumC2730a, longValue2);
            } else {
                int m753i = enumC2730a.m753i(l2.longValue());
                if (longValue < 1 || longValue > 52) {
                    (enumC2716z == EnumC2716z.STRICT ? EnumC2736g.m749k(m938r) : mo730a()).m763b(longValue, this);
                }
                mo742b = m938r.m932x(longValue - 1).mo742b(enumC2730a, m753i);
            }
            map.remove(this);
            map.remove(interfaceC2744o);
            map.remove(enumC2730a);
            return mo742b;
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: d */
        public long mo727d(InterfaceC2740k interfaceC2740k) {
            if (mo726e(interfaceC2740k)) {
                return EnumC2736g.m748l(C2686d.m944l(interfaceC2740k));
            }
            throw new C2755z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: e */
        public boolean mo726e(InterfaceC2740k interfaceC2740k) {
            if (interfaceC2740k.mo736i(EnumC2730a.EPOCH_DAY)) {
                if (((AbstractC2678a) AbstractC2681d.m954b(interfaceC2740k)).equals(C2685h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: f */
        public InterfaceC2739j mo725f(InterfaceC2739j interfaceC2739j, long j) {
            mo730a().m763b(j, this);
            return interfaceC2739j.mo741f(AbstractC2669d.m985g(j, mo727d(interfaceC2739j)), ChronoUnit.WEEKS);
        }

        @Override // p033j$.time.temporal.EnumC2736g, p033j$.time.temporal.InterfaceC2744o
        /* renamed from: g */
        public C2729A mo724g(InterfaceC2740k interfaceC2740k) {
            if (mo726e(interfaceC2740k)) {
                return EnumC2736g.m749k(C2686d.m944l(interfaceC2740k));
            }
            throw new C2755z("Unsupported field: WeekOfWeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekOfWeekBasedYear";
        }
    },
    WEEK_BASED_YEAR { // from class: j$.time.temporal.f
        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: a */
        public C2729A mo730a() {
            return EnumC2730a.YEAR.mo730a();
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: d */
        public long mo727d(InterfaceC2740k interfaceC2740k) {
            int m745o;
            if (mo726e(interfaceC2740k)) {
                m745o = EnumC2736g.m745o(C2686d.m944l(interfaceC2740k));
                return m745o;
            }
            throw new C2755z("Unsupported field: WeekBasedYear");
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: e */
        public boolean mo726e(InterfaceC2740k interfaceC2740k) {
            if (interfaceC2740k.mo736i(EnumC2730a.EPOCH_DAY)) {
                if (((AbstractC2678a) AbstractC2681d.m954b(interfaceC2740k)).equals(C2685h.f501a)) {
                    return true;
                }
            }
            return false;
        }

        @Override // p033j$.time.temporal.InterfaceC2744o
        /* renamed from: f */
        public InterfaceC2739j mo725f(InterfaceC2739j interfaceC2739j, long j) {
            EnumC2730a enumC2730a;
            C2686d m938r;
            int m744p;
            if (mo726e(interfaceC2739j)) {
                int m764a = mo730a().m764a(j, EnumC2736g.WEEK_BASED_YEAR);
                C2686d m944l = C2686d.m944l(interfaceC2739j);
                int mo740c = m944l.mo740c(EnumC2730a.DAY_OF_WEEK);
                int m748l = EnumC2736g.m748l(m944l);
                if (m748l == 53) {
                    m744p = EnumC2736g.m744p(m764a);
                    if (m744p == 52) {
                        m748l = 52;
                    }
                }
                return interfaceC2739j.mo743a(C2686d.m938r(m764a, 1, 4).m934v(((m748l - 1) * 7) + (mo740c - m938r.mo740c(enumC2730a))));
            }
            throw new C2755z("Unsupported field: WeekBasedYear");
        }

        @Override // java.lang.Enum
        public String toString() {
            return "WeekBasedYear";
        }
    };
    

    /* renamed from: a */
    private static final int[] f632a = {0, 90, 181, 273, 0, 91, 182, 274};

    /* JADX INFO: Access modifiers changed from: package-private */
    EnumC2736g(AbstractC2731b abstractC2731b) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static void m750j(InterfaceC2740k interfaceC2740k) {
        if (!((AbstractC2678a) AbstractC2681d.m954b(interfaceC2740k)).equals(C2685h.f501a)) {
            throw new DateTimeException("Resolve requires IsoChronology");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static C2729A m749k(C2686d c2686d) {
        return C2729A.m756i(1L, m744p(m745o(c2686d)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        if ((r0 == -3 || (r0 == -2 && r5.m939q())) == false) goto L17;
     */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m748l(p033j$.time.C2686d r5) {
        /*
            j$.time.b r0 = r5.m942n()
            int r0 = r0.ordinal()
            int r1 = r5.m941o()
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
            j$.time.d r5 = r5.m948D(r0)
            r0 = -1
            j$.time.d r5 = r5.m931y(r0)
            int r5 = m745o(r5)
            int r5 = m744p(r5)
            long r0 = (long) r5
            r2 = 1
            j$.time.temporal.A r5 = p033j$.time.temporal.C2729A.m756i(r2, r0)
            long r0 = r5.m761d()
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
            boolean r5 = r5.m939q()
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
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.temporal.EnumC2736g.m748l(j$.time.d):int");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public static int m745o(C2686d c2686d) {
        int m940p = c2686d.m940p();
        int m941o = c2686d.m941o();
        if (m941o <= 3) {
            return m941o - c2686d.m942n().ordinal() < -2 ? m940p - 1 : m940p;
        } else if (m941o >= 363) {
            return ((m941o - 363) - (c2686d.m939q() ? 1 : 0)) - c2686d.m942n().ordinal() >= 0 ? m940p + 1 : m940p;
        } else {
            return m940p;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public static int m744p(int i) {
        C2686d m938r = C2686d.m938r(i, 1, 1);
        if (m938r.m942n() != EnumC2676b.THURSDAY) {
            return (m938r.m942n() == EnumC2676b.WEDNESDAY && m938r.m939q()) ? 53 : 52;
        }
        return 53;
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: b */
    public boolean mo729b() {
        return false;
    }

    /* renamed from: c */
    public /* synthetic */ InterfaceC2740k mo728c(Map map, InterfaceC2740k interfaceC2740k, EnumC2716z enumC2716z) {
        return null;
    }

    /* renamed from: g */
    public C2729A mo724g(InterfaceC2740k interfaceC2740k) {
        return mo730a();
    }

    @Override // p033j$.time.temporal.InterfaceC2744o
    /* renamed from: h */
    public boolean mo723h() {
        return true;
    }
}
