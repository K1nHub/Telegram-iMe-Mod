package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.j */
/* loaded from: classes2.dex */
public final class C2615j {

    /* renamed from: c */
    private static final C2615j f670c = new C2615j();

    /* renamed from: a */
    private final boolean f671a;

    /* renamed from: b */
    private final int f672b;

    private C2615j() {
        this.f671a = false;
        this.f672b = 0;
    }

    private C2615j(int i) {
        this.f671a = true;
        this.f672b = i;
    }

    /* renamed from: a */
    public static C2615j m545a() {
        return f670c;
    }

    /* renamed from: d */
    public static C2615j m542d(int i) {
        return new C2615j(i);
    }

    /* renamed from: b */
    public int m544b() {
        if (this.f671a) {
            return this.f672b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m543c() {
        return this.f671a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2615j) {
            C2615j c2615j = (C2615j) obj;
            boolean z = this.f671a;
            if (z && c2615j.f671a) {
                if (this.f672b == c2615j.f672b) {
                    return true;
                }
            } else if (z == c2615j.f671a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f671a) {
            return this.f672b;
        }
        return 0;
    }

    public String toString() {
        return this.f671a ? String.format("OptionalInt[%s]", Integer.valueOf(this.f672b)) : "OptionalInt.empty";
    }
}
