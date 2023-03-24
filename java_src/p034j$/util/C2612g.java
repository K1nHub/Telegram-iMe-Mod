package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2597k;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2612g implements InterfaceC2598l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2598l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m551b(C2612g c2612g) {
        this.count += c2612g.count;
        this.sum += c2612g.sum;
        this.min = Math.min(this.min, c2612g.min);
        this.max = Math.max(this.max, c2612g.max);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2612g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
