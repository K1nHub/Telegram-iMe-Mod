package p033j$.time.zone;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p033j$.time.AbstractC2674a;
import p033j$.time.C2687f;
import p033j$.time.C2724o;
import p033j$.time.Duration;
import p033j$.time.Instant;
/* renamed from: j$.time.zone.a */
/* loaded from: classes2.dex */
public final class C2755a implements Comparable, Serializable {

    /* renamed from: a */
    private final C2687f f648a;

    /* renamed from: b */
    private final C2724o f649b;

    /* renamed from: c */
    private final C2724o f650c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2755a(long j, C2724o c2724o, C2724o c2724o2) {
        this.f648a = C2687f.m915u(j, 0, c2724o);
        this.f649b = c2724o;
        this.f650c = c2724o2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2755a(C2687f c2687f, C2724o c2724o, C2724o c2724o2) {
        this.f648a = c2687f;
        this.f649b = c2724o;
        this.f650c = c2724o2;
    }

    /* renamed from: a */
    public C2687f m724a() {
        return this.f648a.m911y(this.f650c.m788p() - this.f649b.m788p());
    }

    /* renamed from: b */
    public C2687f m723b() {
        return this.f648a;
    }

    /* renamed from: c */
    public Duration m722c() {
        return Duration.m984d(this.f650c.m788p() - this.f649b.m788p());
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return m721d().compareTo(((C2755a) obj).m721d());
    }

    /* renamed from: d */
    public Instant m721d() {
        C2687f c2687f = this.f648a;
        return Instant.ofEpochSecond(c2687f.m933A(this.f649b), c2687f.m930D().m816m());
    }

    /* renamed from: e */
    public C2724o m720e() {
        return this.f650c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2755a) {
            C2755a c2755a = (C2755a) obj;
            return this.f648a.equals(c2755a.f648a) && this.f649b.equals(c2755a.f649b) && this.f650c.equals(c2755a.f650c);
        }
        return false;
    }

    /* renamed from: f */
    public C2724o m719f() {
        return this.f649b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public List m718g() {
        return m717h() ? Collections.emptyList() : Arrays.asList(this.f649b, this.f650c);
    }

    /* renamed from: h */
    public boolean m717h() {
        return this.f650c.m788p() > this.f649b.m788p();
    }

    public int hashCode() {
        return (this.f648a.hashCode() ^ this.f649b.hashCode()) ^ Integer.rotateLeft(this.f650c.hashCode(), 16);
    }

    /* renamed from: i */
    public long m716i() {
        return this.f648a.m933A(this.f649b);
    }

    public String toString() {
        StringBuilder m964a = AbstractC2674a.m964a("Transition[");
        m964a.append(m717h() ? "Gap" : "Overlap");
        m964a.append(" at ");
        m964a.append(this.f648a);
        m964a.append(this.f649b);
        m964a.append(" to ");
        m964a.append(this.f650c);
        m964a.append(']');
        return m964a.toString();
    }
}
