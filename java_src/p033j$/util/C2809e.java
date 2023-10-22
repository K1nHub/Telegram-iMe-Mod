package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public class C2809e implements InterfaceC2822l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2822l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m618b(C2809e c2809e) {
        this.count += c2809e.count;
        this.sum += c2809e.sum;
        this.min = Math.min(this.min, c2809e.min);
        this.max = Math.max(this.max, c2809e.max);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2809e.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
