package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2667e;
import p035j$.util.function.InterfaceC2668f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C2939o2 extends AbstractC2963s2 implements InterfaceC2910j3 {

    /* renamed from: h */
    private final double[] f1013h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2939o2(InterfaceC2701s interfaceC2701s, AbstractC2999y2 abstractC2999y2, double[] dArr) {
        super(interfaceC2701s, abstractC2999y2, dArr.length);
        this.f1013h = dArr;
    }

    C2939o2(C2939o2 c2939o2, InterfaceC2701s interfaceC2701s, long j, long j2) {
        super(c2939o2, interfaceC2701s, j, j2, c2939o2.f1013h.length);
        this.f1013h = c2939o2.f1013h;
    }

    @Override // p035j$.util.stream.AbstractC2963s2, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        int i = this.f1055f;
        if (i >= this.f1056g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1055f));
        }
        double[] dArr = this.f1013h;
        this.f1055f = i + 1;
        dArr[i] = d;
    }

    @Override // p035j$.util.stream.AbstractC2963s2
    /* renamed from: b */
    AbstractC2963s2 mo336b(InterfaceC2701s interfaceC2701s, long j, long j2) {
        return new C2939o2(this, interfaceC2701s, j, j2);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC2938o1.m368a(this, d);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }
}
