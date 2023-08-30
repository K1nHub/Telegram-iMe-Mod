package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2953f implements InterfaceC2959f {

    /* renamed from: a */
    private double f746a;

    /* renamed from: b */
    private double f747b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m556d(double d) {
        double d2 = d - this.f746a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f746a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p033j$.util.function.InterfaceC2959f
    public void accept(double d) {
        this.count++;
        this.f747b += d;
        m556d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m558b(C2953f c2953f) {
        this.count += c2953f.count;
        this.f747b += c2953f.f747b;
        m556d(c2953f.sum);
        m556d(c2953f.f746a);
        this.min = Math.min(this.min, c2953f.min);
        this.max = Math.max(this.max, c2953f.max);
    }

    /* renamed from: c */
    public final double m557c() {
        double d = this.sum + this.f746a;
        return (Double.isNaN(d) && Double.isInfinite(this.f747b)) ? this.f747b : d;
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2953f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m557c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m557c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
