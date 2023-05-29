package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2722j {

    /* renamed from: c */
    private static final C2722j f673c = new C2722j();

    /* renamed from: a */
    private final boolean f674a;

    /* renamed from: b */
    private final int f675b;

    private C2722j() {
        this.f674a = false;
        this.f675b = 0;
    }

    private C2722j(int i) {
        this.f674a = true;
        this.f675b = i;
    }

    /* renamed from: a */
    public static C2722j m531a() {
        return f673c;
    }

    /* renamed from: d */
    public static C2722j m528d(int i) {
        return new C2722j(i);
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
        if (obj instanceof C2722j) {
            C2722j c2722j = (C2722j) obj;
            boolean z = this.f674a;
            if (z && c2722j.f674a) {
                if (this.f675b == c2722j.f675b) {
                    return true;
                }
            } else if (z == c2722j.f674a) {
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
