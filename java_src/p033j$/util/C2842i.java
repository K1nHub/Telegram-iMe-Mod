package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2842i {

    /* renamed from: c */
    private static final C2842i f752c = new C2842i();

    /* renamed from: a */
    private final boolean f753a;

    /* renamed from: b */
    private final double f754b;

    private C2842i() {
        this.f753a = false;
        this.f754b = Double.NaN;
    }

    private C2842i(double d) {
        this.f753a = true;
        this.f754b = d;
    }

    /* renamed from: a */
    public static C2842i m535a() {
        return f752c;
    }

    /* renamed from: d */
    public static C2842i m532d(double d) {
        return new C2842i(d);
    }

    /* renamed from: b */
    public double m534b() {
        if (this.f753a) {
            return this.f754b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m533c() {
        return this.f753a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2842i) {
            C2842i c2842i = (C2842i) obj;
            boolean z = this.f753a;
            if (z && c2842i.f753a) {
                if (Double.compare(this.f754b, c2842i.f754b) == 0) {
                    return true;
                }
            } else if (z == c2842i.f753a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f753a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f754b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f753a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f754b)) : "OptionalDouble.empty";
    }
}
