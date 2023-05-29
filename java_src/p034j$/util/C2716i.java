package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2716i {

    /* renamed from: c */
    private static final C2716i f670c = new C2716i();

    /* renamed from: a */
    private final boolean f671a;

    /* renamed from: b */
    private final double f672b;

    private C2716i() {
        this.f671a = false;
        this.f672b = Double.NaN;
    }

    private C2716i(double d) {
        this.f671a = true;
        this.f672b = d;
    }

    /* renamed from: a */
    public static C2716i m535a() {
        return f670c;
    }

    /* renamed from: d */
    public static C2716i m532d(double d) {
        return new C2716i(d);
    }

    /* renamed from: b */
    public double m534b() {
        if (this.f671a) {
            return this.f672b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m533c() {
        return this.f671a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2716i) {
            C2716i c2716i = (C2716i) obj;
            boolean z = this.f671a;
            if (z && c2716i.f671a) {
                if (Double.compare(this.f672b, c2716i.f672b) == 0) {
                    return true;
                }
            } else if (z == c2716i.f671a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f671a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f672b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f671a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f672b)) : "OptionalDouble.empty";
    }
}
