package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2842i {

    /* renamed from: c */
    private static final C2842i f755c = new C2842i();

    /* renamed from: a */
    private final boolean f756a;

    /* renamed from: b */
    private final double f757b;

    private C2842i() {
        this.f756a = false;
        this.f757b = Double.NaN;
    }

    private C2842i(double d) {
        this.f756a = true;
        this.f757b = d;
    }

    /* renamed from: a */
    public static C2842i m553a() {
        return f755c;
    }

    /* renamed from: d */
    public static C2842i m550d(double d) {
        return new C2842i(d);
    }

    /* renamed from: b */
    public double m552b() {
        if (this.f756a) {
            return this.f757b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m551c() {
        return this.f756a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2842i) {
            C2842i c2842i = (C2842i) obj;
            boolean z = this.f756a;
            if (z && c2842i.f756a) {
                if (Double.compare(this.f757b, c2842i.f757b) == 0) {
                    return true;
                }
            } else if (z == c2842i.f756a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f756a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f757b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f756a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f757b)) : "OptionalDouble.empty";
    }
}
