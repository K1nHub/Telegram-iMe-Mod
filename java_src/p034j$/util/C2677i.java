package p034j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2677i {

    /* renamed from: c */
    private static final C2677i f667c = new C2677i();

    /* renamed from: a */
    private final boolean f668a;

    /* renamed from: b */
    private final double f669b;

    private C2677i() {
        this.f668a = false;
        this.f669b = Double.NaN;
    }

    private C2677i(double d) {
        this.f668a = true;
        this.f669b = d;
    }

    /* renamed from: a */
    public static C2677i m530a() {
        return f667c;
    }

    /* renamed from: d */
    public static C2677i m527d(double d) {
        return new C2677i(d);
    }

    /* renamed from: b */
    public double m529b() {
        if (this.f668a) {
            return this.f669b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m528c() {
        return this.f668a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2677i) {
            C2677i c2677i = (C2677i) obj;
            boolean z = this.f668a;
            if (z && c2677i.f668a) {
                if (Double.compare(this.f669b, c2677i.f669b) == 0) {
                    return true;
                }
            } else if (z == c2677i.f668a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f668a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f669b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f668a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f669b)) : "OptionalDouble.empty";
    }
}
