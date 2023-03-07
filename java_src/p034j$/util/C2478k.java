package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2478k {

    /* renamed from: c */
    private static final C2478k f667c = new C2478k();

    /* renamed from: a */
    private final boolean f668a;

    /* renamed from: b */
    private final long f669b;

    private C2478k() {
        this.f668a = false;
        this.f669b = 0L;
    }

    private C2478k(long j) {
        this.f668a = true;
        this.f669b = j;
    }

    /* renamed from: a */
    public static C2478k m542a() {
        return f667c;
    }

    /* renamed from: d */
    public static C2478k m539d(long j) {
        return new C2478k(j);
    }

    /* renamed from: b */
    public long m541b() {
        if (this.f668a) {
            return this.f669b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m540c() {
        return this.f668a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2478k) {
            C2478k c2478k = (C2478k) obj;
            boolean z = this.f668a;
            if (z && c2478k.f668a) {
                if (this.f669b == c2478k.f669b) {
                    return true;
                }
            } else if (z == c2478k.f668a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f668a) {
            long j = this.f669b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f668a ? String.format("OptionalLong[%s]", Long.valueOf(this.f669b)) : "OptionalLong.empty";
    }
}
