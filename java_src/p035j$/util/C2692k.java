package p035j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2692k {

    /* renamed from: c */
    private static final C2692k f678c = new C2692k();

    /* renamed from: a */
    private final boolean f679a;

    /* renamed from: b */
    private final long f680b;

    private C2692k() {
        this.f679a = false;
        this.f680b = 0L;
    }

    private C2692k(long j) {
        this.f679a = true;
        this.f680b = j;
    }

    /* renamed from: a */
    public static C2692k m536a() {
        return f678c;
    }

    /* renamed from: d */
    public static C2692k m533d(long j) {
        return new C2692k(j);
    }

    /* renamed from: b */
    public long m535b() {
        if (this.f679a) {
            return this.f680b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m534c() {
        return this.f679a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2692k) {
            C2692k c2692k = (C2692k) obj;
            boolean z = this.f679a;
            if (z && c2692k.f679a) {
                if (this.f680b == c2692k.f680b) {
                    return true;
                }
            } else if (z == c2692k.f679a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f679a) {
            long j = this.f680b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f679a ? String.format("OptionalLong[%s]", Long.valueOf(this.f680b)) : "OptionalLong.empty";
    }
}
