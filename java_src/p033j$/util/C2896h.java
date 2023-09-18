package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.C2885p;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2896h implements InterfaceC2886q, InterfaceC2881l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2881l
    public void accept(int i) {
        accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m554b(C2896h c2896h) {
        this.count += c2896h.count;
        this.sum += c2896h.sum;
        this.min = Math.min(this.min, c2896h.min);
        this.max = Math.max(this.max, c2896h.max);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2896h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
