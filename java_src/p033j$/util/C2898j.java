package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2898j {

    /* renamed from: c */
    private static final C2898j f759c = new C2898j();

    /* renamed from: a */
    private final boolean f760a;

    /* renamed from: b */
    private final int f761b;

    private C2898j() {
        this.f760a = false;
        this.f761b = 0;
    }

    private C2898j(int i) {
        this.f760a = true;
        this.f761b = i;
    }

    /* renamed from: a */
    public static C2898j m549a() {
        return f759c;
    }

    /* renamed from: d */
    public static C2898j m546d(int i) {
        return new C2898j(i);
    }

    /* renamed from: b */
    public int m548b() {
        if (this.f760a) {
            return this.f761b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m547c() {
        return this.f760a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2898j) {
            C2898j c2898j = (C2898j) obj;
            boolean z = this.f760a;
            if (z && c2898j.f760a) {
                if (this.f761b == c2898j.f761b) {
                    return true;
                }
            } else if (z == c2898j.f760a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f760a) {
            return this.f761b;
        }
        return 0;
    }

    public String toString() {
        return this.f760a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f761b)) : "OptionalInt.empty";
    }
}
