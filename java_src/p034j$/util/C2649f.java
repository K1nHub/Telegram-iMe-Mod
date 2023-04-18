package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2649f implements InterfaceC2655f {

    /* renamed from: a */
    private double f648a;

    /* renamed from: b */
    private double f649b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m533d(double d) {
        double d2 = d - this.f648a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f648a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p034j$.util.function.InterfaceC2655f
    public void accept(double d) {
        this.count++;
        this.f649b += d;
        m533d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m535b(C2649f c2649f) {
        this.count += c2649f.count;
        this.f649b += c2649f.f649b;
        m533d(c2649f.sum);
        m533d(c2649f.f648a);
        this.min = Math.min(this.min, c2649f.min);
        this.max = Math.max(this.max, c2649f.max);
    }

    /* renamed from: c */
    public final double m534c() {
        double d = this.sum + this.f648a;
        return (Double.isNaN(d) && Double.isInfinite(this.f649b)) ? this.f649b : d;
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2649f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m534c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m534c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
