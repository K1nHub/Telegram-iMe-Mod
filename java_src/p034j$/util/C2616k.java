package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2616k {

    /* renamed from: c */
    private static final C2616k f673c = new C2616k();

    /* renamed from: a */
    private final boolean f674a;

    /* renamed from: b */
    private final long f675b;

    private C2616k() {
        this.f674a = false;
        this.f675b = 0L;
    }

    private C2616k(long j) {
        this.f674a = true;
        this.f675b = j;
    }

    /* renamed from: a */
    public static C2616k m541a() {
        return f673c;
    }

    /* renamed from: d */
    public static C2616k m538d(long j) {
        return new C2616k(j);
    }

    /* renamed from: b */
    public long m540b() {
        if (this.f674a) {
            return this.f675b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m539c() {
        return this.f674a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2616k) {
            C2616k c2616k = (C2616k) obj;
            boolean z = this.f674a;
            if (z && c2616k.f674a) {
                if (this.f675b == c2616k.f675b) {
                    return true;
                }
            } else if (z == c2616k.f674a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f674a) {
            long j = this.f675b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f674a ? String.format("OptionalLong[%s]", Long.valueOf(this.f675b)) : "OptionalLong.empty";
    }
}
