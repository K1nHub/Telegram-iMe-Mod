package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.C2825o;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2826p;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2810f implements InterfaceC2826p, InterfaceC2822l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2822l
    public void accept(int i) {
        accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m617b(C2810f c2810f) {
        this.count += c2810f.count;
        this.sum += c2810f.sum;
        this.min = Math.min(this.min, c2810f.min);
        this.max = Math.max(this.max, c2810f.max);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2810f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
