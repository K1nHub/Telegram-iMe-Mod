package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public final class C2836g {

    /* renamed from: c */
    private static final C2836g f799c = new C2836g();

    /* renamed from: a */
    private final boolean f800a;

    /* renamed from: b */
    private final double f801b;

    private C2836g() {
        this.f800a = false;
        this.f801b = Double.NaN;
    }

    private C2836g(double d) {
        this.f800a = true;
        this.f801b = d;
    }

    /* renamed from: a */
    public static C2836g m617a() {
        return f799c;
    }

    /* renamed from: d */
    public static C2836g m614d(double d) {
        return new C2836g(d);
    }

    /* renamed from: b */
    public double m616b() {
        if (this.f800a) {
            return this.f801b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m615c() {
        return this.f800a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2836g) {
            C2836g c2836g = (C2836g) obj;
            boolean z = this.f800a;
            if (z && c2836g.f800a) {
                if (Double.compare(this.f801b, c2836g.f801b) == 0) {
                    return true;
                }
            } else if (z == c2836g.f800a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f800a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f801b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f800a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f801b)) : "OptionalDouble.empty";
    }
}
