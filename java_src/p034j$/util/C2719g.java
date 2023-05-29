package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2719g implements InterfaceC2705l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2705l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m537b(C2719g c2719g) {
        this.count += c2719g.count;
        this.sum += c2719g.sum;
        this.min = Math.min(this.min, c2719g.min);
        this.max = Math.max(this.max, c2719g.max);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2719g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
