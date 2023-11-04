package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.C2829o;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2830p;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2814f implements InterfaceC2830p, InterfaceC2826l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m618b(C2814f c2814f) {
        this.count += c2814f.count;
        this.sum += c2814f.sum;
        this.min = Math.min(this.min, c2814f.min);
        this.max = Math.max(this.max, c2814f.max);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2814f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
