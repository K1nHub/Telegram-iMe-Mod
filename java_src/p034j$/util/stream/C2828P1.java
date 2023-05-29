package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2828P1 extends AbstractC2839R1 implements InterfaceC3017w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2828P1(InterfaceC3017w1 interfaceC3017w1, InterfaceC3017w1 interfaceC3017w12) {
        super(interfaceC3017w1, interfaceC3017w12);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Integer[] numArr, int i) {
        AbstractC2969o1.m351i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: f */
    public int[] mo279c(int i) {
        return new int[i];
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2969o1.m348l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3017w1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m345o(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC3039t spliterator() {
        return new C2922g2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return new C2922g2(this);
    }
}
