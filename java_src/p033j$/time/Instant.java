package p033j$.time;

import com.google.android.exoplayer2.C0479C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2669d;
import p033j$.time.format.C2691a;
import p033j$.time.temporal.AbstractC2743n;
import p033j$.time.temporal.AbstractC2752w;
import p033j$.time.temporal.C2729A;
import p033j$.time.temporal.C2745p;
import p033j$.time.temporal.C2746q;
import p033j$.time.temporal.C2747r;
import p033j$.time.temporal.C2748s;
import p033j$.time.temporal.C2749t;
import p033j$.time.temporal.C2750u;
import p033j$.time.temporal.C2751v;
import p033j$.time.temporal.C2755z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2730a;
import p033j$.time.temporal.InterfaceC2739j;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2741l;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
import p033j$.time.temporal.InterfaceC2754y;
/* renamed from: j$.time.Instant */
/* loaded from: classes2.dex */
public final class Instant implements InterfaceC2739j, InterfaceC2741l, Comparable<Instant>, Serializable {

    /* renamed from: a */
    private final long f485a;

    /* renamed from: b */
    private final int f486b;

    /* renamed from: c */
    public static final Instant f484c = new Instant(0, 0);
    public static final Instant MIN = ofEpochSecond(-31557014167219200L, 0);
    public static final Instant MAX = ofEpochSecond(31556889864403199L, 999999999);

    /* renamed from: j$.time.Instant$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C2672a {

        /* renamed from: a */
        static final /* synthetic */ int[] f487a;

        /* renamed from: b */
        static final /* synthetic */ int[] f488b;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            f488b = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f488b[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f488b[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f488b[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f488b[ChronoUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f488b[ChronoUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f488b[ChronoUnit.HALF_DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f488b[ChronoUnit.DAYS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr2 = new int[EnumC2730a.values().length];
            f487a = iArr2;
            try {
                iArr2[EnumC2730a.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f487a[EnumC2730a.MICRO_OF_SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f487a[EnumC2730a.MILLI_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f487a[EnumC2730a.INSTANT_SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private Instant(long j, int i) {
        this.f485a = j;
        this.f486b = i;
    }

    /* renamed from: j */
    private static Instant m978j(long j, int i) {
        if ((i | j) == 0) {
            return f484c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new DateTimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    /* renamed from: k */
    public static Instant m977k(InterfaceC2740k interfaceC2740k) {
        if (interfaceC2740k instanceof Instant) {
            return (Instant) interfaceC2740k;
        }
        try {
            return ofEpochSecond(interfaceC2740k.mo738e(EnumC2730a.INSTANT_SECONDS), interfaceC2740k.mo740c(EnumC2730a.NANO_OF_SECOND));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain Instant from TemporalAccessor: " + interfaceC2740k + " of type " + interfaceC2740k.getClass().getName(), e);
        }
    }

    /* renamed from: l */
    public static Instant m976l(long j) {
        return m978j(AbstractC2669d.m987e(j, 1000L), ((int) AbstractC2669d.m988d(j, 1000L)) * 1000000);
    }

    /* renamed from: m */
    public static Instant m975m(long j) {
        return m978j(j, 0);
    }

    /* renamed from: n */
    private Instant m974n(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(AbstractC2669d.m989c(AbstractC2669d.m989c(this.f485a, j), j2 / C0479C.NANOS_PER_SECOND), this.f486b + (j2 % C0479C.NANOS_PER_SECOND));
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return m978j(AbstractC2669d.m989c(j, AbstractC2669d.m987e(j2, C0479C.NANOS_PER_SECOND)), (int) AbstractC2669d.m988d(j2, C0479C.NANOS_PER_SECOND));
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: a */
    public InterfaceC2739j mo743a(InterfaceC2741l interfaceC2741l) {
        return (Instant) ((C2686d) interfaceC2741l).mo735h(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0045, code lost:
        if (r3 != r2.f486b) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004d, code lost:
        if (r3 != r2.f486b) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        r4 = r2.f485a;
     */
    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p033j$.time.temporal.InterfaceC2739j mo742b(p033j$.time.temporal.InterfaceC2744o r3, long r4) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof p033j$.time.temporal.EnumC2730a
            if (r0 == 0) goto L67
            r0 = r3
            j$.time.temporal.a r0 = (p033j$.time.temporal.EnumC2730a) r0
            r0.m752j(r4)
            int[] r1 = p033j$.time.Instant.C2672a.f487a
            int r0 = r0.ordinal()
            r0 = r1[r0]
            r1 = 1
            if (r0 == r1) goto L56
            r1 = 2
            if (r0 == r1) goto L48
            r1 = 3
            if (r0 == r1) goto L3e
            r1 = 4
            if (r0 != r1) goto L27
            long r0 = r2.f485a
            int r3 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r3 == 0) goto L65
            int r3 = r2.f486b
            goto L51
        L27:
            j$.time.temporal.z r4 = new j$.time.temporal.z
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r0 = "Unsupported field: "
            r5.append(r0)
            r5.append(r3)
            java.lang.String r3 = r5.toString()
            r4.<init>(r3)
            throw r4
        L3e:
            int r3 = (int) r4
            r4 = 1000000(0xf4240, float:1.401298E-39)
            int r3 = r3 * r4
            int r4 = r2.f486b
            if (r3 == r4) goto L65
            goto L4f
        L48:
            int r3 = (int) r4
            int r3 = r3 * 1000
            int r4 = r2.f486b
            if (r3 == r4) goto L65
        L4f:
            long r4 = r2.f485a
        L51:
            j$.time.Instant r3 = m978j(r4, r3)
            goto L6d
        L56:
            int r3 = r2.f486b
            long r0 = (long) r3
            int r3 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r3 == 0) goto L65
            long r0 = r2.f485a
            int r3 = (int) r4
            j$.time.Instant r3 = m978j(r0, r3)
            goto L6d
        L65:
            r3 = r2
            goto L6d
        L67:
            j$.time.temporal.j r3 = r3.mo725f(r2, r4)
            j$.time.Instant r3 = (p033j$.time.Instant) r3
        L6d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.Instant.mo742b(j$.time.temporal.o, long):j$.time.temporal.j");
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            int i = C2672a.f487a[((EnumC2730a) interfaceC2744o).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            EnumC2730a.INSTANT_SECONDS.m753i(this.f485a);
                        }
                        throw new C2755z("Unsupported field: " + interfaceC2744o);
                    }
                    return this.f486b / 1000000;
                }
                return this.f486b / 1000;
            }
            return this.f486b;
        }
        return AbstractC2743n.m732c(this, interfaceC2744o).m764a(interfaceC2744o.mo727d(this), interfaceC2744o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant instant) {
        int compare = Long.compare(this.f485a, instant.f485a);
        return compare != 0 ? compare : this.f486b - instant.f486b;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return AbstractC2743n.m732c(this, interfaceC2744o);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        int i;
        if (interfaceC2744o instanceof EnumC2730a) {
            int i2 = C2672a.f487a[((EnumC2730a) interfaceC2744o).ordinal()];
            if (i2 == 1) {
                i = this.f486b;
            } else if (i2 == 2) {
                i = this.f486b / 1000;
            } else if (i2 != 3) {
                if (i2 == 4) {
                    return this.f485a;
                }
                throw new C2755z("Unsupported field: " + interfaceC2744o);
            } else {
                i = this.f486b / 1000000;
            }
            return i;
        }
        return interfaceC2744o.mo727d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            return this.f485a == instant.f485a && this.f486b == instant.f486b;
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: f */
    public InterfaceC2739j mo741f(long j, InterfaceC2754y interfaceC2754y) {
        long j2;
        if (interfaceC2754y instanceof ChronoUnit) {
            switch (C2672a.f488b[((ChronoUnit) interfaceC2754y).ordinal()]) {
                case 1:
                    return plusNanos(j);
                case 2:
                    return m974n(j / 1000000, (j % 1000000) * 1000);
                case 3:
                    return m974n(j / 1000, (j % 1000) * 1000000);
                case 4:
                    return plusSeconds(j);
                case 5:
                    j2 = 60;
                    j = AbstractC2669d.m986f(j, j2);
                    return plusSeconds(j);
                case 6:
                    j2 = 3600;
                    j = AbstractC2669d.m986f(j, j2);
                    return plusSeconds(j);
                case 7:
                    j2 = 43200;
                    j = AbstractC2669d.m986f(j, j2);
                    return plusSeconds(j);
                case 8:
                    j2 = 86400;
                    j = AbstractC2669d.m986f(j, j2);
                    return plusSeconds(j);
                default:
                    throw new C2755z("Unsupported unit: " + interfaceC2754y);
            }
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2754y;
        Objects.requireNonNull(chronoUnit);
        return (Instant) mo741f(j, chronoUnit);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2747r.f642a) {
            return ChronoUnit.NANOS;
        }
        if (interfaceC2753x == C2746q.f641a || interfaceC2753x == C2745p.f640a || interfaceC2753x == C2749t.f644a || interfaceC2753x == C2748s.f643a || interfaceC2753x == C2750u.f645a || interfaceC2753x == C2751v.f646a) {
            return null;
        }
        return interfaceC2753x.mo722a(this);
    }

    public long getEpochSecond() {
        return this.f485a;
    }

    public int getNano() {
        return this.f486b;
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        return interfaceC2739j.mo742b(EnumC2730a.INSTANT_SECONDS, this.f485a).mo742b(EnumC2730a.NANO_OF_SECOND, this.f486b);
    }

    public int hashCode() {
        long j = this.f485a;
        return (this.f486b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? interfaceC2744o == EnumC2730a.INSTANT_SECONDS || interfaceC2744o == EnumC2730a.NANO_OF_SECOND || interfaceC2744o == EnumC2730a.MICRO_OF_SECOND || interfaceC2744o == EnumC2730a.MILLI_OF_SECOND : interfaceC2744o != null && interfaceC2744o.mo726e(this);
    }

    /* renamed from: o */
    public long m973o() {
        long m986f;
        int i;
        long j = this.f485a;
        if (j >= 0 || this.f486b <= 0) {
            m986f = AbstractC2669d.m986f(j, 1000L);
            i = this.f486b / 1000000;
        } else {
            m986f = AbstractC2669d.m986f(j + 1, 1000L);
            i = (this.f486b / 1000000) - 1000;
        }
        return AbstractC2669d.m989c(m986f, i);
    }

    public Instant plusNanos(long j) {
        return m974n(0L, j);
    }

    public Instant plusSeconds(long j) {
        return m974n(j, 0L);
    }

    public String toString() {
        return C2691a.f516j.m904a(this);
    }
}
