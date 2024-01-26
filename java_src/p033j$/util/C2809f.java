package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.C2824o;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2825p;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2809f implements InterfaceC2825p, InterfaceC2821l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2821l
    public void accept(int i) {
        accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m621b(C2809f c2809f) {
        this.count += c2809f.count;
        this.sum += c2809f.sum;
        this.min = Math.min(this.min, c2809f.min);
        this.max = Math.max(this.max, c2809f.max);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2809f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
