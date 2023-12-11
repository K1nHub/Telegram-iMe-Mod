package p033j$.time.zone;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import p033j$.lang.AbstractC2670d;
import p033j$.time.AbstractC2676a;
import p033j$.time.C2687d;
import p033j$.time.C2689f;
import p033j$.time.C2726o;
import p033j$.time.Clock;
import p033j$.time.Instant;
import p033j$.util.AbstractC2840k;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.zone.c */
/* loaded from: classes2.dex */
public final class C2759c implements Serializable {

    /* renamed from: i */
    private static final long[] f651i = new long[0];

    /* renamed from: j */
    private static final AbstractC2758b[] f652j = new AbstractC2758b[0];

    /* renamed from: k */
    private static final C2689f[] f653k = new C2689f[0];

    /* renamed from: l */
    private static final C2757a[] f654l = new C2757a[0];

    /* renamed from: a */
    private final long[] f655a;

    /* renamed from: b */
    private final C2726o[] f656b;

    /* renamed from: c */
    private final long[] f657c;

    /* renamed from: d */
    private final C2689f[] f658d;

    /* renamed from: e */
    private final C2726o[] f659e;

    /* renamed from: f */
    private final AbstractC2758b[] f660f;

    /* renamed from: g */
    private final TimeZone f661g;

    /* renamed from: h */
    private final transient ConcurrentMap f662h = new ConcurrentHashMap();

    private C2759c(C2726o c2726o) {
        this.f656b = r0;
        C2726o[] c2726oArr = {c2726o};
        long[] jArr = f651i;
        this.f655a = jArr;
        this.f657c = jArr;
        this.f658d = f653k;
        this.f659e = c2726oArr;
        this.f660f = f652j;
        this.f661g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2759c(TimeZone timeZone) {
        this.f656b = r0;
        C2726o[] c2726oArr = {m703j(timeZone.getRawOffset())};
        long[] jArr = f651i;
        this.f655a = jArr;
        this.f657c = jArr;
        this.f658d = f653k;
        this.f659e = c2726oArr;
        this.f660f = f652j;
        this.f661g = timeZone;
    }

    /* renamed from: a */
    private Object m712a(C2689f c2689f, C2757a c2757a) {
        C2689f m720b = c2757a.m720b();
        boolean m714h = c2757a.m714h();
        boolean m916q = c2689f.m916q(m720b);
        return m714h ? m916q ? c2757a.m716f() : c2689f.m916q(c2757a.m721a()) ? c2757a : c2757a.m717e() : !m916q ? c2757a.m717e() : c2689f.m916q(c2757a.m721a()) ? c2757a.m716f() : c2757a;
    }

    /* renamed from: b */
    private C2757a[] m711b(int i) {
        Integer valueOf = Integer.valueOf(i);
        C2757a[] c2757aArr = (C2757a[]) this.f662h.get(valueOf);
        if (c2757aArr != null) {
            return c2757aArr;
        }
        if (this.f661g == null) {
            AbstractC2758b[] abstractC2758bArr = this.f660f;
            C2757a[] c2757aArr2 = new C2757a[abstractC2758bArr.length];
            if (abstractC2758bArr.length > 0) {
                AbstractC2758b abstractC2758b = abstractC2758bArr[0];
                throw null;
            }
            if (i < 2100) {
                this.f662h.putIfAbsent(valueOf, c2757aArr2);
            }
            return c2757aArr2;
        } else if (i < 1800) {
            return f654l;
        } else {
            long m930A = C2689f.m915r(i - 1, 12, 31, 0, 0).m930A(this.f656b[0]);
            long j = 1000;
            int offset = this.f661g.getOffset(m930A * 1000);
            long j2 = 31968000 + m930A;
            C2757a[] c2757aArr3 = f654l;
            while (m930A < j2) {
                long j3 = 7776000 + m930A;
                long j4 = m930A;
                if (offset != this.f661g.getOffset(j3 * j)) {
                    m930A = j4;
                    while (j3 - m930A > 1) {
                        long j5 = j2;
                        long m988e = AbstractC2670d.m988e(j3 + m930A, 2L);
                        long j6 = j3;
                        if (this.f661g.getOffset(m988e * 1000) == offset) {
                            m930A = m988e;
                            j = 1000;
                            j3 = j6;
                        } else {
                            j3 = m988e;
                            j = 1000;
                        }
                        j2 = j5;
                    }
                    long j7 = j2;
                    long j8 = j3;
                    long j9 = j;
                    if (this.f661g.getOffset(m930A * j9) == offset) {
                        m930A = j8;
                    }
                    C2726o m703j = m703j(offset);
                    int offset2 = this.f661g.getOffset(m930A * j9);
                    C2726o m703j2 = m703j(offset2);
                    if (m710c(m930A, m703j2) == i) {
                        c2757aArr3 = (C2757a[]) Arrays.copyOf(c2757aArr3, c2757aArr3.length + 1);
                        c2757aArr3[c2757aArr3.length - 1] = new C2757a(m930A, m703j, m703j2);
                    }
                    offset = offset2;
                    j = j9;
                    j2 = j7;
                } else {
                    m930A = j3;
                }
            }
            if (1916 <= i && i < 2100) {
                this.f662h.putIfAbsent(valueOf, c2757aArr3);
            }
            return c2757aArr3;
        }
    }

    /* renamed from: c */
    private int m710c(long j, C2726o c2726o) {
        return C2687d.m938s(AbstractC2670d.m988e(j + c2726o.m785p(), 86400L)).m941p();
    }

    /* renamed from: e */
    private Object m708e(C2689f c2689f) {
        C2689f[] c2689fArr;
        Object obj = null;
        int i = 0;
        if (this.f661g != null) {
            C2757a[] m711b = m711b(c2689f.m918o());
            if (m711b.length == 0) {
                return m703j(this.f661g.getOffset(c2689f.m930A(this.f656b[0]) * 1000));
            }
            int length = m711b.length;
            while (i < length) {
                C2757a c2757a = m711b[i];
                Object m712a = m712a(c2689f, c2757a);
                if ((m712a instanceof C2757a) || m712a.equals(c2757a.m716f())) {
                    return m712a;
                }
                i++;
                obj = m712a;
            }
            return obj;
        } else if (this.f657c.length == 0) {
            return this.f656b[0];
        } else {
            if (this.f660f.length > 0) {
                if (c2689f.m917p(this.f658d[c2689fArr.length - 1])) {
                    C2757a[] m711b2 = m711b(c2689f.m918o());
                    int length2 = m711b2.length;
                    while (i < length2) {
                        C2757a c2757a2 = m711b2[i];
                        Object m712a2 = m712a(c2689f, c2757a2);
                        if ((m712a2 instanceof C2757a) || m712a2.equals(c2757a2.m716f())) {
                            return m712a2;
                        }
                        i++;
                        obj = m712a2;
                    }
                    return obj;
                }
            }
            int binarySearch = Arrays.binarySearch(this.f658d, c2689f);
            if (binarySearch == -1) {
                return this.f659e[0];
            }
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            } else {
                C2689f[] c2689fArr2 = this.f658d;
                if (binarySearch < c2689fArr2.length - 1) {
                    int i2 = binarySearch + 1;
                    if (c2689fArr2[binarySearch].equals(c2689fArr2[i2])) {
                        binarySearch = i2;
                    }
                }
            }
            if ((binarySearch & 1) == 0) {
                C2689f[] c2689fArr3 = this.f658d;
                C2689f c2689f2 = c2689fArr3[binarySearch];
                C2689f c2689f3 = c2689fArr3[binarySearch + 1];
                C2726o[] c2726oArr = this.f659e;
                int i3 = binarySearch / 2;
                C2726o c2726o = c2726oArr[i3];
                C2726o c2726o2 = c2726oArr[i3 + 1];
                return c2726o2.m785p() > c2726o.m785p() ? new C2757a(c2689f2, c2726o, c2726o2) : new C2757a(c2689f3, c2726o, c2726o2);
            }
            return this.f659e[(binarySearch / 2) + 1];
        }
    }

    /* renamed from: i */
    public static C2759c m704i(C2726o c2726o) {
        return new C2759c(c2726o);
    }

    /* renamed from: j */
    private static C2726o m703j(int i) {
        return C2726o.m782s(i / 1000);
    }

    /* renamed from: d */
    public C2726o m709d(Instant instant) {
        long[] jArr;
        C2726o[] c2726oArr;
        TimeZone timeZone = this.f661g;
        if (timeZone != null) {
            return m703j(timeZone.getOffset(instant.m974o()));
        }
        if (this.f657c.length == 0) {
            return this.f656b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f660f.length > 0) {
            if (epochSecond > this.f657c[jArr.length - 1]) {
                C2757a[] m711b = m711b(m710c(epochSecond, this.f659e[c2726oArr.length - 1]));
                C2757a c2757a = null;
                for (int i = 0; i < m711b.length; i++) {
                    c2757a = m711b[i];
                    if (epochSecond < c2757a.m713i()) {
                        return c2757a.m716f();
                    }
                }
                return c2757a.m717e();
            }
        }
        int binarySearch = Arrays.binarySearch(this.f657c, epochSecond);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 2;
        }
        return this.f659e[binarySearch + 1];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2759c) {
            C2759c c2759c = (C2759c) obj;
            return AbstractC2840k.m589q(this.f661g, c2759c.f661g) && Arrays.equals(this.f655a, c2759c.f655a) && Arrays.equals(this.f656b, c2759c.f656b) && Arrays.equals(this.f657c, c2759c.f657c) && Arrays.equals(this.f659e, c2759c.f659e) && Arrays.equals(this.f660f, c2759c.f660f);
        }
        return false;
    }

    /* renamed from: f */
    public C2757a m707f(C2689f c2689f) {
        Object m708e = m708e(c2689f);
        if (m708e instanceof C2757a) {
            return (C2757a) m708e;
        }
        return null;
    }

    /* renamed from: g */
    public List m706g(C2689f c2689f) {
        Object m708e = m708e(c2689f);
        return m708e instanceof C2757a ? ((C2757a) m708e).m715g() : Collections.singletonList((C2726o) m708e);
    }

    /* renamed from: h */
    public boolean m705h() {
        TimeZone timeZone = this.f661g;
        if (timeZone == null) {
            return this.f657c.length == 0;
        } else if (timeZone.useDaylightTime() || this.f661g.getDSTSavings() != 0) {
            return false;
        } else {
            Instant instant = Instant.f484c;
            Instant instant2 = Clock.systemUTC().instant();
            C2757a c2757a = null;
            if (this.f661g != null) {
                long epochSecond = instant2.getEpochSecond();
                if (instant2.getNano() > 0 && epochSecond < Long.MAX_VALUE) {
                    epochSecond++;
                }
                int m710c = m710c(epochSecond, m709d(instant2));
                C2757a[] m711b = m711b(m710c);
                int length = m711b.length - 1;
                while (true) {
                    if (length >= 0) {
                        if (epochSecond > m711b[length].m713i()) {
                            c2757a = m711b[length];
                            break;
                        }
                        length--;
                    } else if (m710c > 1800) {
                        C2757a[] m711b2 = m711b(m710c - 1);
                        int length2 = m711b2.length - 1;
                        while (true) {
                            if (length2 < 0) {
                                long min = Math.min(epochSecond - 31104000, (Clock.systemUTC().mo985a() / 1000) + 31968000);
                                int offset = this.f661g.getOffset((epochSecond - 1) * 1000);
                                long m952A = C2687d.m939r(1800, 1, 1).m952A() * 86400;
                                while (true) {
                                    if (m952A > min) {
                                        break;
                                    }
                                    int offset2 = this.f661g.getOffset(min * 1000);
                                    if (offset != offset2) {
                                        int m710c2 = m710c(min, m703j(offset2));
                                        C2757a[] m711b3 = m711b(m710c2 + 1);
                                        int length3 = m711b3.length - 1;
                                        while (true) {
                                            if (length3 < 0) {
                                                C2757a[] m711b4 = m711b(m710c2);
                                                c2757a = m711b4[m711b4.length - 1];
                                                break;
                                            } else if (epochSecond > m711b3[length3].m713i()) {
                                                c2757a = m711b3[length3];
                                                break;
                                            } else {
                                                length3--;
                                            }
                                        }
                                    } else {
                                        min -= 7776000;
                                    }
                                }
                            } else if (epochSecond > m711b2[length2].m713i()) {
                                c2757a = m711b2[length2];
                                break;
                            } else {
                                length2--;
                            }
                        }
                    }
                }
            } else if (this.f657c.length != 0) {
                long epochSecond2 = instant2.getEpochSecond();
                if (instant2.getNano() > 0 && epochSecond2 < Long.MAX_VALUE) {
                    epochSecond2++;
                }
                long[] jArr = this.f657c;
                long j = jArr[jArr.length - 1];
                if (this.f660f.length > 0 && epochSecond2 > j) {
                    C2726o[] c2726oArr = this.f659e;
                    C2726o c2726o = c2726oArr[c2726oArr.length - 1];
                    int m710c3 = m710c(epochSecond2, c2726o);
                    C2757a[] m711b5 = m711b(m710c3);
                    int length4 = m711b5.length - 1;
                    while (true) {
                        if (length4 < 0) {
                            int i = m710c3 - 1;
                            if (i > m710c(j, c2726o)) {
                                C2757a[] m711b6 = m711b(i);
                                c2757a = m711b6[m711b6.length - 1];
                            }
                        } else if (epochSecond2 > m711b5[length4].m713i()) {
                            c2757a = m711b5[length4];
                            break;
                        } else {
                            length4--;
                        }
                    }
                }
                int binarySearch = Arrays.binarySearch(this.f657c, epochSecond2);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                if (binarySearch > 0) {
                    int i2 = binarySearch - 1;
                    long j2 = this.f657c[i2];
                    C2726o[] c2726oArr2 = this.f659e;
                    c2757a = new C2757a(j2, c2726oArr2[i2], c2726oArr2[binarySearch]);
                }
            }
            return c2757a == null;
        }
    }

    public int hashCode() {
        TimeZone timeZone = this.f661g;
        return (((((timeZone != null ? timeZone.hashCode() : 0) ^ Arrays.hashCode(this.f655a)) ^ Arrays.hashCode(this.f656b)) ^ Arrays.hashCode(this.f657c)) ^ Arrays.hashCode(this.f659e)) ^ Arrays.hashCode(this.f660f);
    }

    public String toString() {
        StringBuilder m961a;
        if (this.f661g != null) {
            m961a = AbstractC2676a.m961a("ZoneRules[timeZone=");
            m961a.append(this.f661g.getID());
        } else {
            m961a = AbstractC2676a.m961a("ZoneRules[currentStandardOffset=");
            C2726o[] c2726oArr = this.f656b;
            m961a.append(c2726oArr[c2726oArr.length - 1]);
        }
        m961a.append("]");
        return m961a.toString();
    }
}
