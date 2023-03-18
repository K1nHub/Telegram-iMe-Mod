package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2577e;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2572f implements InterfaceC2578f {

    /* renamed from: a */
    private double f647a;

    /* renamed from: b */
    private double f648b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m553d(double d) {
        double d2 = d - this.f647a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f647a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p034j$.util.function.InterfaceC2578f
    public void accept(double d) {
        this.count++;
        this.f648b += d;
        m553d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m555b(C2572f c2572f) {
        this.count += c2572f.count;
        this.f648b += c2572f.f648b;
        m553d(c2572f.sum);
        m553d(c2572f.f647a);
        this.min = Math.min(this.min, c2572f.min);
        this.max = Math.max(this.max, c2572f.max);
    }

    /* renamed from: c */
    public final double m554c() {
        double d = this.sum + this.f647a;
        return (Double.isNaN(d) && Double.isInfinite(this.f648b)) ? this.f648b : d;
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2572f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m554c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m554c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
