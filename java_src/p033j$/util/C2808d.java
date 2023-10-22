package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.util.d */
/* loaded from: classes2.dex */
public class C2808d implements InterfaceC2816f {

    /* renamed from: a */
    private double f780a;

    /* renamed from: b */
    private double f781b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m619d(double d) {
        double d2 = d - this.f780a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f780a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p033j$.util.function.InterfaceC2816f
    public void accept(double d) {
        this.count++;
        this.f781b += d;
        m619d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m621b(C2808d c2808d) {
        this.count += c2808d.count;
        this.f781b += c2808d.f781b;
        m619d(c2808d.sum);
        m619d(c2808d.f780a);
        this.min = Math.min(this.min, c2808d.min);
        this.max = Math.max(this.max, c2808d.max);
    }

    /* renamed from: c */
    public final double m620c() {
        double d = this.sum + this.f780a;
        return (Double.isNaN(d) && Double.isInfinite(this.f781b)) ? this.f781b : d;
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2808d.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m620c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m620c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
