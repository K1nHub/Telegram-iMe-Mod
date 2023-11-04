package p033j$.time.zone;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p033j$.time.AbstractC2679a;
import p033j$.time.C2692f;
import p033j$.time.C2729o;
import p033j$.time.Duration;
import p033j$.time.Instant;
/* renamed from: j$.time.zone.a */
/* loaded from: classes2.dex */
public final class C2760a implements Comparable, Serializable {

    /* renamed from: a */
    private final C2692f f648a;

    /* renamed from: b */
    private final C2729o f649b;

    /* renamed from: c */
    private final C2729o f650c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2760a(long j, C2729o c2729o, C2729o c2729o2) {
        this.f648a = C2692f.m912u(j, 0, c2729o);
        this.f649b = c2729o;
        this.f650c = c2729o2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2760a(C2692f c2692f, C2729o c2729o, C2729o c2729o2) {
        this.f648a = c2692f;
        this.f649b = c2729o;
        this.f650c = c2729o2;
    }

    /* renamed from: a */
    public C2692f m721a() {
        return this.f648a.m908y(this.f650c.m785p() - this.f649b.m785p());
    }

    /* renamed from: b */
    public C2692f m720b() {
        return this.f648a;
    }

    /* renamed from: c */
    public Duration m719c() {
        return Duration.m981d(this.f650c.m785p() - this.f649b.m785p());
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return m718d().compareTo(((C2760a) obj).m718d());
    }

    /* renamed from: d */
    public Instant m718d() {
        C2692f c2692f = this.f648a;
        return Instant.ofEpochSecond(c2692f.m930A(this.f649b), c2692f.m927D().m813m());
    }

    /* renamed from: e */
    public C2729o m717e() {
        return this.f650c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2760a) {
            C2760a c2760a = (C2760a) obj;
            return this.f648a.equals(c2760a.f648a) && this.f649b.equals(c2760a.f649b) && this.f650c.equals(c2760a.f650c);
        }
        return false;
    }

    /* renamed from: f */
    public C2729o m716f() {
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
        StringBuilder m961a = AbstractC2679a.m961a("Transition[");
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
