package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2586f implements InterfaceC2592f {

    /* renamed from: a */
    private double f648a;

    /* renamed from: b */
    private double f649b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m552d(double d) {
        double d2 = d - this.f648a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f648a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p034j$.util.function.InterfaceC2592f
    public void accept(double d) {
        this.count++;
        this.f649b += d;
        m552d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m554b(C2586f c2586f) {
        this.count += c2586f.count;
        this.f649b += c2586f.f649b;
        m552d(c2586f.sum);
        m552d(c2586f.f648a);
        this.min = Math.min(this.min, c2586f.min);
        this.max = Math.max(this.max, c2586f.max);
    }

    /* renamed from: c */
    public final double m553c() {
        double d = this.sum + this.f648a;
        return (Double.isNaN(d) && Double.isInfinite(this.f649b)) ? this.f649b : d;
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2586f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m553c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m553c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
