package p033j$.time.zone;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentMap;
import p033j$.lang.AbstractC2668d;
import p033j$.time.AbstractC2674a;
import p033j$.time.C2685d;
import p033j$.time.C2687f;
import p033j$.time.C2724o;
import p033j$.time.Clock;
import p033j$.time.Instant;
import p033j$.util.AbstractC2838k;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.zone.c */
/* loaded from: classes2.dex */
public final class C2757c implements Serializable {

    /* renamed from: i */
    private static final long[] f651i = new long[0];

    /* renamed from: j */
    private static final AbstractC2756b[] f652j = new AbstractC2756b[0];

    /* renamed from: k */
    private static final C2687f[] f653k = new C2687f[0];

    /* renamed from: l */
    private static final C2755a[] f654l = new C2755a[0];

    /* renamed from: a */
    private final long[] f655a;

    /* renamed from: b */
    private final C2724o[] f656b;

    /* renamed from: c */
    private final long[] f657c;

    /* renamed from: d */
    private final C2687f[] f658d;

    /* renamed from: e */
    private final C2724o[] f659e;

    /* renamed from: f */
    private final AbstractC2756b[] f660f;

    /* renamed from: g */
    private final TimeZone f661g;

    /* renamed from: h */
    private final transient ConcurrentMap f662h = new ConcurrentHashMap();

    private C2757c(C2724o c2724o) {
        this.f656b = r0;
        C2724o[] c2724oArr = {c2724o};
        long[] jArr = f651i;
        this.f655a = jArr;
        this.f657c = jArr;
        this.f658d = f653k;
        this.f659e = c2724oArr;
        this.f660f = f652j;
        this.f661g = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2757c(TimeZone timeZone) {
        this.f656b = r0;
        C2724o[] c2724oArr = {m706j(timeZone.getRawOffset())};
        long[] jArr = f651i;
        this.f655a = jArr;
        this.f657c = jArr;
        this.f658d = f653k;
        this.f659e = c2724oArr;
        this.f660f = f652j;
        this.f661g = timeZone;
    }

    /* renamed from: a */
    private Object m715a(C2687f c2687f, C2755a c2755a) {
        C2687f m723b = c2755a.m723b();
        boolean m717h = c2755a.m717h();
        boolean m919q = c2687f.m919q(m723b);
        return m717h ? m919q ? c2755a.m719f() : c2687f.m919q(c2755a.m724a()) ? c2755a : c2755a.m720e() : !m919q ? c2755a.m720e() : c2687f.m919q(c2755a.m724a()) ? c2755a.m719f() : c2755a;
    }

    /* renamed from: b */
    private C2755a[] m714b(int i) {
        Integer valueOf = Integer.valueOf(i);
        C2755a[] c2755aArr = (C2755a[]) this.f662h.get(valueOf);
        if (c2755aArr != null) {
            return c2755aArr;
        }
        if (this.f661g == null) {
            AbstractC2756b[] abstractC2756bArr = this.f660f;
            C2755a[] c2755aArr2 = new C2755a[abstractC2756bArr.length];
            if (abstractC2756bArr.length > 0) {
                AbstractC2756b abstractC2756b = abstractC2756bArr[0];
                throw null;
            }
            if (i < 2100) {
                this.f662h.putIfAbsent(valueOf, c2755aArr2);
            }
            return c2755aArr2;
        } else if (i < 1800) {
            return f654l;
        } else {
            long m933A = C2687f.m918r(i - 1, 12, 31, 0, 0).m933A(this.f656b[0]);
            long j = 1000;
            int offset = this.f661g.getOffset(m933A * 1000);
            long j2 = 31968000 + m933A;
            C2755a[] c2755aArr3 = f654l;
            while (m933A < j2) {
                long j3 = 7776000 + m933A;
                long j4 = m933A;
                if (offset != this.f661g.getOffset(j3 * j)) {
                    m933A = j4;
                    while (j3 - m933A > 1) {
                        long j5 = j2;
                        long m991e = AbstractC2668d.m991e(j3 + m933A, 2L);
                        long j6 = j3;
                        if (this.f661g.getOffset(m991e * 1000) == offset) {
                            m933A = m991e;
                            j = 1000;
                            j3 = j6;
                        } else {
                            j3 = m991e;
                            j = 1000;
                        }
                        j2 = j5;
                    }
                    long j7 = j2;
                    long j8 = j3;
                    long j9 = j;
                    if (this.f661g.getOffset(m933A * j9) == offset) {
                        m933A = j8;
                    }
                    C2724o m706j = m706j(offset);
                    int offset2 = this.f661g.getOffset(m933A * j9);
                    C2724o m706j2 = m706j(offset2);
                    if (m713c(m933A, m706j2) == i) {
                        c2755aArr3 = (C2755a[]) Arrays.copyOf(c2755aArr3, c2755aArr3.length + 1);
                        c2755aArr3[c2755aArr3.length - 1] = new C2755a(m933A, m706j, m706j2);
                    }
                    offset = offset2;
                    j = j9;
                    j2 = j7;
                } else {
                    m933A = j3;
                }
            }
            if (1916 <= i && i < 2100) {
                this.f662h.putIfAbsent(valueOf, c2755aArr3);
            }
            return c2755aArr3;
        }
    }

    /* renamed from: c */
    private int m713c(long j, C2724o c2724o) {
        return C2685d.m941s(AbstractC2668d.m991e(j + c2724o.m788p(), 86400L)).m944p();
    }

    /* renamed from: e */
    private Object m711e(C2687f c2687f) {
        C2687f[] c2687fArr;
        Object obj = null;
        int i = 0;
        if (this.f661g != null) {
            C2755a[] m714b = m714b(c2687f.m921o());
            if (m714b.length == 0) {
                return m706j(this.f661g.getOffset(c2687f.m933A(this.f656b[0]) * 1000));
            }
            int length = m714b.length;
            while (i < length) {
                C2755a c2755a = m714b[i];
                Object m715a = m715a(c2687f, c2755a);
                if ((m715a instanceof C2755a) || m715a.equals(c2755a.m719f())) {
                    return m715a;
                }
                i++;
                obj = m715a;
            }
            return obj;
        } else if (this.f657c.length == 0) {
            return this.f656b[0];
        } else {
            if (this.f660f.length > 0) {
                if (c2687f.m920p(this.f658d[c2687fArr.length - 1])) {
                    C2755a[] m714b2 = m714b(c2687f.m921o());
                    int length2 = m714b2.length;
                    while (i < length2) {
                        C2755a c2755a2 = m714b2[i];
                        Object m715a2 = m715a(c2687f, c2755a2);
                        if ((m715a2 instanceof C2755a) || m715a2.equals(c2755a2.m719f())) {
                            return m715a2;
                        }
                        i++;
                        obj = m715a2;
                    }
                    return obj;
                }
            }
            int binarySearch = Arrays.binarySearch(this.f658d, c2687f);
            if (binarySearch == -1) {
                return this.f659e[0];
            }
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            } else {
                C2687f[] c2687fArr2 = this.f658d;
                if (binarySearch < c2687fArr2.length - 1) {
                    int i2 = binarySearch + 1;
                    if (c2687fArr2[binarySearch].equals(c2687fArr2[i2])) {
                        binarySearch = i2;
                    }
                }
            }
            if ((binarySearch & 1) == 0) {
                C2687f[] c2687fArr3 = this.f658d;
                C2687f c2687f2 = c2687fArr3[binarySearch];
                C2687f c2687f3 = c2687fArr3[binarySearch + 1];
                C2724o[] c2724oArr = this.f659e;
                int i3 = binarySearch / 2;
                C2724o c2724o = c2724oArr[i3];
                C2724o c2724o2 = c2724oArr[i3 + 1];
                return c2724o2.m788p() > c2724o.m788p() ? new C2755a(c2687f2, c2724o, c2724o2) : new C2755a(c2687f3, c2724o, c2724o2);
            }
            return this.f659e[(binarySearch / 2) + 1];
        }
    }

    /* renamed from: i */
    public static C2757c m707i(C2724o c2724o) {
        return new C2757c(c2724o);
    }

    /* renamed from: j */
    private static C2724o m706j(int i) {
        return C2724o.m785s(i / 1000);
    }

    /* renamed from: d */
    public C2724o m712d(Instant instant) {
        long[] jArr;
        C2724o[] c2724oArr;
        TimeZone timeZone = this.f661g;
        if (timeZone != null) {
            return m706j(timeZone.getOffset(instant.m977o()));
        }
        if (this.f657c.length == 0) {
            return this.f656b[0];
        }
        long epochSecond = instant.getEpochSecond();
        if (this.f660f.length > 0) {
            if (epochSecond > this.f657c[jArr.length - 1]) {
                C2755a[] m714b = m714b(m713c(epochSecond, this.f659e[c2724oArr.length - 1]));
                C2755a c2755a = null;
                for (int i = 0; i < m714b.length; i++) {
                    c2755a = m714b[i];
                    if (epochSecond < c2755a.m716i()) {
                        return c2755a.m719f();
                    }
                }
                return c2755a.m720e();
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
        if (obj instanceof C2757c) {
            C2757c c2757c = (C2757c) obj;
            return AbstractC2838k.m592q(this.f661g, c2757c.f661g) && Arrays.equals(this.f655a, c2757c.f655a) && Arrays.equals(this.f656b, c2757c.f656b) && Arrays.equals(this.f657c, c2757c.f657c) && Arrays.equals(this.f659e, c2757c.f659e) && Arrays.equals(this.f660f, c2757c.f660f);
        }
        return false;
    }

    /* renamed from: f */
    public C2755a m710f(C2687f c2687f) {
        Object m711e = m711e(c2687f);
        if (m711e instanceof C2755a) {
            return (C2755a) m711e;
        }
        return null;
    }

    /* renamed from: g */
    public List m709g(C2687f c2687f) {
        Object m711e = m711e(c2687f);
        return m711e instanceof C2755a ? ((C2755a) m711e).m718g() : Collections.singletonList((C2724o) m711e);
    }

    /* renamed from: h */
    public boolean m708h() {
        TimeZone timeZone = this.f661g;
        if (timeZone == null) {
            return this.f657c.length == 0;
        } else if (timeZone.useDaylightTime() || this.f661g.getDSTSavings() != 0) {
            return false;
        } else {
            Instant instant = Instant.f484c;
            Instant instant2 = Clock.systemUTC().instant();
            C2755a c2755a = null;
            if (this.f661g != null) {
                long epochSecond = instant2.getEpochSecond();
                if (instant2.getNano() > 0 && epochSecond < Long.MAX_VALUE) {
                    epochSecond++;
                }
                int m713c = m713c(epochSecond, m712d(instant2));
                C2755a[] m714b = m714b(m713c);
                int length = m714b.length - 1;
                while (true) {
                    if (length >= 0) {
                        if (epochSecond > m714b[length].m716i()) {
                            c2755a = m714b[length];
                            break;
                        }
                        length--;
                    } else if (m713c > 1800) {
                        C2755a[] m714b2 = m714b(m713c - 1);
                        int length2 = m714b2.length - 1;
                        while (true) {
                            if (length2 < 0) {
                                long min = Math.min(epochSecond - 31104000, (Clock.systemUTC().mo988a() / 1000) + 31968000);
                                int offset = this.f661g.getOffset((epochSecond - 1) * 1000);
                                long m955A = C2685d.m942r(1800, 1, 1).m955A() * 86400;
                                while (true) {
                                    if (m955A > min) {
                                        break;
                                    }
                                    int offset2 = this.f661g.getOffset(min * 1000);
                                    if (offset != offset2) {
                                        int m713c2 = m713c(min, m706j(offset2));
                                        C2755a[] m714b3 = m714b(m713c2 + 1);
                                        int length3 = m714b3.length - 1;
                                        while (true) {
                                            if (length3 < 0) {
                                                C2755a[] m714b4 = m714b(m713c2);
                                                c2755a = m714b4[m714b4.length - 1];
                                                break;
                                            } else if (epochSecond > m714b3[length3].m716i()) {
                                                c2755a = m714b3[length3];
                                                break;
                                            } else {
                                                length3--;
                                            }
                                        }
                                    } else {
                                        min -= 7776000;
                                    }
                                }
                            } else if (epochSecond > m714b2[length2].m716i()) {
                                c2755a = m714b2[length2];
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
                    C2724o[] c2724oArr = this.f659e;
                    C2724o c2724o = c2724oArr[c2724oArr.length - 1];
                    int m713c3 = m713c(epochSecond2, c2724o);
                    C2755a[] m714b5 = m714b(m713c3);
                    int length4 = m714b5.length - 1;
                    while (true) {
                        if (length4 < 0) {
                            int i = m713c3 - 1;
                            if (i > m713c(j, c2724o)) {
                                C2755a[] m714b6 = m714b(i);
                                c2755a = m714b6[m714b6.length - 1];
                            }
                        } else if (epochSecond2 > m714b5[length4].m716i()) {
                            c2755a = m714b5[length4];
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
                    C2724o[] c2724oArr2 = this.f659e;
                    c2755a = new C2755a(j2, c2724oArr2[i2], c2724oArr2[binarySearch]);
                }
            }
            return c2755a == null;
        }
    }

    public int hashCode() {
        TimeZone timeZone = this.f661g;
        return (((((timeZone != null ? timeZone.hashCode() : 0) ^ Arrays.hashCode(this.f655a)) ^ Arrays.hashCode(this.f656b)) ^ Arrays.hashCode(this.f657c)) ^ Arrays.hashCode(this.f659e)) ^ Arrays.hashCode(this.f660f);
    }

    public String toString() {
        StringBuilder m964a;
        if (this.f661g != null) {
            m964a = AbstractC2674a.m964a("ZoneRules[timeZone=");
            m964a.append(this.f661g.getID());
        } else {
            m964a = AbstractC2674a.m964a("ZoneRules[currentStandardOffset=");
            C2724o[] c2724oArr = this.f656b;
            m964a.append(c2724oArr[c2724oArr.length - 1]);
        }
        m964a.append("]");
        return m964a.toString();
    }
}
