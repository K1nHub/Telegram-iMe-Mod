package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2693e;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2688f implements InterfaceC2694f {

    /* renamed from: a */
    private double f651a;

    /* renamed from: b */
    private double f652b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m538d(double d) {
        double d2 = d - this.f651a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f651a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p034j$.util.function.InterfaceC2694f
    public void accept(double d) {
        this.count++;
        this.f652b += d;
        m538d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m540b(C2688f c2688f) {
        this.count += c2688f.count;
        this.f652b += c2688f.f652b;
        m538d(c2688f.sum);
        m538d(c2688f.f651a);
        this.min = Math.min(this.min, c2688f.min);
        this.max = Math.max(this.max, c2688f.max);
    }

    /* renamed from: c */
    public final double m539c() {
        double d = this.sum + this.f651a;
        return (Double.isNaN(d) && Double.isInfinite(this.f652b)) ? this.f652b : d;
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2688f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m539c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m539c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
