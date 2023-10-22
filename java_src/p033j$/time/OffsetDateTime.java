package p033j$.time;

import java.io.Serializable;
import java.util.Objects;
import p033j$.time.chrono.C2685h;
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
import p033j$.time.zone.C2758c;
/* renamed from: j$.time.OffsetDateTime */
/* loaded from: classes2.dex */
public final class OffsetDateTime implements InterfaceC2739j, InterfaceC2741l, Comparable<OffsetDateTime>, Serializable {

    /* renamed from: a */
    private final C2688f f489a;

    /* renamed from: b */
    private final C2725o f490b;

    /* renamed from: j$.time.OffsetDateTime$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C2673a {

        /* renamed from: a */
        static final /* synthetic */ int[] f491a;

        static {
            int[] iArr = new int[EnumC2730a.values().length];
            f491a = iArr;
            try {
                iArr[EnumC2730a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f491a[EnumC2730a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        new OffsetDateTime(C2688f.f508c, C2725o.f612g);
        new OffsetDateTime(C2688f.f509d, C2725o.f611f);
    }

    private OffsetDateTime(C2688f c2688f, C2725o c2725o) {
        Objects.requireNonNull(c2688f, "dateTime");
        this.f489a = c2688f;
        Objects.requireNonNull(c2725o, "offset");
        this.f490b = c2725o;
    }

    /* renamed from: j */
    public static OffsetDateTime m972j(InterfaceC2740k interfaceC2740k) {
        if (interfaceC2740k instanceof OffsetDateTime) {
            return (OffsetDateTime) interfaceC2740k;
        }
        try {
            C2725o m785o = C2725o.m785o(interfaceC2740k);
            int i = AbstractC2752w.f647a;
            C2686d c2686d = (C2686d) interfaceC2740k.mo737g(C2750u.f645a);
            C2718h c2718h = (C2718h) interfaceC2740k.mo737g(C2751v.f646a);
            if (c2686d != null && c2718h != null) {
                return new OffsetDateTime(C2688f.m912t(c2686d, c2718h), m785o);
            }
            return m971k(Instant.m977k(interfaceC2740k), m785o);
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain OffsetDateTime from TemporalAccessor: " + interfaceC2740k + " of type " + interfaceC2740k.getClass().getName(), e);
        }
    }

    /* renamed from: k */
    public static OffsetDateTime m971k(Instant instant, AbstractC2724n abstractC2724n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2724n, "zone");
        C2725o m708d = C2758c.m703i((C2725o) abstractC2724n).m708d(instant);
        return new OffsetDateTime(C2688f.m911u(instant.getEpochSecond(), instant.getNano(), m708d), m708d);
    }

    /* renamed from: n */
    private OffsetDateTime m968n(C2688f c2688f, C2725o c2725o) {
        return (this.f489a == c2688f && this.f490b.equals(c2725o)) ? this : new OffsetDateTime(c2688f, c2725o);
    }

    public static OffsetDateTime parse(CharSequence charSequence) {
        C2691a c2691a = C2691a.f515i;
        Objects.requireNonNull(c2691a, "formatter");
        return (OffsetDateTime) c2691a.m899f(charSequence, new InterfaceC2753x() { // from class: j$.time.k
            @Override // p033j$.time.temporal.InterfaceC2753x
            /* renamed from: a */
            public final Object mo722a(InterfaceC2740k interfaceC2740k) {
                return OffsetDateTime.m972j(interfaceC2740k);
            }
        });
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: a */
    public InterfaceC2739j mo743a(InterfaceC2741l interfaceC2741l) {
        return m968n(this.f489a.mo743a(interfaceC2741l), this.f490b);
    }

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: b */
    public InterfaceC2739j mo742b(InterfaceC2744o interfaceC2744o, long j) {
        C2688f c2688f;
        C2725o m781s;
        if (interfaceC2744o instanceof EnumC2730a) {
            EnumC2730a enumC2730a = (EnumC2730a) interfaceC2744o;
            int i = C2673a.f491a[enumC2730a.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    c2688f = this.f489a.mo742b(interfaceC2744o, j);
                    m781s = this.f490b;
                } else {
                    c2688f = this.f489a;
                    m781s = C2725o.m781s(enumC2730a.m753i(j));
                }
                return m968n(c2688f, m781s);
            }
            return m971k(Instant.ofEpochSecond(j, this.f489a.m919m()), this.f490b);
        }
        return (OffsetDateTime) interfaceC2744o.mo725f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: c */
    public int mo740c(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            int i = C2673a.f491a[((EnumC2730a) interfaceC2744o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f489a.mo740c(interfaceC2744o) : this.f490b.m784p();
            }
            throw new C2755z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2743n.m734a(this, interfaceC2744o);
    }

    @Override // java.lang.Comparable
    public int compareTo(OffsetDateTime offsetDateTime) {
        int compare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.f490b.equals(offsetDateTime2.f490b)) {
            compare = this.f489a.compareTo(offsetDateTime2.f489a);
        } else {
            compare = Long.compare(m970l(), offsetDateTime2.m970l());
            if (compare == 0) {
                compare = m969m().m812m() - offsetDateTime2.m969m().m812m();
            }
        }
        return compare == 0 ? this.f489a.compareTo(offsetDateTime2.f489a) : compare;
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: d */
    public C2729A mo739d(InterfaceC2744o interfaceC2744o) {
        return interfaceC2744o instanceof EnumC2730a ? (interfaceC2744o == EnumC2730a.INSTANT_SECONDS || interfaceC2744o == EnumC2730a.OFFSET_SECONDS) ? interfaceC2744o.mo730a() : this.f489a.mo739d(interfaceC2744o) : interfaceC2744o.mo724g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: e */
    public long mo738e(InterfaceC2744o interfaceC2744o) {
        if (interfaceC2744o instanceof EnumC2730a) {
            int i = C2673a.f491a[((EnumC2730a) interfaceC2744o).ordinal()];
            return i != 1 ? i != 2 ? this.f489a.mo738e(interfaceC2744o) : this.f490b.m784p() : m970l();
        }
        return interfaceC2744o.mo727d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2739j
    /* renamed from: f */
    public InterfaceC2739j mo741f(long j, InterfaceC2754y interfaceC2754y) {
        if (interfaceC2754y instanceof ChronoUnit) {
            return m968n(this.f489a.mo741f(j, interfaceC2754y), this.f490b);
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2754y;
        Objects.requireNonNull(chronoUnit);
        return (OffsetDateTime) mo741f(j, chronoUnit);
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: g */
    public Object mo737g(InterfaceC2753x interfaceC2753x) {
        int i = AbstractC2752w.f647a;
        if (interfaceC2753x == C2748s.f643a || interfaceC2753x == C2749t.f644a) {
            return this.f490b;
        }
        if (interfaceC2753x == C2745p.f640a) {
            return null;
        }
        if (interfaceC2753x == C2750u.f645a) {
            return this.f489a.m928B();
        }
        return interfaceC2753x == C2751v.f646a ? m969m() : interfaceC2753x == C2746q.f641a ? C2685h.f501a : interfaceC2753x == C2747r.f642a ? ChronoUnit.NANOS : interfaceC2753x.mo722a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741l
    /* renamed from: h */
    public InterfaceC2739j mo735h(InterfaceC2739j interfaceC2739j) {
        return interfaceC2739j.mo742b(EnumC2730a.EPOCH_DAY, this.f489a.m928B().m951A()).mo742b(EnumC2730a.NANO_OF_DAY, m969m().m803v()).mo742b(EnumC2730a.OFFSET_SECONDS, this.f490b.m784p());
    }

    public int hashCode() {
        return this.f489a.hashCode() ^ this.f490b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2740k
    /* renamed from: i */
    public boolean mo736i(InterfaceC2744o interfaceC2744o) {
        return (interfaceC2744o instanceof EnumC2730a) || (interfaceC2744o != null && interfaceC2744o.mo726e(this));
    }

    /* renamed from: l */
    public long m970l() {
        return this.f489a.m929A(this.f490b);
    }

    /* renamed from: m */
    public C2718h m969m() {
        return this.f489a.m926D();
    }

    public Instant toInstant() {
        C2688f c2688f = this.f489a;
        return Instant.ofEpochSecond(c2688f.m929A(this.f490b), c2688f.m926D().m812m());
    }

    public String toString() {
        return this.f489a.toString() + this.f490b.toString();
    }
}
