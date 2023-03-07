package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.C2464p;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2465q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2475h implements InterfaceC2465q, InterfaceC2460l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2460l
    public void accept(int i) {
        accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m551b(C2475h c2475h) {
        this.count += c2475h.count;
        this.sum += c2475h.sum;
        this.min = Math.min(this.min, c2475h.min);
        this.max = Math.max(this.max, c2475h.max);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2475h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
