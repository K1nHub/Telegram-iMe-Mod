package p033j$.time;

import java.io.Serializable;
import java.util.Objects;
import p033j$.time.chrono.C2684h;
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
import p033j$.time.zone.C2757c;
/* renamed from: j$.time.OffsetDateTime */
/* loaded from: classes2.dex */
public final class OffsetDateTime implements InterfaceC2738j, InterfaceC2740l, Comparable<OffsetDateTime>, Serializable {

    /* renamed from: a */
    private final C2687f f489a;

    /* renamed from: b */
    private final C2724o f490b;

    /* renamed from: j$.time.OffsetDateTime$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C2672a {

        /* renamed from: a */
        static final /* synthetic */ int[] f491a;

        static {
            int[] iArr = new int[EnumC2729a.values().length];
            f491a = iArr;
            try {
                iArr[EnumC2729a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f491a[EnumC2729a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        new OffsetDateTime(C2687f.f508c, C2724o.f612g);
        new OffsetDateTime(C2687f.f509d, C2724o.f611f);
    }

    private OffsetDateTime(C2687f c2687f, C2724o c2724o) {
        Objects.requireNonNull(c2687f, "dateTime");
        this.f489a = c2687f;
        Objects.requireNonNull(c2724o, "offset");
        this.f490b = c2724o;
    }

    /* renamed from: j */
    public static OffsetDateTime m976j(InterfaceC2739k interfaceC2739k) {
        if (interfaceC2739k instanceof OffsetDateTime) {
            return (OffsetDateTime) interfaceC2739k;
        }
        try {
            C2724o m789o = C2724o.m789o(interfaceC2739k);
            int i = AbstractC2751w.f647a;
            C2685d c2685d = (C2685d) interfaceC2739k.mo741g(C2749u.f645a);
            C2717h c2717h = (C2717h) interfaceC2739k.mo741g(C2750v.f646a);
            if (c2685d != null && c2717h != null) {
                return new OffsetDateTime(C2687f.m916t(c2685d, c2717h), m789o);
            }
            return m975k(Instant.m981k(interfaceC2739k), m789o);
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain OffsetDateTime from TemporalAccessor: " + interfaceC2739k + " of type " + interfaceC2739k.getClass().getName(), e);
        }
    }

    /* renamed from: k */
    public static OffsetDateTime m975k(Instant instant, AbstractC2723n abstractC2723n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2723n, "zone");
        C2724o m712d = C2757c.m707i((C2724o) abstractC2723n).m712d(instant);
        return new OffsetDateTime(C2687f.m915u(instant.getEpochSecond(), instant.getNano(), m712d), m712d);
    }

    /* renamed from: n */
    private OffsetDateTime m972n(C2687f c2687f, C2724o c2724o) {
        return (this.f489a == c2687f && this.f490b.equals(c2724o)) ? this : new OffsetDateTime(c2687f, c2724o);
    }

    public static OffsetDateTime parse(CharSequence charSequence) {
        C2690a c2690a = C2690a.f515i;
        Objects.requireNonNull(c2690a, "formatter");
        return (OffsetDateTime) c2690a.m903f(charSequence, new InterfaceC2752x() { // from class: j$.time.k
            @Override // p033j$.time.temporal.InterfaceC2752x
            /* renamed from: a */
            public final Object mo726a(InterfaceC2739k interfaceC2739k) {
                return OffsetDateTime.m976j(interfaceC2739k);
            }
        });
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: a */
    public InterfaceC2738j mo747a(InterfaceC2740l interfaceC2740l) {
        return m972n(this.f489a.mo747a(interfaceC2740l), this.f490b);
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: b */
    public InterfaceC2738j mo746b(InterfaceC2743o interfaceC2743o, long j) {
        C2687f c2687f;
        C2724o m785s;
        if (interfaceC2743o instanceof EnumC2729a) {
            EnumC2729a enumC2729a = (EnumC2729a) interfaceC2743o;
            int i = C2672a.f491a[enumC2729a.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    c2687f = this.f489a.mo746b(interfaceC2743o, j);
                    m785s = this.f490b;
                } else {
                    c2687f = this.f489a;
                    m785s = C2724o.m785s(enumC2729a.m757i(j));
                }
                return m972n(c2687f, m785s);
            }
            return m975k(Instant.ofEpochSecond(j, this.f489a.m923m()), this.f490b);
        }
        return (OffsetDateTime) interfaceC2743o.mo729f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public int mo744c(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            int i = C2672a.f491a[((EnumC2729a) interfaceC2743o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f489a.mo744c(interfaceC2743o) : this.f490b.m788p();
            }
            throw new C2754z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // java.lang.Comparable
    public int compareTo(OffsetDateTime offsetDateTime) {
        int compare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.f490b.equals(offsetDateTime2.f490b)) {
            compare = this.f489a.compareTo(offsetDateTime2.f489a);
        } else {
            compare = Long.compare(m974l(), offsetDateTime2.m974l());
            if (compare == 0) {
                compare = m973m().m816m() - offsetDateTime2.m973m().m816m();
            }
        }
        return compare == 0 ? this.f489a.compareTo(offsetDateTime2.f489a) : compare;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return interfaceC2743o instanceof EnumC2729a ? (interfaceC2743o == EnumC2729a.INSTANT_SECONDS || interfaceC2743o == EnumC2729a.OFFSET_SECONDS) ? interfaceC2743o.mo734a() : this.f489a.mo743d(interfaceC2743o) : interfaceC2743o.mo728g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        if (interfaceC2743o instanceof EnumC2729a) {
            int i = C2672a.f491a[((EnumC2729a) interfaceC2743o).ordinal()];
            return i != 1 ? i != 2 ? this.f489a.mo742e(interfaceC2743o) : this.f490b.m788p() : m974l();
        }
        return interfaceC2743o.mo731d(this);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            return this.f489a.equals(offsetDateTime.f489a) && this.f490b.equals(offsetDateTime.f490b);
        }
        return false;
    }

    @Override // p033j$.time.temporal.InterfaceC2738j
    /* renamed from: f */
    public InterfaceC2738j mo745f(long j, InterfaceC2753y interfaceC2753y) {
        if (interfaceC2753y instanceof ChronoUnit) {
            return m972n(this.f489a.mo745f(j, interfaceC2753y), this.f490b);
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2753y;
        Objects.requireNonNull(chronoUnit);
        return (OffsetDateTime) mo745f(j, chronoUnit);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        if (interfaceC2752x == C2747s.f643a || interfaceC2752x == C2748t.f644a) {
            return this.f490b;
        }
        if (interfaceC2752x == C2744p.f640a) {
            return null;
        }
        if (interfaceC2752x == C2749u.f645a) {
            return this.f489a.m932B();
        }
        return interfaceC2752x == C2750v.f646a ? m973m() : interfaceC2752x == C2745q.f641a ? C2684h.f501a : interfaceC2752x == C2746r.f642a ? ChronoUnit.NANOS : interfaceC2752x.mo726a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740l
    /* renamed from: h */
    public InterfaceC2738j mo739h(InterfaceC2738j interfaceC2738j) {
        return interfaceC2738j.mo746b(EnumC2729a.EPOCH_DAY, this.f489a.m932B().m955A()).mo746b(EnumC2729a.NANO_OF_DAY, m973m().m807v()).mo746b(EnumC2729a.OFFSET_SECONDS, this.f490b.m788p());
    }

    public int hashCode() {
        return this.f489a.hashCode() ^ this.f490b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return (interfaceC2743o instanceof EnumC2729a) || (interfaceC2743o != null && interfaceC2743o.mo730e(this));
    }

    /* renamed from: l */
    public long m974l() {
        return this.f489a.m933A(this.f490b);
    }

    /* renamed from: m */
    public C2717h m973m() {
        return this.f489a.m930D();
    }

    public Instant toInstant() {
        C2687f c2687f = this.f489a;
        return Instant.ofEpochSecond(c2687f.m933A(this.f490b), c2687f.m930D().m816m());
    }

    public String toString() {
        return this.f489a.toString() + this.f490b.toString();
    }
}
