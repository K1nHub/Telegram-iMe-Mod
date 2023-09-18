package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2869f implements InterfaceC2875f {

    /* renamed from: a */
    private double f737a;

    /* renamed from: b */
    private double f738b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m556d(double d) {
        double d2 = d - this.f737a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f737a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p033j$.util.function.InterfaceC2875f
    public void accept(double d) {
        this.count++;
        this.f738b += d;
        m556d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m558b(C2869f c2869f) {
        this.count += c2869f.count;
        this.f738b += c2869f.f738b;
        m556d(c2869f.sum);
        m556d(c2869f.f737a);
        this.min = Math.min(this.min, c2869f.min);
        this.max = Math.max(this.max, c2869f.max);
    }

    /* renamed from: c */
    public final double m557c() {
        double d = this.sum + this.f737a;
        return (Double.isNaN(d) && Double.isInfinite(this.f738b)) ? this.f738b : d;
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2869f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m557c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m557c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
