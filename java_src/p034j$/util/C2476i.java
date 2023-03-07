package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2476i {

    /* renamed from: c */
    private static final C2476i f661c = new C2476i();

    /* renamed from: a */
    private final boolean f662a;

    /* renamed from: b */
    private final double f663b;

    private C2476i() {
        this.f662a = false;
        this.f663b = Double.NaN;
    }

    private C2476i(double d) {
        this.f662a = true;
        this.f663b = d;
    }

    /* renamed from: a */
    public static C2476i m550a() {
        return f661c;
    }

    /* renamed from: d */
    public static C2476i m547d(double d) {
        return new C2476i(d);
    }

    /* renamed from: b */
    public double m549b() {
        if (this.f662a) {
            return this.f663b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m548c() {
        return this.f662a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2476i) {
            C2476i c2476i = (C2476i) obj;
            boolean z = this.f662a;
            if (z && c2476i.f662a) {
                if (Double.compare(this.f663b, c2476i.f663b) == 0) {
                    return true;
                }
            } else if (z == c2476i.f662a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f662a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f663b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f662a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f663b)) : "OptionalDouble.empty";
    }
}
