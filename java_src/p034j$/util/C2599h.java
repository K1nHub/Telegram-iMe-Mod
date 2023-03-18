package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.C2588p;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2599h implements InterfaceC2589q, InterfaceC2584l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2584l
    public void accept(int i) {
        accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m551b(C2599h c2599h) {
        this.count += c2599h.count;
        this.sum += c2599h.sum;
        this.min = Math.min(this.min, c2599h.min);
        this.max = Math.max(this.max, c2599h.max);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2599h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
