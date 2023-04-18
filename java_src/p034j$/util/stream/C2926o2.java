package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2654e;
import p034j$.util.function.InterfaceC2655f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C2926o2 extends AbstractC2950s2 implements InterfaceC2897j3 {

    /* renamed from: h */
    private final double[] f1008h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2926o2(InterfaceC2688s interfaceC2688s, AbstractC2986y2 abstractC2986y2, double[] dArr) {
        super(interfaceC2688s, abstractC2986y2, dArr.length);
        this.f1008h = dArr;
    }

    C2926o2(C2926o2 c2926o2, InterfaceC2688s interfaceC2688s, long j, long j2) {
        super(c2926o2, interfaceC2688s, j, j2, c2926o2.f1008h.length);
        this.f1008h = c2926o2.f1008h;
    }

    @Override // p034j$.util.stream.AbstractC2950s2, p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        int i = this.f1050f;
        if (i >= this.f1051g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1050f));
        }
        double[] dArr = this.f1008h;
        this.f1050f = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2950s2
    /* renamed from: b */
    AbstractC2950s2 mo322b(InterfaceC2688s interfaceC2688s, long j, long j2) {
        return new C2926o2(this, interfaceC2688s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC2925o1.m354a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }
}
