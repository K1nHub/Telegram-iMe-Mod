package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2717j {

    /* renamed from: c */
    private static final C2717j f673c = new C2717j();

    /* renamed from: a */
    private final boolean f674a;

    /* renamed from: b */
    private final int f675b;

    private C2717j() {
        this.f674a = false;
        this.f675b = 0;
    }

    private C2717j(int i) {
        this.f674a = true;
        this.f675b = i;
    }

    /* renamed from: a */
    public static C2717j m531a() {
        return f673c;
    }

    /* renamed from: d */
    public static C2717j m528d(int i) {
        return new C2717j(i);
    }

    /* renamed from: b */
    public int m530b() {
        if (this.f674a) {
            return this.f675b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m529c() {
        return this.f674a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2717j) {
            C2717j c2717j = (C2717j) obj;
            boolean z = this.f674a;
            if (z && c2717j.f674a) {
                if (this.f675b == c2717j.f675b) {
                    return true;
                }
            } else if (z == c2717j.f674a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f674a) {
            return this.f675b;
        }
        return 0;
    }

    public String toString() {
        return this.f674a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f675b)) : "OptionalInt.empty";
    }
}
