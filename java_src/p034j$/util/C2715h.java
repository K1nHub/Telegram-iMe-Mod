package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.C2704p;
import p034j$.util.function.InterfaceC2700l;
import p034j$.util.function.InterfaceC2705q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2715h implements InterfaceC2705q, InterfaceC2700l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2700l
    public void accept(int i) {
        accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m536b(C2715h c2715h) {
        this.count += c2715h.count;
        this.sum += c2715h.sum;
        this.min = Math.min(this.min, c2715h.min);
        this.max = Math.max(this.max, c2715h.max);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2715h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
