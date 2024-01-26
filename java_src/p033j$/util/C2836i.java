package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2836i {

    /* renamed from: c */
    private static final C2836i f805c = new C2836i();

    /* renamed from: a */
    private final boolean f806a;

    /* renamed from: b */
    private final long f807b;

    private C2836i() {
        this.f806a = false;
        this.f807b = 0L;
    }

    private C2836i(long j) {
        this.f806a = true;
        this.f807b = j;
    }

    /* renamed from: a */
    public static C2836i m612a() {
        return f805c;
    }

    /* renamed from: d */
    public static C2836i m609d(long j) {
        return new C2836i(j);
    }

    /* renamed from: b */
    public long m611b() {
        if (this.f806a) {
            return this.f807b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m610c() {
        return this.f806a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2836i) {
            C2836i c2836i = (C2836i) obj;
            boolean z = this.f806a;
            if (z && c2836i.f806a) {
                if (this.f807b == c2836i.f807b) {
                    return true;
                }
            } else if (z == c2836i.f806a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f806a) {
            long j = this.f807b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f806a ? String.format("OptionalLong[%s]", Long.valueOf(this.f807b)) : "OptionalLong.empty";
    }
}
