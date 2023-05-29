package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2701m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2823P1 extends AbstractC2834R1 implements InterfaceC3012w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2823P1(InterfaceC3012w1 interfaceC3012w1, InterfaceC3012w1 interfaceC3012w12) {
        super(interfaceC3012w1, interfaceC3012w12);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Integer[] numArr, int i) {
        AbstractC2964o1.m351i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: f */
    public int[] mo279c(int i) {
        return new int[i];
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2964o1.m348l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC3012w1 mo318r(long j, long j2, InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m345o(this, j, j2, interfaceC2701m);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC3034t spliterator() {
        return new C2917g2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC2727s spliterator() {
        return new C2917g2(this);
    }
}
