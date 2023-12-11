package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.C2826o;
import p033j$.util.function.InterfaceC2823l;
import p033j$.util.function.InterfaceC2827p;
/* renamed from: j$.util.f */
/* loaded from: classes2.dex */
public class C2811f implements InterfaceC2827p, InterfaceC2823l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2823l
    public void accept(int i) {
        accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m618b(C2811f c2811f) {
        this.count += c2811f.count;
        this.sum += c2811f.sum;
        this.min = Math.min(this.min, c2811f.min);
        this.max = Math.max(this.max, c2811f.max);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2811f.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
