package p033j$.time.zone;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p033j$.time.AbstractC2676a;
import p033j$.time.C2689f;
import p033j$.time.C2726o;
import p033j$.time.Duration;
import p033j$.time.Instant;
/* renamed from: j$.time.zone.a */
/* loaded from: classes2.dex */
public final class C2757a implements Comparable, Serializable {

    /* renamed from: a */
    private final C2689f f648a;

    /* renamed from: b */
    private final C2726o f649b;

    /* renamed from: c */
    private final C2726o f650c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2757a(long j, C2726o c2726o, C2726o c2726o2) {
        this.f648a = C2689f.m912u(j, 0, c2726o);
        this.f649b = c2726o;
        this.f650c = c2726o2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2757a(C2689f c2689f, C2726o c2726o, C2726o c2726o2) {
        this.f648a = c2689f;
        this.f649b = c2726o;
        this.f650c = c2726o2;
    }

    /* renamed from: a */
    public C2689f m721a() {
        return this.f648a.m908y(this.f650c.m785p() - this.f649b.m785p());
    }

    /* renamed from: b */
    public C2689f m720b() {
        return this.f648a;
    }

    /* renamed from: c */
    public Duration m719c() {
        return Duration.m981d(this.f650c.m785p() - this.f649b.m785p());
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return m718d().compareTo(((C2757a) obj).m718d());
    }

    /* renamed from: d */
    public Instant m718d() {
        C2689f c2689f = this.f648a;
        return Instant.ofEpochSecond(c2689f.m930A(this.f649b), c2689f.m927D().m813m());
    }

    /* renamed from: e */
    public C2726o m717e() {
        return this.f650c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2757a) {
            C2757a c2757a = (C2757a) obj;
            return this.f648a.equals(c2757a.f648a) && this.f649b.equals(c2757a.f649b) && this.f650c.equals(c2757a.f650c);
        }
        return false;
    }

    /* renamed from: f */
    public C2726o m716f() {
        return this.f649b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public List m715g() {
        return m714h() ? Collections.emptyList() : Arrays.asList(this.f649b, this.f650c);
    }

    /* renamed from: h */
    public boolean m714h() {
        return this.f650c.m785p() > this.f649b.m785p();
    }

    public int hashCode() {
        return (this.f648a.hashCode() ^ this.f649b.hashCode()) ^ Integer.rotateLeft(this.f650c.hashCode(), 16);
    }

    /* renamed from: i */
    public long m713i() {
        return this.f648a.m930A(this.f649b);
    }

    public String toString() {
        StringBuilder m961a = AbstractC2676a.m961a("Transition[");
        m961a.append(m714h() ? "Gap" : "Overlap");
        m961a.append(" at ");
        m961a.append(this.f648a);
        m961a.append(this.f649b);
        m961a.append(" to ");
        m961a.append(this.f650c);
        m961a.append(']');
        return m961a.toString();
    }
}
