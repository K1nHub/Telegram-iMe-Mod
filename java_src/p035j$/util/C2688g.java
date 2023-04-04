package p035j$.util;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2688g implements InterfaceC2674l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p035j$.util.function.InterfaceC2674l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m546b(C2688g c2688g) {
        this.count += c2688g.count;
        this.sum += c2688g.sum;
        this.min = Math.min(this.min, c2688g.min);
        this.max = Math.max(this.max, c2688g.max);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2688g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
