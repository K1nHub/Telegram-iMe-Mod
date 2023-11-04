package p033j$.time;

import com.google.android.exoplayer2.C0485C;
import java.io.Serializable;
import java.util.Objects;
import p033j$.lang.AbstractC2673d;
import p033j$.time.format.C2695a;
import p033j$.time.temporal.AbstractC2747n;
import p033j$.time.temporal.AbstractC2756w;
import p033j$.time.temporal.C2733A;
import p033j$.time.temporal.C2749p;
import p033j$.time.temporal.C2750q;
import p033j$.time.temporal.C2751r;
import p033j$.time.temporal.C2752s;
import p033j$.time.temporal.C2753t;
import p033j$.time.temporal.C2754u;
import p033j$.time.temporal.C2755v;
import p033j$.time.temporal.C2759z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2734a;
import p033j$.time.temporal.InterfaceC2743j;
import p033j$.time.temporal.InterfaceC2744k;
import p033j$.time.temporal.InterfaceC2745l;
import p033j$.time.temporal.InterfaceC2748o;
import p033j$.time.temporal.InterfaceC2757x;
import p033j$.time.temporal.InterfaceC2758y;
/* renamed from: j$.time.Instant */
/* loaded from: classes2.dex */
public final class Instant implements InterfaceC2743j, InterfaceC2745l, Comparable<Instant>, Serializable {

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
    static /* synthetic */ class C2676a {

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
            int[] iArr2 = new int[EnumC2734a.values().length];
            f487a = iArr2;
            try {
                iArr2[EnumC2734a.NANO_OF_SECOND.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f487a[EnumC2734a.MICRO_OF_SECOND.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f487a[EnumC2734a.MILLI_OF_SECOND.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f487a[EnumC2734a.INSTANT_SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    private Instant(long j, int i) {
        this.f485a = j;
        this.f486b = i;
    }

    /* renamed from: j */
    private static Instant m979j(long j, int i) {
        if ((i | j) == 0) {
            return f484c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new DateTimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    /* renamed from: k */
    public static Instant m978k(InterfaceC2744k interfaceC2744k) {
        if (interfaceC2744k instanceof Instant) {
            return (Instant) interfaceC2744k;
        }
        try {
            return ofEpochSecond(interfaceC2744k.mo739e(EnumC2734a.INSTANT_SECONDS), interfaceC2744k.mo741c(EnumC2734a.NANO_OF_SECOND));
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain Instant from TemporalAccessor: " + interfaceC2744k + " of type " + interfaceC2744k.getClass().getName(), e);
        }
    }

    /* renamed from: l */
    public static Instant m977l(long j) {
        return m979j(AbstractC2673d.m988e(j, 1000L), ((int) AbstractC2673d.m989d(j, 1000L)) * 1000000);
    }

    /* renamed from: m */
    public static Instant m976m(long j) {
        return m979j(j, 0);
    }

    /* renamed from: n */
    private Instant m975n(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return ofEpochSecond(AbstractC2673d.m990c(AbstractC2673d.m990c(this.f485a, j), j2 / C0485C.NANOS_PER_SECOND), this.f486b + (j2 % C0485C.NANOS_PER_SECOND));
    }

    public static Instant ofEpochSecond(long j, long j2) {
        return m979j(AbstractC2673d.m990c(j, AbstractC2673d.m988e(j2, C0485C.NANOS_PER_SECOND)), (int) AbstractC2673d.m989d(j2, C0485C.NANOS_PER_SECOND));
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: a */
    public InterfaceC2743j mo744a(InterfaceC2745l interfaceC2745l) {
        return (Instant) ((C2690d) interfaceC2745l).mo736h(this);
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
    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p033j$.time.temporal.InterfaceC2743j mo743b(p033j$.time.temporal.InterfaceC2748o r3, long r4) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof p033j$.time.temporal.EnumC2734a
            if (r0 == 0) goto L67
            r0 = r3
            j$.time.temporal.a r0 = (p033j$.time.temporal.EnumC2734a) r0
            r0.m753j(r4)
            int[] r1 = p033j$.time.Instant.C2676a.f487a
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
            j$.time.Instant r3 = m979j(r4, r3)
            goto L6d
        L56:
            int r3 = r2.f486b
            long r0 = (long) r3
            int r3 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r3 == 0) goto L65
            long r0 = r2.f485a
            int r3 = (int) r4
            j$.time.Instant r3 = m979j(r0, r3)
            goto L6d
        L65:
            r3 = r2
            goto L6d
        L67:
            j$.time.temporal.j r3 = r3.mo726f(r2, r4)
            j$.time.Instant r3 = (p033j$.time.Instant) r3
        L6d:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.Instant.mo743b(j$.time.temporal.o, long):j$.time.temporal.j");
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            int i = C2676a.f487a[((EnumC2734a) interfaceC2748o).ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            EnumC2734a.INSTANT_SECONDS.m754i(this.f485a);
                        }
                        throw new C2759z("Unsupported field: " + interfaceC2748o);
                    }
                    return this.f486b / 1000000;
                }
                return this.f486b / 1000;
            }
            return this.f486b;
        }
        return AbstractC2747n.m733c(this, interfaceC2748o).m765a(interfaceC2748o.mo728d(this), interfaceC2748o);
    }

    @Override // java.lang.Comparable
    public int compareTo(Instant instant) {
        int compare = Long.compare(this.f485a, instant.f485a);
        return compare != 0 ? compare : this.f486b - instant.f486b;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return AbstractC2747n.m733c(this, interfaceC2748o);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        int i;
        if (interfaceC2748o instanceof EnumC2734a) {
            int i2 = C2676a.f487a[((EnumC2734a) interfaceC2748o).ordinal()];
            if (i2 == 1) {
                i = this.f486b;
            } else if (i2 == 2) {
                i = this.f486b / 1000;
            } else if (i2 != 3) {
                if (i2 == 4) {
                    return this.f485a;
                }
                throw new C2759z("Unsupported field: " + interfaceC2748o);
            } else {
                i = this.f486b / 1000000;
            }
            return i;
        }
        return interfaceC2748o.mo728d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: f */
    public InterfaceC2743j mo742f(long j, InterfaceC2758y interfaceC2758y) {
        long j2;
        if (interfaceC2758y instanceof ChronoUnit) {
            switch (C2676a.f488b[((ChronoUnit) interfaceC2758y).ordinal()]) {
                case 1:
                    return plusNanos(j);
                case 2:
                    return m975n(j / 1000000, (j % 1000000) * 1000);
                case 3:
                    return m975n(j / 1000, (j % 1000) * 1000000);
                case 4:
                    return plusSeconds(j);
                case 5:
                    j2 = 60;
                    j = AbstractC2673d.m987f(j, j2);
                    return plusSeconds(j);
                case 6:
                    j2 = 3600;
                    j = AbstractC2673d.m987f(j, j2);
                    return plusSeconds(j);
                case 7:
                    j2 = 43200;
                    j = AbstractC2673d.m987f(j, j2);
                    return plusSeconds(j);
                case 8:
                    j2 = 86400;
                    j = AbstractC2673d.m987f(j, j2);
                    return plusSeconds(j);
                default:
                    throw new C2759z("Unsupported unit: " + interfaceC2758y);
            }
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2758y;
        Objects.requireNonNull(chronoUnit);
        return (Instant) mo742f(j, chronoUnit);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2751r.f642a) {
            return ChronoUnit.NANOS;
        }
        if (interfaceC2757x == C2750q.f641a || interfaceC2757x == C2749p.f640a || interfaceC2757x == C2753t.f644a || interfaceC2757x == C2752s.f643a || interfaceC2757x == C2754u.f645a || interfaceC2757x == C2755v.f646a) {
            return null;
        }
        return interfaceC2757x.mo723a(this);
    }

    public long getEpochSecond() {
        return this.f485a;
    }

    public int getNano() {
        return this.f486b;
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        return interfaceC2743j.mo743b(EnumC2734a.INSTANT_SECONDS, this.f485a).mo743b(EnumC2734a.NANO_OF_SECOND, this.f486b);
    }

    public int hashCode() {
        long j = this.f485a;
        return (this.f486b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? interfaceC2748o == EnumC2734a.INSTANT_SECONDS || interfaceC2748o == EnumC2734a.NANO_OF_SECOND || interfaceC2748o == EnumC2734a.MICRO_OF_SECOND || interfaceC2748o == EnumC2734a.MILLI_OF_SECOND : interfaceC2748o != null && interfaceC2748o.mo727e(this);
    }

    /* renamed from: o */
    public long m974o() {
        long m987f;
        int i;
        long j = this.f485a;
        if (j >= 0 || this.f486b <= 0) {
            m987f = AbstractC2673d.m987f(j, 1000L);
            i = this.f486b / 1000000;
        } else {
            m987f = AbstractC2673d.m987f(j + 1, 1000L);
            i = (this.f486b / 1000000) - 1000;
        }
        return AbstractC2673d.m990c(m987f, i);
    }

    public Instant plusNanos(long j) {
        return m975n(0L, j);
    }

    public Instant plusSeconds(long j) {
        return m975n(j, 0L);
    }

    public String toString() {
        return C2695a.f516j.m905a(this);
    }
}
