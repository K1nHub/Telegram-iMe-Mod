package p035j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2691j {

    /* renamed from: c */
    private static final C2691j f675c = new C2691j();

    /* renamed from: a */
    private final boolean f676a;

    /* renamed from: b */
    private final int f677b;

    private C2691j() {
        this.f676a = false;
        this.f677b = 0;
    }

    private C2691j(int i) {
        this.f676a = true;
        this.f677b = i;
    }

    /* renamed from: a */
    public static C2691j m540a() {
        return f675c;
    }

    /* renamed from: d */
    public static C2691j m537d(int i) {
        return new C2691j(i);
    }

    /* renamed from: b */
    public int m539b() {
        if (this.f676a) {
            return this.f677b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m538c() {
        return this.f676a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2691j) {
            C2691j c2691j = (C2691j) obj;
            boolean z = this.f676a;
            if (z && c2691j.f676a) {
                if (this.f677b == c2691j.f677b) {
                    return true;
                }
            } else if (z == c2691j.f676a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f676a) {
            return this.f677b;
        }
        return 0;
    }

    public String toString() {
        return this.f676a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f677b)) : "OptionalInt.empty";
    }
}
