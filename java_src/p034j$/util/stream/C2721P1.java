package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* renamed from: j$.util.stream.P1 */
/* loaded from: classes2.dex */
final class C2721P1 extends AbstractC2732R1 implements InterfaceC2910w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2721P1(InterfaceC2910w1 interfaceC2910w1, InterfaceC2910w1 interfaceC2910w12) {
        super(interfaceC2910w1, interfaceC2910w12);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: a */
    public /* synthetic */ void mo336i(Integer[] numArr, int i) {
        AbstractC2862o1.m365i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: f */
    public int[] mo293c(int i) {
        return new int[i];
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2862o1.m362l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: h */
    public /* synthetic */ InterfaceC2910w1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m359o(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2932t spliterator() {
        return new C2815g2(this);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return new C2815g2(this);
    }
}
