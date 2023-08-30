package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2981i {

    /* renamed from: c */
    private static final C2981i f765c = new C2981i();

    /* renamed from: a */
    private final boolean f766a;

    /* renamed from: b */
    private final double f767b;

    private C2981i() {
        this.f766a = false;
        this.f767b = Double.NaN;
    }

    private C2981i(double d) {
        this.f766a = true;
        this.f767b = d;
    }

    /* renamed from: a */
    public static C2981i m553a() {
        return f765c;
    }

    /* renamed from: d */
    public static C2981i m550d(double d) {
        return new C2981i(d);
    }

    /* renamed from: b */
    public double m552b() {
        if (this.f766a) {
            return this.f767b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m551c() {
        return this.f766a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2981i) {
            C2981i c2981i = (C2981i) obj;
            boolean z = this.f766a;
            if (z && c2981i.f766a) {
                if (Double.compare(this.f767b, c2981i.f767b) == 0) {
                    return true;
                }
            } else if (z == c2981i.f766a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f766a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f767b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f766a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f767b)) : "OptionalDouble.empty";
    }
}
