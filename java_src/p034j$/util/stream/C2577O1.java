package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
final class C2577O1 extends AbstractC2594R1 implements InterfaceC2760u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2577O1(InterfaceC2760u1 interfaceC2760u1, InterfaceC2760u1 interfaceC2760u12) {
        super(interfaceC2760u1, interfaceC2760u12);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Double[] dArr, int i) {
        AbstractC2724o1.m367h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: f */
    public double[] mo294c(int i) {
        return new double[i];
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m364k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2760u1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m361n(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2794t spliterator() {
        return new C2671f2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return new C2671f2(this);
    }
}
