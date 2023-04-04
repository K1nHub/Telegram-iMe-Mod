package p035j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2690i {

    /* renamed from: c */
    private static final C2690i f672c = new C2690i();

    /* renamed from: a */
    private final boolean f673a;

    /* renamed from: b */
    private final double f674b;

    private C2690i() {
        this.f673a = false;
        this.f674b = Double.NaN;
    }

    private C2690i(double d) {
        this.f673a = true;
        this.f674b = d;
    }

    /* renamed from: a */
    public static C2690i m544a() {
        return f672c;
    }

    /* renamed from: d */
    public static C2690i m541d(double d) {
        return new C2690i(d);
    }

    /* renamed from: b */
    public double m543b() {
        if (this.f673a) {
            return this.f674b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m542c() {
        return this.f673a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2690i) {
            C2690i c2690i = (C2690i) obj;
            boolean z = this.f673a;
            if (z && c2690i.f673a) {
                if (Double.compare(this.f674b, c2690i.f674b) == 0) {
                    return true;
                }
            } else if (z == c2690i.f673a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f673a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f674b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f673a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f674b)) : "OptionalDouble.empty";
    }
}
