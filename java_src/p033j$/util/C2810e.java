package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.e */
/* loaded from: classes2.dex */
public class C2810e implements InterfaceC2823l {
    private long count;
    private long sum;
    private int min = Integer.MAX_VALUE;
    private int max = Integer.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2823l
    public void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    /* renamed from: b */
    public void m619b(C2810e c2810e) {
        this.count += c2810e.count;
        this.sum += c2810e.sum;
        this.min = Math.min(this.min, c2810e.min);
        this.max = Math.max(this.max, c2810e.max);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2810e.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Integer.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Integer.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
