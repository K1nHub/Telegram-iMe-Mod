package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.C2830p;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2841h implements InterfaceC2831q, InterfaceC2826l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m536b(C2841h c2841h) {
        this.count += c2841h.count;
        this.sum += c2841h.sum;
        this.min = Math.min(this.min, c2841h.min);
        this.max = Math.max(this.max, c2841h.max);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2841h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
