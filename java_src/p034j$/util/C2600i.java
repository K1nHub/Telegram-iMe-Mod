package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2600i {

    /* renamed from: c */
    private static final C2600i f666c = new C2600i();

    /* renamed from: a */
    private final boolean f667a;

    /* renamed from: b */
    private final double f668b;

    private C2600i() {
        this.f667a = false;
        this.f668b = Double.NaN;
    }

    private C2600i(double d) {
        this.f667a = true;
        this.f668b = d;
    }

    /* renamed from: a */
    public static C2600i m550a() {
        return f666c;
    }

    /* renamed from: d */
    public static C2600i m547d(double d) {
        return new C2600i(d);
    }

    /* renamed from: b */
    public double m549b() {
        if (this.f667a) {
            return this.f668b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m548c() {
        return this.f667a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2600i) {
            C2600i c2600i = (C2600i) obj;
            boolean z = this.f667a;
            if (z && c2600i.f667a) {
                if (Double.compare(this.f668b, c2600i.f668b) == 0) {
                    return true;
                }
            } else if (z == c2600i.f667a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f667a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f668b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f667a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f668b)) : "OptionalDouble.empty";
    }
}
