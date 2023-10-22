package p033j$.time.zone;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p033j$.time.AbstractC2675a;
import p033j$.time.C2688f;
import p033j$.time.C2725o;
import p033j$.time.Duration;
import p033j$.time.Instant;
/* renamed from: j$.time.zone.a */
/* loaded from: classes2.dex */
public final class C2756a implements Comparable, Serializable {

    /* renamed from: a */
    private final C2688f f648a;

    /* renamed from: b */
    private final C2725o f649b;

    /* renamed from: c */
    private final C2725o f650c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2756a(long j, C2725o c2725o, C2725o c2725o2) {
        this.f648a = C2688f.m911u(j, 0, c2725o);
        this.f649b = c2725o;
        this.f650c = c2725o2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2756a(C2688f c2688f, C2725o c2725o, C2725o c2725o2) {
        this.f648a = c2688f;
        this.f649b = c2725o;
        this.f650c = c2725o2;
    }

    /* renamed from: a */
    public C2688f m720a() {
        return this.f648a.m907y(this.f650c.m784p() - this.f649b.m784p());
    }

    /* renamed from: b */
    public C2688f m719b() {
        return this.f648a;
    }

    /* renamed from: c */
    public Duration m718c() {
        return Duration.m980d(this.f650c.m784p() - this.f649b.m784p());
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return m717d().compareTo(((C2756a) obj).m717d());
    }

    /* renamed from: d */
    public Instant m717d() {
        C2688f c2688f = this.f648a;
        return Instant.ofEpochSecond(c2688f.m929A(this.f649b), c2688f.m926D().m812m());
    }

    /* renamed from: e */
    public C2725o m716e() {
        return this.f650c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2756a) {
            C2756a c2756a = (C2756a) obj;
            return this.f648a.equals(c2756a.f648a) && this.f649b.equals(c2756a.f649b) && this.f650c.equals(c2756a.f650c);
        }
        return false;
    }

    /* renamed from: f */
    public C2725o m715f() {
        return this.f649b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public List m714g() {
        return m713h() ? Collections.emptyList() : Arrays.asList(this.f649b, this.f650c);
    }

    /* renamed from: h */
    public boolean m713h() {
        return this.f650c.m784p() > this.f649b.m784p();
    }

    public int hashCode() {
        return (this.f648a.hashCode() ^ this.f649b.hashCode()) ^ Integer.rotateLeft(this.f650c.hashCode(), 16);
    }

    /* renamed from: i */
    public long m712i() {
        return this.f648a.m929A(this.f649b);
    }

    public String toString() {
        StringBuilder m960a = AbstractC2675a.m960a("Transition[");
        m960a.append(m713h() ? "Gap" : "Overlap");
        m960a.append(" at ");
        m960a.append(this.f648a);
        m960a.append(this.f649b);
        m960a.append(" to ");
        m960a.append(this.f650c);
        m960a.append(']');
        return m960a.toString();
    }
}
