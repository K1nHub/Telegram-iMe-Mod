package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2837i {

    /* renamed from: c */
    private static final C2837i f805c = new C2837i();

    /* renamed from: a */
    private final boolean f806a;

    /* renamed from: b */
    private final long f807b;

    private C2837i() {
        this.f806a = false;
        this.f807b = 0L;
    }

    private C2837i(long j) {
        this.f806a = true;
        this.f807b = j;
    }

    /* renamed from: a */
    public static C2837i m608a() {
        return f805c;
    }

    /* renamed from: d */
    public static C2837i m605d(long j) {
        return new C2837i(j);
    }

    /* renamed from: b */
    public long m607b() {
        if (this.f806a) {
            return this.f807b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m606c() {
        return this.f806a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2837i) {
            C2837i c2837i = (C2837i) obj;
            boolean z = this.f806a;
            if (z && c2837i.f806a) {
                if (this.f807b == c2837i.f807b) {
                    return true;
                }
            } else if (z == c2837i.f806a) {
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
