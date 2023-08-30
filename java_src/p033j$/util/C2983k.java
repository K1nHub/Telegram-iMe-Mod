package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2983k {

    /* renamed from: c */
    private static final C2983k f771c = new C2983k();

    /* renamed from: a */
    private final boolean f772a;

    /* renamed from: b */
    private final long f773b;

    private C2983k() {
        this.f772a = false;
        this.f773b = 0L;
    }

    private C2983k(long j) {
        this.f772a = true;
        this.f773b = j;
    }

    /* renamed from: a */
    public static C2983k m545a() {
        return f771c;
    }

    /* renamed from: d */
    public static C2983k m542d(long j) {
        return new C2983k(j);
    }

    /* renamed from: b */
    public long m544b() {
        if (this.f772a) {
            return this.f773b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m543c() {
        return this.f772a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2983k) {
            C2983k c2983k = (C2983k) obj;
            boolean z = this.f772a;
            if (z && c2983k.f772a) {
                if (this.f773b == c2983k.f773b) {
                    return true;
                }
            } else if (z == c2983k.f772a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f772a) {
            long j = this.f773b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f772a ? String.format("OptionalLong[%s]", Long.valueOf(this.f773b)) : "OptionalLong.empty";
    }
}
