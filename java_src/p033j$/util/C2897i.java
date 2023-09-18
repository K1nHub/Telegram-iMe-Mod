package p033j$.util;

import java.util.NoSuchElementException;
/* renamed from: j$.util.i */
/* loaded from: classes2.dex */
public final class C2897i {

    /* renamed from: c */
    private static final C2897i f756c = new C2897i();

    /* renamed from: a */
    private final boolean f757a;

    /* renamed from: b */
    private final double f758b;

    private C2897i() {
        this.f757a = false;
        this.f758b = Double.NaN;
    }

    private C2897i(double d) {
        this.f757a = true;
        this.f758b = d;
    }

    /* renamed from: a */
    public static C2897i m553a() {
        return f756c;
    }

    /* renamed from: d */
    public static C2897i m550d(double d) {
        return new C2897i(d);
    }

    /* renamed from: b */
    public double m552b() {
        if (this.f757a) {
            return this.f758b;
        }
        throw new NoSuchElementException("No value present");
    }

    /* renamed from: c */
    public boolean m551c() {
        return this.f757a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2897i) {
            C2897i c2897i = (C2897i) obj;
            boolean z = this.f757a;
            if (z && c2897i.f757a) {
                if (Double.compare(this.f758b, c2897i.f758b) == 0) {
                    return true;
                }
            } else if (z == c2897i.f757a) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        if (this.f757a) {
            long doubleToLongBits = Double.doubleToLongBits(this.f758b);
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
        return 0;
    }

    public String toString() {
        return this.f757a ? String.format("OptionalDouble[%s]", Double.valueOf(this.f758b)) : "OptionalDouble.empty";
    }
}
