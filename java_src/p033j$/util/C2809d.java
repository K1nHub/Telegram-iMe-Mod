package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.util.d */
/* loaded from: classes2.dex */
public class C2809d implements InterfaceC2817f {

    /* renamed from: a */
    private double f780a;

    /* renamed from: b */
    private double f781b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m620d(double d) {
        double d2 = d - this.f780a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f780a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p033j$.util.function.InterfaceC2817f
    public void accept(double d) {
        this.count++;
        this.f781b += d;
        m620d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m622b(C2809d c2809d) {
        this.count += c2809d.count;
        this.f781b += c2809d.f781b;
        m620d(c2809d.sum);
        m620d(c2809d.f780a);
        this.min = Math.min(this.min, c2809d.min);
        this.max = Math.max(this.max, c2809d.max);
    }

    /* renamed from: c */
    public final double m621c() {
        double d = this.sum + this.f780a;
        return (Double.isNaN(d) && Double.isInfinite(this.f781b)) ? this.f781b : d;
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2809d.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m621c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m621c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
