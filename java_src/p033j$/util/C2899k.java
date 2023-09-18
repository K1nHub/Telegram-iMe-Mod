package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2899k {

    /* renamed from: c */
    private static final C2899k f762c = new C2899k();

    /* renamed from: a */
    private final boolean f763a;

    /* renamed from: b */
    private final long f764b;

    private C2899k() {
        this.f763a = false;
        this.f764b = 0L;
    }

    private C2899k(long j) {
        this.f763a = true;
        this.f764b = j;
    }

    /* renamed from: a */
    public static C2899k m545a() {
        return f762c;
    }

    /* renamed from: d */
    public static C2899k m542d(long j) {
        return new C2899k(j);
    }

    /* renamed from: b */
    public long m544b() {
        if (this.f763a) {
            return this.f764b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m543c() {
        return this.f763a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2899k) {
            C2899k c2899k = (C2899k) obj;
            boolean z = this.f763a;
            if (z && c2899k.f763a) {
                if (this.f764b == c2899k.f764b) {
                    return true;
                }
            } else if (z == c2899k.f763a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f763a) {
            long j = this.f764b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f763a ? String.format("OptionalLong[%s]", Long.valueOf(this.f764b)) : "OptionalLong.empty";
    }
}
