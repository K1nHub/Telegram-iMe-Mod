package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2602k {

    /* renamed from: c */
    private static final C2602k f672c = new C2602k();

    /* renamed from: a */
    private final boolean f673a;

    /* renamed from: b */
    private final long f674b;

    private C2602k() {
        this.f673a = false;
        this.f674b = 0L;
    }

    private C2602k(long j) {
        this.f673a = true;
        this.f674b = j;
    }

    /* renamed from: a */
    public static C2602k m542a() {
        return f672c;
    }

    /* renamed from: d */
    public static C2602k m539d(long j) {
        return new C2602k(j);
    }

    /* renamed from: b */
    public long m541b() {
        if (this.f673a) {
            return this.f674b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m540c() {
        return this.f673a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2602k) {
            C2602k c2602k = (C2602k) obj;
            boolean z = this.f673a;
            if (z && c2602k.f673a) {
                if (this.f674b == c2602k.f674b) {
                    return true;
                }
            } else if (z == c2602k.f673a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f673a) {
            long j = this.f674b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f673a ? String.format("OptionalLong[%s]", Long.valueOf(this.f674b)) : "OptionalLong.empty";
    }
}
