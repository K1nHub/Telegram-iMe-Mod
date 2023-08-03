package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2844k {

    /* renamed from: c */
    private static final C2844k f761c = new C2844k();

    /* renamed from: a */
    private final boolean f762a;

    /* renamed from: b */
    private final long f763b;

    private C2844k() {
        this.f762a = false;
        this.f763b = 0L;
    }

    private C2844k(long j) {
        this.f762a = true;
        this.f763b = j;
    }

    /* renamed from: a */
    public static C2844k m545a() {
        return f761c;
    }

    /* renamed from: d */
    public static C2844k m542d(long j) {
        return new C2844k(j);
    }

    /* renamed from: b */
    public long m544b() {
        if (this.f762a) {
            return this.f763b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m543c() {
        return this.f762a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2844k) {
            C2844k c2844k = (C2844k) obj;
            boolean z = this.f762a;
            if (z && c2844k.f762a) {
                if (this.f763b == c2844k.f763b) {
                    return true;
                }
            } else if (z == c2844k.f762a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f762a) {
            long j = this.f763b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f762a ? String.format("OptionalLong[%s]", Long.valueOf(this.f763b)) : "OptionalLong.empty";
    }
}
