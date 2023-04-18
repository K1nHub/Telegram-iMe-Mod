package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2660k;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2675g implements InterfaceC2661l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2661l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m532b(C2675g c2675g) {
        this.count += c2675g.count;
        this.sum += c2675g.sum;
        this.min = Math.min(this.min, c2675g.min);
        this.max = Math.max(this.max, c2675g.max);
    }

    @Override // p034j$.util.function.InterfaceC2661l
    /* renamed from: l */
    public InterfaceC2661l mo160l(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        return new C2660k(this, interfaceC2661l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2675g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
