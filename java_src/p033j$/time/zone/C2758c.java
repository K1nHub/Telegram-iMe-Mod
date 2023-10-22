package p033j$.time.zone;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import p033j$.lang.AbstractC2669d;
import p033j$.time.AbstractC2675a;
import p033j$.time.C2686d;
import p033j$.time.C2688f;
import p033j$.time.C2725o;
import p033j$.time.Clock;
import p033j$.time.Instant;
import p033j$.util.AbstractC2839k;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.zone.c */
/* loaded from: classes2.dex */
public final class C2758c implements Serializable {

    /* renamed from: i */
    private static final long[] f651i = new long[0];

    /* renamed from: j */
    private static final AbstractC2757b[] f652j = new AbstractC2757b[0];

    /* renamed from: k */
    private static final C2688f[] f653k = new C2688f[0];

    /* renamed from: l */
    private static final C2756a[] f654l = new C2756a[0];

    /* renamed from: a */
    private final long[] f655a;

    /* renamed from: b */
    private final C2725o[] f656b;

    /* renamed from: c */
    private final long[] f657c;

    /* renamed from: d */
    private final C2688f[] f658d;

    /* renamed from: e */
    private final C2725o[] f659e;

    /* renamed from: f */
    private final AbstractC2757b[] f660f;

    /* renamed from: g */
    private final TimeZone f661g;

    /* renamed from: h */
    private final transient ConcurrentMap f662h = new ConcurrentHashMap();

    private C2758c(C2725o c2725o) {
        this.f656b = r0;
        C2725o[] c2725oArr = {c2725o};
        long[] jArr = f651i;
        this.f655a = jArr;
        this.f657c = jArr;
        this.f658d = f653k;
        this.f659e = c2725oArr;
        this.f660f = f652j;
        this.f661g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2758c(TimeZone timeZone) {
        this.f656b = r0;
        C2725o[] c2725oArr = {m702j(timeZone.getRawOffset())};
        long[] jArr = f651i;
        this.f655a = jArr;
        this.f657c = jArr;
        this.f658d = f653k;
        this.f659e = c2725oArr;
        this.f660f = f652j;
        this.f661g = timeZone;
    }

    /* renamed from: a */
    private Object m711a(C2688f c2688f, C2756a c2756a) {
        C2688f m719b = c2756a.m719b();
        boolean m713h = c2756a.m713h();
        boolean m915q = c2688f.m915q(m719b);
        return m713h ? m915q ? c2756a.m715f() : c2688f.m915q(c2756a.m720a()) ? c2756a : c2756a.m716e() : !m915q ? c2756a.m716e() : c2688f.m915q(c2756a.m720a()) ? c2756a.m715f() : c2756a;
    }

    /* renamed from: b */
    private C2756a[] m710b(int i) {
        Integer valueOf = Integer.valueOf(i);
        C2756a[] c2756aArr = (C2756a[]) this.f662h.get(valueOf);
        if (c2756aArr != null) {
            return c2756aArr;
        }
        if (this.f661g == null) {
            AbstractC2757b[] abstractC2757bArr = this.f660f;
            C2756a[] c2756aArr2 = new C2756a[abstractC2757bArr.length];
            if (abstractC2757bArr.length > 0) {
                AbstractC2757b abstractC2757b = abstractC2757bArr[0];
                throw null;
            }
            if (i < 2100) {
                this.f662h.putIfAbsent(valueOf, c2756aArr2);
            }
            return c2756aArr2;
        } else if (i < 1800) {
            return f654l;
        } else {
            long m929A = C2688f.m914r(i - 1, 12, 31, 0, 0).m929A(this.f656b[0]);
            long j = 1000;
            int offset = this.f661g.getOffset(m929A * 1000);
            long j2 = 31968000 + m929A;
            C2756a[] c2756aArr3 = f654l;
            while (m929A < j2) {
                long j3 = 7776000 + m929A;
                long j4 = m929A;
                if (offset != this.f661g.getOffset(j3 * j)) {
                    m929A = j4;
                    while (j3 - m929A > 1) {
                        long j5 = j2;
                        long m987e = AbstractC2669d.m987e(j3 + m929A, 2L);
                        long j6 = j3;
                        if (this.f661g.getOffset(m987e * 1000) == offset) {
                            m929A = m987e;
                            j = 1000;
                            j3 = j6;
                        } else {
                            j3 = m987e;
                            j = 1000;
                        }
                        j2 = j5;
                    }
                    long j7 = j2;
                    long j8 = j3;
                    long j9 = j;
                    if (this.f661g.getOffset(m929A * j9) == offset) {
                        m929A = j8;
                    }
                    C2725o m702j = m702j(offset);
                    int offset2 = this.f661g.getOffset(m929A * j9);
                    C2725o m702j2 = m702j(offset2);
                    if (m709c(m929A, m702j2) == i) {
                        c2756aArr3 = (C2756a[]) Arrays.copyOf(c2756aArr3, c2756aArr3.length + 1);
                        c2756aArr3[c2756aArr3.length - 1] = new C2756a(m929A, m702j, m702j2);
                    }
                    offset = offset2;
                    j = j9;
                    j2 = j7;
                } else {
                    m929A = j3;
                }
            }
            if (1916 <= i && i < 2100) {
                this.f662h.putIfAbsent(valueOf, c2756aArr3);
            }
            return c2756aArr3;
        }
    }

    /* renamed from: c */
    private int m709c(long j, C2725o c2725o) {
        return C2686d.m937s(AbstractC2669d.m987e(j + c2725o.m784p(), 86400L)).m940p();
    }

    /* renamed from: e */
    private Object m707e(C2688f c2688f) {
        C2688f[] c2688fArr;
        Object obj = null;
        int i = 0;
        if (this.f661g != null) {
            C2756a[] m710b = m710b(c2688f.m917o());
            if (m710b.length == 0) {
                return m702j(this.f661g.getOffset(c2688f.m929A(this.f656b[0]) * 1000));
            }
            int length = m710b.length;
            while (i < length) {
                C2756a c2756a = m710b[i];
                Object m711a = m711a(c2688f, c2756a);
                if ((m711a instanceof C2756a) || m711a.equals(c2756a.m715f())) {
                    return m711a;
                }
                i++;
                obj = m711a;
            }
            return obj;
        } else if (this.f657c.length == 0) {
            return this.f656b[0];
        } else {
            if (this.f660f.length > 0) {
                if (c2688f.m916p(this.f658d[c2688fArr.length - 1])) {
                    C2756a[] m710b2 = m710b(c2688f.m917o());
                    int length2 = m710b2.length;
                    while (i < length2) {
                        C2756a c2756a2 = m710b2[i];
                        Object m711a2 = m711a(c2688f, c2756a2);
                        if ((m711a2 instanceof C2756a) || m711a2.equals(c2756a2.m715f())) {
                            return m711a2;
                        }
                        i++;
                        obj = m711a2;
                    }
                    return obj;
                }
            }
            int binarySearch = Arrays.binarySearch(this.f658d, c2688f);
            if (binarySearch == -1) {
                return this.f659e[0];
            }
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            } else {
                C2688f[] c2688fArr2 = this.f658d;
                if (binarySearch < c2688fArr2.length - 1) {
                    int i2 = binarySearch + 1;
                    if (c2688fArr2[binarySearch].equals(c2688fArr2[i2])) {
                        binarySearch = i2;
                    }
                }
            }
            if ((binarySearch & 1) == 0) {
                C2688f[] c2688fArr3 = this.f658d;
                C2688f c2688f2 = c2688fArr3[binarySearch];
                C2688f c2688f3 = c2688fArr3[binarySearch + 1];
                C2725o[] c2725oArr = this.f659e;
                int i3 = binarySearch / 2;
                C2725o c2725o = c2725oArr[i3];
                C2725o c2725o2 = c2725oArr[i3 + 1];
                return c2725o2.m784p() > c2725o.m784p() ? new C2756a(c2688f2, c2725o, c2725o2) : new C2756a(c2688f3, c2725o, c2725o2);
            }
            return this.f659e[(binarySearch / 2) + 1];
        }
    }

    /* renamed from: i */
    public static C2758c m703i(C2725o c2725o) {
        return new C2758c(c2725o);
    }

    /* renamed from: j */
    private static C2725o m702j(int i) {
        return C2725o.m781s(i / 1000);
    }

    /* renamed from: d */
    public C2725o m708d(Instant instant) {
        long[] jArr;
        C2725o[] c2725oArr;
        TimeZone timeZone = this.f661g;
        if (timeZone != null) {
            return m702j(timeZone.getOffset(instant.m973o()));
        }
        if (this.f657c.length == 0) {
            return this.f656b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f660f.length > 0) {
            if (epochSecond > this.f657c[jArr.length - 1]) {
                C2756a[] m710b = m710b(m709c(epochSecond, this.f659e[c2725oArr.length - 1]));
                C2756a c2756a = null;
                for (int i = 0; i < m710b.length; i++) {
                    c2756a = m710b[i];
                    if (epochSecond < c2756a.m712i()) {
                        return c2756a.m715f();
                    }
                }
                return c2756a.m716e();
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
        if (obj instanceof C2758c) {
            C2758c c2758c = (C2758c) obj;
            return AbstractC2839k.m588q(this.f661g, c2758c.f661g) && Arrays.equals(this.f655a, c2758c.f655a) && Arrays.equals(this.f656b, c2758c.f656b) && Arrays.equals(this.f657c, c2758c.f657c) && Arrays.equals(this.f659e, c2758c.f659e) && Arrays.equals(this.f660f, c2758c.f660f);
        }
        return false;
    }

    /* renamed from: f */
    public C2756a m706f(C2688f c2688f) {
        Object m707e = m707e(c2688f);
        if (m707e instanceof C2756a) {
            return (C2756a) m707e;
        }
        return null;
    }

    /* renamed from: g */
    public List m705g(C2688f c2688f) {
        Object m707e = m707e(c2688f);
        return m707e instanceof C2756a ? ((C2756a) m707e).m714g() : Collections.singletonList((C2725o) m707e);
    }

    /* renamed from: h */
    public boolean m704h() {
        TimeZone timeZone = this.f661g;
        if (timeZone == null) {
            return this.f657c.length == 0;
        } else if (timeZone.useDaylightTime() || this.f661g.getDSTSavings() != 0) {
            return false;
        } else {
            Instant instant = Instant.f484c;
            Instant instant2 = Clock.systemUTC().instant();
            C2756a c2756a = null;
            if (this.f661g != null) {
                long epochSecond = instant2.getEpochSecond();
                if (instant2.getNano() > 0 && epochSecond < Long.MAX_VALUE) {
                    epochSecond++;
                }
                int m709c = m709c(epochSecond, m708d(instant2));
                C2756a[] m710b = m710b(m709c);
                int length = m710b.length - 1;
                while (true) {
                    if (length >= 0) {
                        if (epochSecond > m710b[length].m712i()) {
                            c2756a = m710b[length];
                            break;
                        }
                        length--;
                    } else if (m709c > 1800) {
                        C2756a[] m710b2 = m710b(m709c - 1);
                        int length2 = m710b2.length - 1;
                        while (true) {
                            if (length2 < 0) {
                                long min = Math.min(epochSecond - 31104000, (Clock.systemUTC().mo984a() / 1000) + 31968000);
                                int offset = this.f661g.getOffset((epochSecond - 1) * 1000);
                                long m951A = C2686d.m938r(1800, 1, 1).m951A() * 86400;
                                while (true) {
                                    if (m951A > min) {
                                        break;
                                    }
                                    int offset2 = this.f661g.getOffset(min * 1000);
                                    if (offset != offset2) {
                                        int m709c2 = m709c(min, m702j(offset2));
                                        C2756a[] m710b3 = m710b(m709c2 + 1);
                                        int length3 = m710b3.length - 1;
                                        while (true) {
                                            if (length3 < 0) {
                                                C2756a[] m710b4 = m710b(m709c2);
                                                c2756a = m710b4[m710b4.length - 1];
                                                break;
                                            } else if (epochSecond > m710b3[length3].m712i()) {
                                                c2756a = m710b3[length3];
                                                break;
                                            } else {
                                                length3--;
                                            }
                                        }
                                    } else {
                                        min -= 7776000;
                                    }
                                }
                            } else if (epochSecond > m710b2[length2].m712i()) {
                                c2756a = m710b2[length2];
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
                    C2725o[] c2725oArr = this.f659e;
                    C2725o c2725o = c2725oArr[c2725oArr.length - 1];
                    int m709c3 = m709c(epochSecond2, c2725o);
                    C2756a[] m710b5 = m710b(m709c3);
                    int length4 = m710b5.length - 1;
                    while (true) {
                        if (length4 < 0) {
                            int i = m709c3 - 1;
                            if (i > m709c(j, c2725o)) {
                                C2756a[] m710b6 = m710b(i);
                                c2756a = m710b6[m710b6.length - 1];
                            }
                        } else if (epochSecond2 > m710b5[length4].m712i()) {
                            c2756a = m710b5[length4];
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
                    C2725o[] c2725oArr2 = this.f659e;
                    c2756a = new C2756a(j2, c2725oArr2[i2], c2725oArr2[binarySearch]);
                }
            }
            return c2756a == null;
        }
    }

    public int hashCode() {
        TimeZone timeZone = this.f661g;
        return (((((timeZone != null ? timeZone.hashCode() : 0) ^ Arrays.hashCode(this.f655a)) ^ Arrays.hashCode(this.f656b)) ^ Arrays.hashCode(this.f657c)) ^ Arrays.hashCode(this.f659e)) ^ Arrays.hashCode(this.f660f);
    }

    public String toString() {
        StringBuilder m960a;
        if (this.f661g != null) {
            m960a = AbstractC2675a.m960a("ZoneRules[timeZone=");
            m960a.append(this.f661g.getID());
        } else {
            m960a = AbstractC2675a.m960a("ZoneRules[currentStandardOffset=");
            C2725o[] c2725oArr = this.f656b;
            m960a.append(c2725oArr[c2725oArr.length - 1]);
        }
        m960a.append("]");
        return m960a.toString();
    }
}
