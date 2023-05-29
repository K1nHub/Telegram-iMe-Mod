package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.C2709p;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2710q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2720h implements InterfaceC2710q, InterfaceC2705l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2705l
    public void accept(int i) {
        accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m536b(C2720h c2720h) {
        this.count += c2720h.count;
        this.sum += c2720h.sum;
        this.min = Math.min(this.min, c2720h.min);
        this.max = Math.max(this.max, c2720h.max);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2720h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
