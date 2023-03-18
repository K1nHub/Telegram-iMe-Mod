package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
final class C2701O1 extends AbstractC2718R1 implements InterfaceC2884u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2701O1(InterfaceC2884u1 interfaceC2884u1, InterfaceC2884u1 interfaceC2884u12) {
        super(interfaceC2884u1, interfaceC2884u12);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Double[] dArr, int i) {
        AbstractC2848o1.m367h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: f */
    public double[] mo294c(int i) {
        return new double[i];
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2848o1.m364k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2884u1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m361n(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2918t spliterator() {
        return new C2795f2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return new C2795f2(this);
    }
}
