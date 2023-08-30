package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.g */
/* loaded from: classes2.dex */
public class C2979g implements InterfaceC2965l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2965l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m555b(C2979g c2979g) {
        this.count += c2979g.count;
        this.sum += c2979g.sum;
        this.min = Math.min(this.min, c2979g.min);
        this.max = Math.max(this.max, c2979g.max);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2979g.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
