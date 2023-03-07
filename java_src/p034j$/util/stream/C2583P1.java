package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2583P1 extends AbstractC2594R1 implements InterfaceC2772w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2583P1(InterfaceC2772w1 interfaceC2772w1, InterfaceC2772w1 interfaceC2772w12) {
        super(interfaceC2772w1, interfaceC2772w12);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: a */
    public /* synthetic */ void mo337i(Integer[] numArr, int i) {
        AbstractC2724o1.m366i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: f */
    public int[] mo294c(int i) {
        return new int[i];
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m363l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2772w1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m360o(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2794t spliterator() {
        return new C2677g2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return new C2677g2(this);
    }
}
