package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2453e;
import p034j$.util.function.InterfaceC2454f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C2725o2 extends AbstractC2749s2 implements InterfaceC2696j3 {

    /* renamed from: h */
    private final double[] f1002h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2725o2(InterfaceC2487s interfaceC2487s, AbstractC2785y2 abstractC2785y2, double[] dArr) {
        super(interfaceC2487s, abstractC2785y2, dArr.length);
        this.f1002h = dArr;
    }

    C2725o2(C2725o2 c2725o2, InterfaceC2487s interfaceC2487s, long j, long j2) {
        super(c2725o2, interfaceC2487s, j, j2, c2725o2.f1002h.length);
        this.f1002h = c2725o2.f1002h;
    }

    @Override // p034j$.util.stream.AbstractC2749s2, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        int i = this.f1044f;
        if (i >= this.f1045g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1044f));
        }
        double[] dArr = this.f1002h;
        this.f1044f = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2749s2
    /* renamed from: b */
    AbstractC2749s2 mo342b(InterfaceC2487s interfaceC2487s, long j, long j2) {
        return new C2725o2(this, interfaceC2487s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC2724o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }
}
