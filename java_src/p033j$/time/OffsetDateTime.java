package p033j$.time;

import java.io.Serializable;
import java.util.Objects;
import p033j$.time.chrono.C2686h;
import p033j$.time.format.C2692a;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2730A;
import p033j$.time.temporal.C2746p;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.C2748r;
import p033j$.time.temporal.C2749s;
import p033j$.time.temporal.C2750t;
import p033j$.time.temporal.C2751u;
import p033j$.time.temporal.C2752v;
import p033j$.time.temporal.C2756z;
import p033j$.time.temporal.ChronoUnit;
import p033j$.time.temporal.EnumC2731a;
import p033j$.time.temporal.InterfaceC2740j;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2742l;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
import p033j$.time.temporal.InterfaceC2755y;
import p033j$.time.zone.C2759c;
/* renamed from: j$.time.OffsetDateTime */
/* loaded from: classes2.dex */
public final class OffsetDateTime implements InterfaceC2740j, InterfaceC2742l, Comparable<OffsetDateTime>, Serializable {

    /* renamed from: a */
    private final C2689f f489a;

    /* renamed from: b */
    private final C2726o f490b;

    /* renamed from: j$.time.OffsetDateTime$a */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C2674a {

        /* renamed from: a */
        static final /* synthetic */ int[] f491a;

        static {
            int[] iArr = new int[EnumC2731a.values().length];
            f491a = iArr;
            try {
                iArr[EnumC2731a.INSTANT_SECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f491a[EnumC2731a.OFFSET_SECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    static {
        new OffsetDateTime(C2689f.f508c, C2726o.f612g);
        new OffsetDateTime(C2689f.f509d, C2726o.f611f);
    }

    private OffsetDateTime(C2689f c2689f, C2726o c2726o) {
        Objects.requireNonNull(c2689f, "dateTime");
        this.f489a = c2689f;
        Objects.requireNonNull(c2726o, "offset");
        this.f490b = c2726o;
    }

    /* renamed from: j */
    public static OffsetDateTime m973j(InterfaceC2741k interfaceC2741k) {
        if (interfaceC2741k instanceof OffsetDateTime) {
            return (OffsetDateTime) interfaceC2741k;
        }
        try {
            C2726o m786o = C2726o.m786o(interfaceC2741k);
            int i = AbstractC2753w.f647a;
            C2687d c2687d = (C2687d) interfaceC2741k.mo738g(C2751u.f645a);
            C2719h c2719h = (C2719h) interfaceC2741k.mo738g(C2752v.f646a);
            if (c2687d != null && c2719h != null) {
                return new OffsetDateTime(C2689f.m913t(c2687d, c2719h), m786o);
            }
            return m972k(Instant.m978k(interfaceC2741k), m786o);
        } catch (DateTimeException e) {
            throw new DateTimeException("Unable to obtain OffsetDateTime from TemporalAccessor: " + interfaceC2741k + " of type " + interfaceC2741k.getClass().getName(), e);
        }
    }

    /* renamed from: k */
    public static OffsetDateTime m972k(Instant instant, AbstractC2725n abstractC2725n) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(abstractC2725n, "zone");
        C2726o m709d = C2759c.m704i((C2726o) abstractC2725n).m709d(instant);
        return new OffsetDateTime(C2689f.m912u(instant.getEpochSecond(), instant.getNano(), m709d), m709d);
    }

    /* renamed from: n */
    private OffsetDateTime m969n(C2689f c2689f, C2726o c2726o) {
        return (this.f489a == c2689f && this.f490b.equals(c2726o)) ? this : new OffsetDateTime(c2689f, c2726o);
    }

    public static OffsetDateTime parse(CharSequence charSequence) {
        C2692a c2692a = C2692a.f515i;
        Objects.requireNonNull(c2692a, "formatter");
        return (OffsetDateTime) c2692a.m900f(charSequence, new InterfaceC2754x() { // from class: j$.time.k
            @Override // p033j$.time.temporal.InterfaceC2754x
            /* renamed from: a */
            public final Object mo723a(InterfaceC2741k interfaceC2741k) {
                return OffsetDateTime.m973j(interfaceC2741k);
            }
        });
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: a */
    public InterfaceC2740j mo744a(InterfaceC2742l interfaceC2742l) {
        return m969n(this.f489a.mo744a(interfaceC2742l), this.f490b);
    }

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: b */
    public InterfaceC2740j mo743b(InterfaceC2745o interfaceC2745o, long j) {
        C2689f c2689f;
        C2726o m782s;
        if (interfaceC2745o instanceof EnumC2731a) {
            EnumC2731a enumC2731a = (EnumC2731a) interfaceC2745o;
            int i = C2674a.f491a[enumC2731a.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    c2689f = this.f489a.mo743b(interfaceC2745o, j);
                    m782s = this.f490b;
                } else {
                    c2689f = this.f489a;
                    m782s = C2726o.m782s(enumC2731a.m754i(j));
                }
                return m969n(c2689f, m782s);
            }
            return m972k(Instant.ofEpochSecond(j, this.f489a.m920m()), this.f490b);
        }
        return (OffsetDateTime) interfaceC2745o.mo726f(this, j);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public int mo741c(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o instanceof EnumC2731a) {
            int i = C2674a.f491a[((EnumC2731a) interfaceC2745o).ordinal()];
            if (i != 1) {
                return i != 2 ? this.f489a.mo741c(interfaceC2745o) : this.f490b.m785p();
            }
            throw new C2756z("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
        }
        return AbstractC2744n.m735a(this, interfaceC2745o);
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

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        return interfaceC2745o instanceof EnumC2731a ? (interfaceC2745o == EnumC2731a.INSTANT_SECONDS || interfaceC2745o == EnumC2731a.OFFSET_SECONDS) ? interfaceC2745o.mo731a() : this.f489a.mo740d(interfaceC2745o) : interfaceC2745o.mo725g(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        if (interfaceC2745o instanceof EnumC2731a) {
            int i = C2674a.f491a[((EnumC2731a) interfaceC2745o).ordinal()];
            return i != 1 ? i != 2 ? this.f489a.mo739e(interfaceC2745o) : this.f490b.m785p() : m971l();
        }
        return interfaceC2745o.mo728d(this);
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

    @Override // p033j$.time.temporal.InterfaceC2740j
    /* renamed from: f */
    public InterfaceC2740j mo742f(long j, InterfaceC2755y interfaceC2755y) {
        if (interfaceC2755y instanceof ChronoUnit) {
            return m969n(this.f489a.mo742f(j, interfaceC2755y), this.f490b);
        }
        ChronoUnit chronoUnit = (ChronoUnit) interfaceC2755y;
        Objects.requireNonNull(chronoUnit);
        return (OffsetDateTime) mo742f(j, chronoUnit);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: g */
    public Object mo738g(InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        if (interfaceC2754x == C2749s.f643a || interfaceC2754x == C2750t.f644a) {
            return this.f490b;
        }
        if (interfaceC2754x == C2746p.f640a) {
            return null;
        }
        if (interfaceC2754x == C2751u.f645a) {
            return this.f489a.m929B();
        }
        return interfaceC2754x == C2752v.f646a ? m970m() : interfaceC2754x == C2747q.f641a ? C2686h.f501a : interfaceC2754x == C2748r.f642a ? ChronoUnit.NANOS : interfaceC2754x.mo723a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2742l
    /* renamed from: h */
    public InterfaceC2740j mo736h(InterfaceC2740j interfaceC2740j) {
        return interfaceC2740j.mo743b(EnumC2731a.EPOCH_DAY, this.f489a.m929B().m952A()).mo743b(EnumC2731a.NANO_OF_DAY, m970m().m804v()).mo743b(EnumC2731a.OFFSET_SECONDS, this.f490b.m785p());
    }

    public int hashCode() {
        return this.f489a.hashCode() ^ this.f490b.hashCode();
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        return (interfaceC2745o instanceof EnumC2731a) || (interfaceC2745o != null && interfaceC2745o.mo727e(this));
    }

    /* renamed from: l */
    public long m971l() {
        return this.f489a.m930A(this.f490b);
    }

    /* renamed from: m */
    public C2719h m970m() {
        return this.f489a.m927D();
    }

    public Instant toInstant() {
        C2689f c2689f = this.f489a;
        return Instant.ofEpochSecond(c2689f.m930A(this.f490b), c2689f.m927D().m813m());
    }

    public String toString() {
        return this.f489a.toString() + this.f490b.toString();
    }
}
