package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.O1 */
/* loaded from: classes2.dex */
final class C2822O1 extends AbstractC2839R1 implements InterfaceC3005u1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2822O1(InterfaceC3005u1 interfaceC3005u1, InterfaceC3005u1 interfaceC3005u12) {
        super(interfaceC3005u1, interfaceC3005u12);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Double[] dArr, int i) {
        AbstractC2969o1.m352h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: f */
    public double[] mo279c(int i) {
        return new double[i];
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2969o1.m349k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3005u1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m346n(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC3039t spliterator() {
        return new C2916f2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return new C2916f2(this);
    }
}
