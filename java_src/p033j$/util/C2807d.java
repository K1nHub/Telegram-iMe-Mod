package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2814e;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.util.d */
/* loaded from: classes2.dex */
public class C2807d implements InterfaceC2815f {

    /* renamed from: a */
    private double f780a;

    /* renamed from: b */
    private double f781b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m623d(double d) {
        double d2 = d - this.f780a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f780a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p033j$.util.function.InterfaceC2815f
    public void accept(double d) {
        this.count++;
        this.f781b += d;
        m623d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m625b(C2807d c2807d) {
        this.count += c2807d.count;
        this.f781b += c2807d.f781b;
        m623d(c2807d.sum);
        m623d(c2807d.f780a);
        this.min = Math.min(this.min, c2807d.min);
        this.max = Math.max(this.max, c2807d.max);
    }

    /* renamed from: c */
    public final double m624c() {
        double d = this.sum + this.f780a;
        return (Double.isNaN(d) && Double.isInfinite(this.f781b)) ? this.f781b : d;
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2807d.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m624c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m624c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
