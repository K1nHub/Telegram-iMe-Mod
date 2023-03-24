package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2591e;
import p034j$.util.function.InterfaceC2592f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C2863o2 extends AbstractC2887s2 implements InterfaceC2834j3 {

    /* renamed from: h */
    private final double[] f1008h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2863o2(InterfaceC2625s interfaceC2625s, AbstractC2923y2 abstractC2923y2, double[] dArr) {
        super(interfaceC2625s, abstractC2923y2, dArr.length);
        this.f1008h = dArr;
    }

    C2863o2(C2863o2 c2863o2, InterfaceC2625s interfaceC2625s, long j, long j2) {
        super(c2863o2, interfaceC2625s, j, j2, c2863o2.f1008h.length);
        this.f1008h = c2863o2.f1008h;
    }

    @Override // p034j$.util.stream.AbstractC2887s2, p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        int i = this.f1050f;
        if (i >= this.f1051g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1050f));
        }
        double[] dArr = this.f1008h;
        this.f1050f = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2887s2
    /* renamed from: b */
    AbstractC2887s2 mo341b(InterfaceC2625s interfaceC2625s, long j, long j2) {
        return new C2863o2(this, interfaceC2625s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC2862o1.m373a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }
}
