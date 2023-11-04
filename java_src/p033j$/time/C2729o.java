package p033j$.time;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2752s;
import p033j$.time.temporal.C2753t;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2743j;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
import p033j$.time.zone.C2762c;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.o */
/* loaded from: classes2.dex */
public final class C2729o extends AbstractC2728n implements InterfaceC2744k, InterfaceC2745l, Comparable {

    /* renamed from: c */
    private static final ConcurrentMap f608c = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: d */
    private static final ConcurrentMap f609d = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: e */
    public static final C2729o f610e = m782s(0);

    /* renamed from: f */
    public static final C2729o f611f = m782s(-64800);

    /* renamed from: g */
    public static final C2729o f612g = m782s(64800);

    /* renamed from: a */
    private final int f613a;

    /* renamed from: b */
    private final transient String f614b;

    private C2729o(int i) {
        String sb;
        this.f613a = i;
        if (i == 0) {
            sb = "Z";
        } else {
            int abs = Math.abs(i);
            StringBuilder sb2 = new StringBuilder();
            int i2 = abs / 3600;
            int i3 = (abs / 60) % 60;
            sb2.append(i < 0 ? "-" : "+");
            sb2.append(i2 < 10 ? SessionDescription.SUPPORTED_SDP_VERSION : "");
            sb2.append(i2);
            sb2.append(i3 < 10 ? ":0" : ":");
            sb2.append(i3);
            int i4 = abs % 60;
            if (i4 != 0) {
                sb2.append(i4 >= 10 ? ":" : ":0");
                sb2.append(i4);
            }
            sb = sb2.toString();
        }
        this.f614b = sb;
    }

    /* renamed from: o */
    public static C2729o m786o(InterfaceC2744k interfaceC2744k) {
        Objects.requireNonNull(interfaceC2744k, "temporal");
        int i = AbstractC2756w.f647a;
        C2729o c2729o = (C2729o) interfaceC2744k.mo738g(C2752s.f643a);
        if (c2729o != null) {
            return c2729o;
        }
        throw new DateTimeException("Unable to obtain ZoneOffset from TemporalAccessor: " + interfaceC2744k + " of type " + interfaceC2744k.getClass().getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00be  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p033j$.time.C2729o m784q(java.lang.String r7) {
        /*
            java.lang.String r0 = "offsetId"
            java.util.Objects.requireNonNull(r7, r0)
            java.util.concurrent.ConcurrentMap r0 = p033j$.time.C2729o.f609d
            java.lang.Object r0 = r0.get(r7)
            j$.time.o r0 = (p033j$.time.C2729o) r0
            if (r0 == 0) goto L10
            return r0
        L10:
            int r0 = r7.length()
            r1 = 2
            r2 = 1
            r3 = 0
            if (r0 == r1) goto L6e
            r1 = 3
            if (r0 == r1) goto L8a
            r4 = 5
            if (r0 == r4) goto L64
            r5 = 6
            r6 = 4
            if (r0 == r5) goto L5b
            r5 = 7
            if (r0 == r5) goto L4e
            r1 = 9
            if (r0 != r1) goto L37
            int r0 = m781t(r7, r2, r3)
            int r1 = m781t(r7, r6, r2)
            int r2 = m781t(r7, r5, r2)
            goto L90
        L37:
            j$.time.DateTimeException r0 = new j$.time.DateTimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid ID for ZoneOffset, invalid format: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        L4e:
            int r0 = m781t(r7, r2, r3)
            int r1 = m781t(r7, r1, r3)
            int r2 = m781t(r7, r4, r3)
            goto L90
        L5b:
            int r0 = m781t(r7, r2, r3)
            int r1 = m781t(r7, r6, r2)
            goto L6c
        L64:
            int r0 = m781t(r7, r2, r3)
            int r1 = m781t(r7, r1, r3)
        L6c:
            r2 = r3
            goto L90
        L6e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            char r1 = r7.charAt(r3)
            r0.append(r1)
            java.lang.String r1 = "0"
            r0.append(r1)
            char r7 = r7.charAt(r2)
            r0.append(r7)
            java.lang.String r7 = r0.toString()
        L8a:
            int r0 = m781t(r7, r2, r3)
            r1 = r3
            r2 = r1
        L90:
            char r3 = r7.charAt(r3)
            r4 = 43
            r5 = 45
            if (r3 == r4) goto Lb4
            if (r3 != r5) goto L9d
            goto Lb4
        L9d:
            j$.time.DateTimeException r0 = new j$.time.DateTimeException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Invalid ID for ZoneOffset, plus/minus not found when expected: "
            r1.append(r2)
            r1.append(r7)
            java.lang.String r7 = r1.toString()
            r0.<init>(r7)
            throw r0
        Lb4:
            if (r3 != r5) goto Lbe
            int r7 = -r0
            int r0 = -r1
            int r1 = -r2
            j$.time.o r7 = m783r(r7, r0, r1)
            return r7
        Lbe:
            j$.time.o r7 = m783r(r0, r1, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.C2729o.m784q(java.lang.String):j$.time.o");
    }

    /* renamed from: r */
    public static C2729o m783r(int i, int i2, int i3) {
        if (i < -18 || i > 18) {
            throw new DateTimeException("Zone offset hours not in valid range: value " + i + " is not in the range -18 to 18");
        }
        if (i > 0) {
            if (i2 < 0 || i3 < 0) {
                throw new DateTimeException("Zone offset minutes and seconds must be positive because hours is positive");
            }
        } else if (i < 0) {
            if (i2 > 0 || i3 > 0) {
                throw new DateTimeException("Zone offset minutes and seconds must be negative because hours is negative");
            }
        } else if ((i2 > 0 && i3 < 0) || (i2 < 0 && i3 > 0)) {
            throw new DateTimeException("Zone offset minutes and seconds must have the same sign");
        }
        if (i2 < -59 || i2 > 59) {
            throw new DateTimeException("Zone offset minutes not in valid range: value " + i2 + " is not in the range -59 to 59");
        } else if (i3 < -59 || i3 > 59) {
            throw new DateTimeException("Zone offset seconds not in valid range: value " + i3 + " is not in the range -59 to 59");
        } else if (Math.abs(i) != 18 || (i2 | i3) == 0) {
            return m782s((i2 * 60) + (i * 3600) + i3);
        } else {
            throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
        }
    }

    /* renamed from: s */
    public static C2729o m782s(int i) {
        if (i < -64800 || i > 64800) {
            throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i % 900 == 0) {
            Integer valueOf = Integer.valueOf(i);
            ConcurrentMap concurrentMap = f608c;
            C2729o c2729o = (C2729o) concurrentMap.get(valueOf);
            if (c2729o == null) {
                concurrentMap.putIfAbsent(valueOf, new C2729o(i));
                C2729o c2729o2 = (C2729o) concurrentMap.get(valueOf);
                f609d.putIfAbsent(c2729o2.f614b, c2729o2);
                return c2729o2;
            }
            return c2729o;
        }
        return new C2729o(i);
    }

    /* renamed from: t */
    private static int m781t(CharSequence charSequence, int i, boolean z) {
        if (z && charSequence.charAt(i - 1) != ':') {
            throw new DateTimeException("Invalid ID for ZoneOffset, colon not found when expected: " + ((Object) charSequence));
        }
        char charAt = charSequence.charAt(i);
        char charAt2 = charSequence.charAt(i + 1);
        if (charAt >= '0' && charAt <= '9' && charAt2 >= '0' && charAt2 <= '9') {
            return (charAt2 - '0') + ((charAt - '0') * 10);
        }
        throw new DateTimeException("Invalid ID for ZoneOffset, non numeric characters found: " + ((Object) charSequence));
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o == EnumC2734a.OFFSET_SECONDS) {
            return this.f613a;
        }
        if (interfaceC2748o instanceof EnumC2734a) {
            throw new C2759z("Unsupported field: " + interfaceC2748o);
        }
        return AbstractC2747n.m733c(this, interfaceC2748o).m765a(mo739e(interfaceC2748o), interfaceC2748o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((C2729o) obj).f613a - this.f613a;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return AbstractC2747n.m733c(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o == EnumC2734a.OFFSET_SECONDS) {
            return this.f613a;
        }
        if (interfaceC2748o instanceof EnumC2734a) {
            throw new C2759z("Unsupported field: " + interfaceC2748o);
        }
        return interfaceC2748o.mo728d(this);
    }

    @Override // p033j$.time.AbstractC2728n
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2729o) && this.f613a == ((C2729o) obj).f613a;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        return (interfaceC2757x == C2752s.f643a || interfaceC2757x == C2753t.f644a) ? this : AbstractC2747n.m734b(this, interfaceC2757x);
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        return interfaceC2743j.mo743b(EnumC2734a.OFFSET_SECONDS, this.f613a);
    }

    @Override // p033j$.time.AbstractC2728n
    public int hashCode() {
        return this.f613a;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o == EnumC2734a.OFFSET_SECONDS : interfaceC2748o != null && interfaceC2748o.mo727e(this);
    }

    @Override // p033j$.time.AbstractC2728n
    /* renamed from: j */
    public String mo780j() {
        return this.f614b;
    }

    @Override // p033j$.time.AbstractC2728n
    /* renamed from: k */
    public C2762c mo779k() {
        return C2762c.m704i(this);
    }

    /* renamed from: p */
    public int m785p() {
        return this.f613a;
    }

    @Override // p033j$.time.AbstractC2728n
    public String toString() {
        return this.f614b;
    }
}
