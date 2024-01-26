package p033j$.time;

import com.google.android.exoplayer2.C0483C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2668d;
import p033j$.time.format.C2690a;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2744p;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.C2746r;
import p033j$.time.temporal.C2747s;
import p033j$.time.temporal.C2748t;
import p033j$.time.temporal.C2749u;
import p033j$.time.temporal.C2750v;
import p033j$.time.temporal.C2754z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2729a;
import p033j$.time.temporal.InterfaceC2738j;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2740l;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
import p033j$.time.temporal.InterfaceC2753y;
/* renamed from: j$.time.Instant */
/* loaded from: classes2.dex */
public final class Instant implements InterfaceC2738j, InterfaceC2740l, Comparable<Instant>, Serializable {

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
    static /* synthetic */ class C2671a {

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
            int[] iArr2 = new int[EnumC2729a.values().length];
            f487a = iArr2;
            try {
                iArr2[EnumC2729a.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f487a[EnumC2729a.MICRO_OF_SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f487a[EnumC2729a.MILLI_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f487a[EnumC2729a.INSTANT_SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private Instant(long j, int i) {
        this.f485a = j;
        this.f486b = i;
    }

    /* renamed from: j */
    private static Instant m982j(long j, int i) {
        if ((i | j) == 0) {
            return f484c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new DateTimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    /* renamed from: k */
    public static Instant m981k(InterfaceC2739k interfaceC2739k) {
        if (interfaceC2739k instanceof Instant) {
            return (Instant) interfaceC2739k;
        }
        try {
            return ofEpochSecond(interfaceC2739k.mo742e(EnumC2729a.INSTANT_SECONDS), interfaceC2739k.mo744c(EnumC2729a.NANO_OF_SECOND));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain Instant from TemporalAccessor: " + interfaceC2739k + " of type " + interfaceC2739k.getClass().getName(), e);
        }
    }

    /* renamed from: l */
    public static Instant m980l(long j) {
        return m982j(AbstractC2668d.m991e(j, 1000L), ((int) AbstractC2668d.m992d(j, 1000L)) * 1000000);
    }

    /* renamed from: m */
    public static Instant m979m(long j) {
        return m982j(j, 0);
    }

    /* renamed from: n */
    private Instant m978n(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(AbstractC2668d.m993c(AbstractC2668d.m993c(this.f485a, j), j2 / C0483C.NANOS_PER_SECOND), this.f486b + (j2 % C0483C.NANOS_PER_SECOND));
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return m982j(AbstractC2668d.m993c(j, AbstractC2668d.m991e(j2, C0483C.NANOS_PER_SECOND)), (int) AbstractC2668d.m992d(j2, C0483C.NANOS_PER_SECOND));
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: a */
    public InterfaceC2738j mo747a(InterfaceC2740l interfaceC2740l) {
        return (Instant) ((C2685d) interfaceC2740l).mo739h(this);
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
    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p033j$.time.temporal.InterfaceC2738j mo746b(p033j$.time.temporal.InterfaceC2743o r3, long r4) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof p033j$.time.temporal.EnumC2729a
            if (r0 == 0) goto L67
            r0 = r3
            j$.time.temporal.a r0 = (p033j$.time.temporal.EnumC2729a) r0
            r0.m756j(r4)
            int[] r1 = p033j$.time.Instant.C2671a.f487a
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
            j$.time.Instant r3 = m982j(r4, r3)
            goto L6d
        L56:
            int r3 = r2.f486b
            long r0 = (long) r3
            int r3 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r3 == 0) goto L65
            long r0 = r2.f485a
            int r3 = (int) r4
            j$.time.Instant r3 = m982j(r0, r3)
            goto L6d
        L65:
            r3 = r2
            goto L6d
        L67:
            j$.time.temporal.j r3 = r3.mo729f(r2, r4)
            j$.time.Instant r3 = (p033j$.time.Instant) r3
        L6d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.Instant.mo746b(j$.time.temporal.o, long):j$.time.temporal.j");
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            int i = C2671a.f487a[((EnumC2729a) interfaceC2743o).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            EnumC2729a.INSTANT_SECONDS.m757i(this.f485a);
                        }
                        throw new C2754z("Unsupported field: " + interfaceC2743o);
                    }
                    return this.f486b / 1000000;
                }
                return this.f486b / 1000;
            }
            return this.f486b;
        }
        return AbstractC2742n.m736c(this, interfaceC2743o).m768a(interfaceC2743o.mo731d(this), interfaceC2743o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant instant) {
        int compare = Long.compare(this.f485a, instant.f485a);
        return compare != 0 ? compare : this.f486b - instant.f486b;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return AbstractC2742n.m736c(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        int i;
        if (interfaceC2743o instanceof EnumC2729a) {
            int i2 = C2671a.f487a[((EnumC2729a) interfaceC2743o).ordinal()];
            if (i2 == 1) {
                i = this.f486b;
            } else if (i2 == 2) {
                i = this.f486b / 1000;
            } else if (i2 != 3) {
                if (i2 == 4) {
                    return this.f485a;
                }
                throw new C2754z("Unsupported field: " + interfaceC2743o);
            } else {
                i = this.f486b / 1000000;
            }
            return i;
        }
        return interfaceC2743o.mo731d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: f */
    public InterfaceC2738j mo745f(long j, InterfaceC2753y interfaceC2753y) {
        long j2;
        if (interfaceC2753y instanceof ChronoUnit) {
            switch (C2671a.f488b[((ChronoUnit) interfaceC2753y).ordinal()]) {
                case 1:
                    return plusNanos(j);
                case 2:
                    return m978n(j / 1000000, (j % 1000000) * 1000);
                case 3:
                    return m978n(j / 1000, (j % 1000) * 1000000);
                case 4:
                    return plusSeconds(j);
                case 5:
                    j2 = 60;
                    j = AbstractC2668d.m990f(j, j2);
                    return plusSeconds(j);
                case 6:
                    j2 = 3600;
                    j = AbstractC2668d.m990f(j, j2);
                    return plusSeconds(j);
                case 7:
                    j2 = 43200;
                    j = AbstractC2668d.m990f(j, j2);
                    return plusSeconds(j);
                case 8:
                    j2 = 86400;
                    j = AbstractC2668d.m990f(j, j2);
                    return plusSeconds(j);
                default:
                    throw new C2754z("Unsupported unit: " + interfaceC2753y);
            }
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2753y;
        Objects.requireNonNull(chronoUnit);
        return (Instant) mo745f(j, chronoUnit);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2746r.f642a) {
            return ChronoUnit.NANOS;
        }
        if (interfaceC2752x == C2745q.f641a || interfaceC2752x == C2744p.f640a || interfaceC2752x == C2748t.f644a || interfaceC2752x == C2747s.f643a || interfaceC2752x == C2749u.f645a || interfaceC2752x == C2750v.f646a) {
            return null;
        }
        return interfaceC2752x.mo726a(this);
    }

    public long getEpochSecond() {
        return this.f485a;
    }

    public int getNano() {
        return this.f486b;
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        return interfaceC2738j.mo746b(EnumC2729a.INSTANT_SECONDS, this.f485a).mo746b(EnumC2729a.NANO_OF_SECOND, this.f486b);
    }

    public int hashCode() {
        long j = this.f485a;
        return (this.f486b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? interfaceC2743o == EnumC2729a.INSTANT_SECONDS || interfaceC2743o == EnumC2729a.NANO_OF_SECOND || interfaceC2743o == EnumC2729a.MICRO_OF_SECOND || interfaceC2743o == EnumC2729a.MILLI_OF_SECOND : interfaceC2743o != null && interfaceC2743o.mo730e(this);
    }

    /* renamed from: o */
    public long m977o() {
        long m990f;
        int i;
        long j = this.f485a;
        if (j >= 0 || this.f486b <= 0) {
            m990f = AbstractC2668d.m990f(j, 1000L);
            i = this.f486b / 1000000;
        } else {
            m990f = AbstractC2668d.m990f(j + 1, 1000L);
            i = (this.f486b / 1000000) - 1000;
        }
        return AbstractC2668d.m993c(m990f, i);
    }

    public Instant plusNanos(long j) {
        return m978n(0L, j);
    }

    public Instant plusSeconds(long j) {
        return m978n(j, 0L);
    }

    public String toString() {
        return C2690a.f516j.m908a(this);
    }
}
