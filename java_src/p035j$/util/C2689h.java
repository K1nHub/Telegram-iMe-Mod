package p035j$.util;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.C2678p;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2679q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2689h implements InterfaceC2679q, InterfaceC2674l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p035j$.util.function.InterfaceC2674l
    public void accept(int i) {
        accept(i);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m545b(C2689h c2689h) {
        this.count += c2689h.count;
        this.sum += c2689h.sum;
        this.min = Math.min(this.min, c2689h.min);
        this.max = Math.max(this.max, c2689h.max);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2689h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
