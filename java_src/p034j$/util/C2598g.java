package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2598g implements InterfaceC2584l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2584l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m552b(C2598g c2598g) {
        this.count += c2598g.count;
        this.sum += c2598g.sum;
        this.min = Math.min(this.min, c2598g.min);
        this.max = Math.max(this.max, c2598g.max);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2598g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
