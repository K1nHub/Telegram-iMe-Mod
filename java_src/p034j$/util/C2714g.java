package p034j$.util;

import java.util.Objects;
import p034j$.util.function.C2699k;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2714g implements InterfaceC2700l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p034j$.util.function.InterfaceC2700l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m537b(C2714g c2714g) {
        this.count += c2714g.count;
        this.sum += c2714g.sum;
        this.min = Math.min(this.min, c2714g.min);
        this.max = Math.max(this.max, c2714g.max);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2714g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
