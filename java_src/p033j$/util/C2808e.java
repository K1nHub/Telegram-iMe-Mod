package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public class C2808e implements InterfaceC2821l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2821l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m622b(C2808e c2808e) {
        this.count += c2808e.count;
        this.sum += c2808e.sum;
        this.min = Math.min(this.min, c2808e.min);
        this.max = Math.max(this.max, c2808e.max);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2808e.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
