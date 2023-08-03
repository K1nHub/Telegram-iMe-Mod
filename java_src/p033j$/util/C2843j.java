package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2843j {

    /* renamed from: c */
    private static final C2843j f758c = new C2843j();

    /* renamed from: a */
    private final boolean f759a;

    /* renamed from: b */
    private final int f760b;

    private C2843j() {
        this.f759a = false;
        this.f760b = 0;
    }

    private C2843j(int i) {
        this.f759a = true;
        this.f760b = i;
    }

    /* renamed from: a */
    public static C2843j m549a() {
        return f758c;
    }

    /* renamed from: d */
    public static C2843j m546d(int i) {
        return new C2843j(i);
    }

    /* renamed from: b */
    public int m548b() {
        if (this.f759a) {
            return this.f760b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m547c() {
        return this.f759a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2843j) {
            C2843j c2843j = (C2843j) obj;
            boolean z = this.f759a;
            if (z && c2843j.f759a) {
                if (this.f760b == c2843j.f760b) {
                    return true;
                }
            } else if (z == c2843j.f759a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f759a) {
            return this.f760b;
        }
        return 0;
    }

    public String toString() {
        return this.f759a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f760b)) : "OptionalInt.empty";
    }
}
