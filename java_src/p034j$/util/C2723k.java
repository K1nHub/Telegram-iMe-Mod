package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2723k {

    /* renamed from: c */
    private static final C2723k f676c = new C2723k();

    /* renamed from: a */
    private final boolean f677a;

    /* renamed from: b */
    private final long f678b;

    private C2723k() {
        this.f677a = false;
        this.f678b = 0L;
    }

    private C2723k(long j) {
        this.f677a = true;
        this.f678b = j;
    }

    /* renamed from: a */
    public static C2723k m527a() {
        return f676c;
    }

    /* renamed from: d */
    public static C2723k m524d(long j) {
        return new C2723k(j);
    }

    /* renamed from: b */
    public long m526b() {
        if (this.f677a) {
            return this.f678b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m525c() {
        return this.f677a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2723k) {
            C2723k c2723k = (C2723k) obj;
            boolean z = this.f677a;
            if (z && c2723k.f677a) {
                if (this.f678b == c2723k.f678b) {
                    return true;
                }
            } else if (z == c2723k.f677a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f677a) {
            long j = this.f678b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f677a ? String.format("OptionalLong[%s]", Long.valueOf(this.f678b)) : "OptionalLong.empty";
    }
}
