package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.C2969p;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.h */
/* loaded from: classes2.dex */
public class C2980h implements InterfaceC2970q, InterfaceC2965l {
    private long count;
    private long sum;
    private long min = Long.MAX_VALUE;
    private long max = Long.MIN_VALUE;

    @Override // p033j$.util.function.InterfaceC2965l
    public void accept(int i) {
        accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        this.count++;
        this.sum += j;
        this.min = Math.min(this.min, j);
        this.max = Math.max(this.max, j);
    }

    /* renamed from: b */
    public void m554b(C2980h c2980h) {
        this.count += c2980h.count;
        this.sum += c2980h.sum;
        this.min = Math.min(this.min, c2980h.min);
        this.max = Math.max(this.max, c2980h.max);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }

    public String toString() {
        Object[] objArr = new Object[6];
        objArr[0] = C2980h.class.getSimpleName();
        objArr[1] = Long.valueOf(this.count);
        objArr[2] = Long.valueOf(this.sum);
        objArr[3] = Long.valueOf(this.min);
        long j = this.count;
        objArr[4] = Double.valueOf(j > 0 ? this.sum / j : 0.0d);
        objArr[5] = Long.valueOf(this.max);
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", objArr);
    }
}
