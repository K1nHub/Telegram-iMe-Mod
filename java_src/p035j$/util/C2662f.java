package p035j$.util;

import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2662f implements InterfaceC2668f {

    /* renamed from: a */
    private double f653a;

    /* renamed from: b */
    private double f654b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m547d(double d) {
        double d2 = d - this.f653a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f653a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p035j$.util.function.InterfaceC2668f
    public void accept(double d) {
        this.count++;
        this.f654b += d;
        m547d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m549b(C2662f c2662f) {
        this.count += c2662f.count;
        this.f654b += c2662f.f654b;
        m547d(c2662f.sum);
        m547d(c2662f.f653a);
        this.min = Math.min(this.min, c2662f.min);
        this.max = Math.max(this.max, c2662f.max);
    }

    /* renamed from: c */
    public final double m548c() {
        double d = this.sum + this.f653a;
        return (Double.isNaN(d) && Double.isInfinite(this.f654b)) ? this.f654b : d;
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2662f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m548c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m548c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
