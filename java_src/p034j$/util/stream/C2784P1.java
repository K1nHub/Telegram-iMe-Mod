package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2784P1 extends AbstractC2795R1 implements InterfaceC2973w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2784P1(InterfaceC2973w1 interfaceC2973w1, InterfaceC2973w1 interfaceC2973w12) {
        super(interfaceC2973w1, interfaceC2973w12);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: a */
    public /* synthetic */ void mo317i(Integer[] numArr, int i) {
        AbstractC2925o1.m346i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: f */
    public int[] mo274c(int i) {
        return new int[i];
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2925o1.m343l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2973w1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m340o(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2995t spliterator() {
        return new C2878g2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return new C2878g2(this);
    }
}
