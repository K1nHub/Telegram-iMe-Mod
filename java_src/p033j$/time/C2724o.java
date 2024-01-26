package p033j$.time;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Objects;
import java.util.concurrent.ConcurrentMap;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2747s;
import p033j$.time.temporal.C2748t;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2738j;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
import p033j$.time.zone.C2757c;
import p033j$.util.concurrent.ConcurrentHashMap;
/* renamed from: j$.time.o */
/* loaded from: classes2.dex */
public final class C2724o extends AbstractC2723n implements InterfaceC2739k, InterfaceC2740l, Comparable {

    /* renamed from: c */
    private static final ConcurrentMap f608c = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: d */
    private static final ConcurrentMap f609d = new ConcurrentHashMap(16, 0.75f, 4);

    /* renamed from: e */
    public static final C2724o f610e = m785s(0);

    /* renamed from: f */
    public static final C2724o f611f = m785s(-64800);

    /* renamed from: g */
    public static final C2724o f612g = m785s(64800);

    /* renamed from: a */
    private final int f613a;

    /* renamed from: b */
    private final transient String f614b;

    private C2724o(int i) {
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
    public static C2724o m789o(InterfaceC2739k interfaceC2739k) {
        Objects.requireNonNull(interfaceC2739k, "temporal");
        int i = AbstractC2751w.f647a;
        C2724o c2724o = (C2724o) interfaceC2739k.mo741g(C2747s.f643a);
        if (c2724o != null) {
            return c2724o;
        }
        throw new DateTimeException("Unable to obtain ZoneOffset from TemporalAccessor: " + interfaceC2739k + " of type " + interfaceC2739k.getClass().getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x009a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00be  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p033j$.time.C2724o m787q(java.lang.String r7) {
        /*
            java.lang.String r0 = "offsetId"
            java.util.Objects.requireNonNull(r7, r0)
            java.util.concurrent.ConcurrentMap r0 = p033j$.time.C2724o.f609d
            java.lang.Object r0 = r0.get(r7)
            j$.time.o r0 = (p033j$.time.C2724o) r0
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
            int r0 = m784t(r7, r2, r3)
            int r1 = m784t(r7, r6, r2)
            int r2 = m784t(r7, r5, r2)
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
            int r0 = m784t(r7, r2, r3)
            int r1 = m784t(r7, r1, r3)
            int r2 = m784t(r7, r4, r3)
            goto L90
        L5b:
            int r0 = m784t(r7, r2, r3)
            int r1 = m784t(r7, r6, r2)
            goto L6c
        L64:
            int r0 = m784t(r7, r2, r3)
            int r1 = m784t(r7, r1, r3)
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
            int r0 = m784t(r7, r2, r3)
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
            j$.time.o r7 = m786r(r7, r0, r1)
            return r7
        Lbe:
            j$.time.o r7 = m786r(r0, r1, r2)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.C2724o.m787q(java.lang.String):j$.time.o");
    }

    /* renamed from: r */
    public static C2724o m786r(int i, int i2, int i3) {
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
            return m785s((i2 * 60) + (i * 3600) + i3);
        } else {
            throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
        }
    }

    /* renamed from: s */
    public static C2724o m785s(int i) {
        if (i < -64800 || i > 64800) {
            throw new DateTimeException("Zone offset not in valid range: -18:00 to +18:00");
        }
        if (i % 900 == 0) {
            Integer valueOf = Integer.valueOf(i);
            ConcurrentMap concurrentMap = f608c;
            C2724o c2724o = (C2724o) concurrentMap.get(valueOf);
            if (c2724o == null) {
                concurrentMap.putIfAbsent(valueOf, new C2724o(i));
                C2724o c2724o2 = (C2724o) concurrentMap.get(valueOf);
                f609d.putIfAbsent(c2724o2.f614b, c2724o2);
                return c2724o2;
            }
            return c2724o;
        }
        return new C2724o(i);
    }

    /* renamed from: t */
    private static int m784t(CharSequence charSequence, int i, boolean z) {
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

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o == EnumC2729a.OFFSET_SECONDS) {
            return this.f613a;
        }
        if (interfaceC2743o instanceof EnumC2729a) {
            throw new C2754z("Unsupported field: " + interfaceC2743o);
        }
        return AbstractC2742n.m736c(this, interfaceC2743o).m768a(mo742e(interfaceC2743o), interfaceC2743o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return ((C2724o) obj).f613a - this.f613a;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return AbstractC2742n.m736c(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o == EnumC2729a.OFFSET_SECONDS) {
            return this.f613a;
        }
        if (interfaceC2743o instanceof EnumC2729a) {
            throw new C2754z("Unsupported field: " + interfaceC2743o);
        }
        return interfaceC2743o.mo731d(this);
    }

    @Override // p033j$.time.AbstractC2723n
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2724o) && this.f613a == ((C2724o) obj).f613a;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        return (interfaceC2752x == C2747s.f643a || interfaceC2752x == C2748t.f644a) ? this : AbstractC2742n.m737b(this, interfaceC2752x);
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        return interfaceC2738j.mo746b(EnumC2729a.OFFSET_SECONDS, this.f613a);
    }

    @Override // p033j$.time.AbstractC2723n
    public int hashCode() {
        return this.f613a;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o == EnumC2729a.OFFSET_SECONDS : interfaceC2743o != null && interfaceC2743o.mo730e(this);
    }

    @Override // p033j$.time.AbstractC2723n
    /* renamed from: j */
    public String mo783j() {
        return this.f614b;
    }

    @Override // p033j$.time.AbstractC2723n
    /* renamed from: k */
    public C2757c mo782k() {
        return C2757c.m707i(this);
    }

    /* renamed from: p */
    public int m788p() {
        return this.f613a;
    }

    @Override // p033j$.time.AbstractC2723n
    public String toString() {
        return this.f614b;
    }
}
