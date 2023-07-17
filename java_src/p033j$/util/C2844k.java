package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.k */
/* loaded from: classes2.dex */
public final class C2844k {

    /* renamed from: c */
    private static final C2844k f758c = new C2844k();

    /* renamed from: a */
    private final boolean f759a;

    /* renamed from: b */
    private final long f760b;

    private C2844k() {
        this.f759a = false;
        this.f760b = 0L;
    }

    private C2844k(long j) {
        this.f759a = true;
        this.f760b = j;
    }

    /* renamed from: a */
    public static C2844k m527a() {
        return f758c;
    }

    /* renamed from: d */
    public static C2844k m524d(long j) {
        return new C2844k(j);
    }

    /* renamed from: b */
    public long m526b() {
        if (this.f759a) {
            return this.f760b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m525c() {
        return this.f759a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2844k) {
            C2844k c2844k = (C2844k) obj;
            boolean z = this.f759a;
            if (z && c2844k.f759a) {
                if (this.f760b == c2844k.f760b) {
                    return true;
                }
            } else if (z == c2844k.f759a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f759a) {
            long j = this.f760b;
            return (int) (j ^ (j >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f759a ? String.format("OptionalLong[%s]", Long.valueOf(this.f760b)) : "OptionalLong.empty";
    }
}
