package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.C2665p;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2666q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2676h implements InterfaceC2666q, InterfaceC2661l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2661l
    public void accept(int i) {
        accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m531b(C2676h c2676h) {
        this.count += c2676h.count;
        this.sum += c2676h.sum;
        this.min = Math.min(this.min, c2676h.min);
        this.max = Math.max(this.max, c2676h.max);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2676h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
