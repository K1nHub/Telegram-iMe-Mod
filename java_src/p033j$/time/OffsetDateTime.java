package p033j$.time;

import java.io.Serializable;
import java.util.Objects;
import p033j$.time.chrono.C2689h;
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
import p033j$.time.zone.C2762c;
/* renamed from: j$.time.OffsetDateTime */
/* loaded from: classes2.dex */
public final class OffsetDateTime implements InterfaceC2743j, InterfaceC2745l, Comparable<OffsetDateTime>, Serializable {

    /* renamed from: a */
    private final C2692f f489a;

    /* renamed from: b */
    private final C2729o f490b;

    /* renamed from: j$.time.OffsetDateTime$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C2677a {

        /* renamed from: a */
        static final /* synthetic */ int[] f491a;

        static {
            int[] iArr = new int[EnumC2734a.values().length];
            f491a = iArr;
            try {
                iArr[EnumC2734a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f491a[EnumC2734a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        new OffsetDateTime(C2692f.f508c, C2729o.f612g);
        new OffsetDateTime(C2692f.f509d, C2729o.f611f);
    }

    private OffsetDateTime(C2692f c2692f, C2729o c2729o) {
        Objects.requireNonNull(c2692f, "dateTime");
        this.f489a = c2692f;
        Objects.requireNonNull(c2729o, "offset");
        this.f490b = c2729o;
    }

    /* renamed from: j */
    public static OffsetDateTime m973j(InterfaceC2744k interfaceC2744k) {
        if (interfaceC2744k instanceof OffsetDateTime) {
            return (OffsetDateTime) interfaceC2744k;
        }
        try {
            C2729o m786o = C2729o.m786o(interfaceC2744k);
            int i = AbstractC2756w.f647a;
            C2690d c2690d = (C2690d) interfaceC2744k.mo738g(C2754u.f645a);
            C2722h c2722h = (C2722h) interfaceC2744k.mo738g(C2755v.f646a);
            if (c2690d != null && c2722h != null) {
                return new OffsetDateTime(C2692f.m913t(c2690d, c2722h), m786o);
            }
            return m972k(Instant.m978k(interfaceC2744k), m786o);
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain OffsetDateTime from TemporalAccessor: " + interfaceC2744k + " of type " + interfaceC2744k.getClass().getName(), e);
        }
    }

    /* renamed from: k */
    public static OffsetDateTime m972k(Instant instant, AbstractC2728n abstractC2728n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2728n, "zone");
        C2729o m709d = C2762c.m704i((C2729o) abstractC2728n).m709d(instant);
        return new OffsetDateTime(C2692f.m912u(instant.getEpochSecond(), instant.getNano(), m709d), m709d);
    }

    /* renamed from: n */
    private OffsetDateTime m969n(C2692f c2692f, C2729o c2729o) {
        return (this.f489a == c2692f && this.f490b.equals(c2729o)) ? this : new OffsetDateTime(c2692f, c2729o);
    }

    public static OffsetDateTime parse(CharSequence charSequence) {
        C2695a c2695a = C2695a.f515i;
        Objects.requireNonNull(c2695a, "formatter");
        return (OffsetDateTime) c2695a.m900f(charSequence, new InterfaceC2757x() { // from class: j$.time.k
            @Override // p033j$.time.temporal.InterfaceC2757x
            /* renamed from: a */
            public final Object mo723a(InterfaceC2744k interfaceC2744k) {
                return OffsetDateTime.m973j(interfaceC2744k);
            }
        });
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: a */
    public InterfaceC2743j mo744a(InterfaceC2745l interfaceC2745l) {
        return m969n(this.f489a.mo744a(interfaceC2745l), this.f490b);
    }

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: b */
    public InterfaceC2743j mo743b(InterfaceC2748o interfaceC2748o, long j) {
        C2692f c2692f;
        C2729o m782s;
        if (interfaceC2748o instanceof EnumC2734a) {
            EnumC2734a enumC2734a = (EnumC2734a) interfaceC2748o;
            int i = C2677a.f491a[enumC2734a.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    c2692f = this.f489a.mo743b(interfaceC2748o, j);
                    m782s = this.f490b;
                } else {
                    c2692f = this.f489a;
                    m782s = C2729o.m782s(enumC2734a.m754i(j));
                }
                return m969n(c2692f, m782s);
            }
            return m972k(Instant.ofEpochSecond(j, this.f489a.m920m()), this.f490b);
        }
        return (OffsetDateTime) interfaceC2748o.mo726f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: c */
    public int mo741c(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            int i = C2677a.f491a[((EnumC2734a) interfaceC2748o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f489a.mo741c(interfaceC2748o) : this.f490b.m785p();
            }
            throw new C2759z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2747n.m735a(this, interfaceC2748o);
    }

    @Override // java.lang.Comparable
    public int compareTo(OffsetDateTime offsetDateTime) {
        int compare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.f490b.equals(offsetDateTime2.f490b)) {
            compare = this.f489a.compareTo(offsetDateTime2.f489a);
        } else {
            compare = Long.compare(m971l(), offsetDateTime2.m971l());
            if (compare == 0) {
                compare = m970m().m813m() - offsetDateTime2.m970m().m813m();
            }
        }
        return compare == 0 ? this.f489a.compareTo(offsetDateTime2.f489a) : compare;
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: d */
    public C2733A mo740d(InterfaceC2748o interfaceC2748o) {
        return interfaceC2748o instanceof EnumC2734a ? (interfaceC2748o == EnumC2734a.INSTANT_SECONDS || interfaceC2748o == EnumC2734a.OFFSET_SECONDS) ? interfaceC2748o.mo731a() : this.f489a.mo740d(interfaceC2748o) : interfaceC2748o.mo725g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: e */
    public long mo739e(InterfaceC2748o interfaceC2748o) {
        if (interfaceC2748o instanceof EnumC2734a) {
            int i = C2677a.f491a[((EnumC2734a) interfaceC2748o).ordinal()];
            return i != 1 ? i != 2 ? this.f489a.mo739e(interfaceC2748o) : this.f490b.m785p() : m971l();
        }
        return interfaceC2748o.mo728d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2743j
    /* renamed from: f */
    public InterfaceC2743j mo742f(long j, InterfaceC2758y interfaceC2758y) {
        if (interfaceC2758y instanceof ChronoUnit) {
            return m969n(this.f489a.mo742f(j, interfaceC2758y), this.f490b);
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2758y;
        Objects.requireNonNull(chronoUnit);
        return (OffsetDateTime) mo742f(j, chronoUnit);
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: g */
    public Object mo738g(InterfaceC2757x interfaceC2757x) {
        int i = AbstractC2756w.f647a;
        if (interfaceC2757x == C2752s.f643a || interfaceC2757x == C2753t.f644a) {
            return this.f490b;
        }
        if (interfaceC2757x == C2749p.f640a) {
            return null;
        }
        if (interfaceC2757x == C2754u.f645a) {
            return this.f489a.m929B();
        }
        return interfaceC2757x == C2755v.f646a ? m970m() : interfaceC2757x == C2750q.f641a ? C2689h.f501a : interfaceC2757x == C2751r.f642a ? ChronoUnit.NANOS : interfaceC2757x.mo723a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2745l
    /* renamed from: h */
    public InterfaceC2743j mo736h(InterfaceC2743j interfaceC2743j) {
        return interfaceC2743j.mo743b(EnumC2734a.EPOCH_DAY, this.f489a.m929B().m952A()).mo743b(EnumC2734a.NANO_OF_DAY, m970m().m804v()).mo743b(EnumC2734a.OFFSET_SECONDS, this.f490b.m785p());
    }

    public int hashCode() {
        return this.f489a.hashCode() ^ this.f490b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2744k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2748o interfaceC2748o) {
        return (interfaceC2748o instanceof EnumC2734a) || (interfaceC2748o != null && interfaceC2748o.mo727e(this));
    }

    /* renamed from: l */
    public long m971l() {
        return this.f489a.m930A(this.f490b);
    }

    /* renamed from: m */
    public C2722h m970m() {
        return this.f489a.m927D();
    }

    public Instant toInstant() {
        C2692f c2692f = this.f489a;
        return Instant.ofEpochSecond(c2692f.m930A(this.f490b), c2692f.m927D().m813m());
    }

    public String toString() {
        return this.f489a.toString() + this.f490b.toString();
    }
}
