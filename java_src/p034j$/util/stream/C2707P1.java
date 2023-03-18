package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2707P1 extends AbstractC2718R1 implements InterfaceC2896w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2707P1(InterfaceC2896w1 interfaceC2896w1, InterfaceC2896w1 interfaceC2896w12) {
        super(interfaceC2896w1, interfaceC2896w12);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Integer[] numArr, int i) {
        AbstractC2848o1.m366i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: f */
    public int[] mo294c(int i) {
        return new int[i];
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2848o1.m363l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2896w1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m360o(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2918t spliterator() {
        return new C2801g2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return new C2801g2(this);
    }
}
