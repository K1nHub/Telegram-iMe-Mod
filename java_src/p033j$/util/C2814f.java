package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2814f implements InterfaceC2820f {

    /* renamed from: a */
    private double f733a;

    /* renamed from: b */
    private double f734b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    /* renamed from: d */
    private void m538d(double d) {
        double d2 = d - this.f733a;
        double d3 = this.sum;
        double d4 = d3 + d2;
        this.f733a = (d4 - d3) - d2;
        this.sum = d4;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        this.count++;
        this.f734b += d;
        m538d(d);
        this.min = Math.min(this.min, d);
        this.max = Math.max(this.max, d);
    }

    /* renamed from: b */
    public void m540b(C2814f c2814f) {
        this.count += c2814f.count;
        this.f734b += c2814f.f734b;
        m538d(c2814f.sum);
        m538d(c2814f.f733a);
        this.min = Math.min(this.min, c2814f.min);
        this.max = Math.max(this.max, c2814f.max);
    }

    /* renamed from: c */
    public final double m539c() {
        double d = this.sum + this.f733a;
        return (Double.isNaN(d) && Double.isInfinite(this.f734b)) ? this.f734b : d;
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2814f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Double.valueOf(m539c());
        objArr[3] = Double.valueOf(this.min);
        objArr[4] = Double.valueOf(this.count > 0 ? m539c() / this.count : 0.0d);
        objArr[5] = Double.valueOf(this.max);
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", objArr);
    }
}
