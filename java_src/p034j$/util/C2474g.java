package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2474g implements InterfaceC2460l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2460l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m552b(C2474g c2474g) {
        this.count += c2474g.count;
        this.sum += c2474g.sum;
        this.min = Math.min(this.min, c2474g.min);
        this.max = Math.max(this.max, c2474g.max);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2474g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
