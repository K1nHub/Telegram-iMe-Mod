package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2448f implements InterfaceC2454f {

    /* renamed from: a */
    private double f642a;

    /* renamed from: b */
    private double f643b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m553d(double d) {
        double d2 = d - this.f642a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f642a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p034j$.util.function.InterfaceC2454f
    public void accept(double d) {
        this.count++;
        this.f643b += d;
        m553d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m555b(C2448f c2448f) {
        this.count += c2448f.count;
        this.f643b += c2448f.f643b;
        m553d(c2448f.sum);
        m553d(c2448f.f642a);
        this.min = Math.min(this.min, c2448f.min);
        this.max = Math.max(this.max, c2448f.max);
    }

    /* renamed from: c */
    public final double m554c() {
        double d = this.sum + this.f642a;
        return (Double.isNaN(d) && Double.isInfinite(this.f643b)) ? this.f643b : d;
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2448f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m554c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m554c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
