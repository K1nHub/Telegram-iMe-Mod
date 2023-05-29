package p034j$.util.stream;

import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* renamed from: j$.util.stream.X1 */
/* loaded from: classes2.dex */
final class C2869X1 extends AbstractC2886a2 implements InterfaceC3017w1 {
    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: a */
    public /* synthetic */ void mo322i(Integer[] numArr, int i) {
        AbstractC2969o1.m351i(this, numArr, i);
    }

    @Override // p034j$.util.stream.AbstractC2886a2, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC3035z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: e */
    public Object mo277e() {
        int[] iArr;
        iArr = AbstractC3024x2.f1087e;
        return iArr;
    }

    @Override // p034j$.util.stream.AbstractC2886a2, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: f */
    public /* synthetic */ InterfaceC3017w1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m345o(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2969o1.m348l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC3039t spliterator() {
        return AbstractC2656I.m624c();
    }

    @Override // p034j$.util.stream.AbstractC2886a2, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return AbstractC2656I.m624c();
    }
}
