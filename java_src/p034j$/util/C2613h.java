package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.C2602p;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2603q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2613h implements InterfaceC2603q, InterfaceC2598l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2598l
    public void accept(int i) {
        accept(i);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m550b(C2613h c2613h) {
        this.count += c2613h.count;
        this.sum += c2613h.sum;
        this.min = Math.min(this.min, c2613h.min);
        this.max = Math.max(this.max, c2613h.max);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2613h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
