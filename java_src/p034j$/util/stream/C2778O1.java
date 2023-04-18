package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
final class C2778O1 extends AbstractC2795R1 implements InterfaceC2961u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2778O1(InterfaceC2961u1 interfaceC2961u1, InterfaceC2961u1 interfaceC2961u12) {
        super(interfaceC2961u1, interfaceC2961u12);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: a */
    public /* synthetic */ void mo317i(Double[] dArr, int i) {
        AbstractC2925o1.m347h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: f */
    public double[] mo274c(int i) {
        return new double[i];
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2925o1.m344k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2961u1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m341n(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2995t spliterator() {
        return new C2872f2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return new C2872f2(this);
    }
}
